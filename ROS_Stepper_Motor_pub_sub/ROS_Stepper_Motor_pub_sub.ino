/* rosserial Subscriber test
 * The stepper moves when a topic is published
 * And publishes a msg when the itr step is done
*/

// Arduino - ROS headers
#include <ros.h>
#include <std_msgs/Int8.h>
#include <std_msgs/Int16.h>

// Define Pins 
#define enaPin 2
#define dirPin 3
#define pulPin 4

#define enaPin_ 5
#define dirPin_ 6
#define pulPin_ 7


// Coordinates
int startX;
int startY;

int x;
int y;
int itrx;
int itry;

// Creating a Nodehandle object
ros::NodeHandle nh;

//std_msgs::Int8 str_msg_x;
std_msgs::Int8 str_msg_y;
std_msgs::Int8 heartBit;
     
//ros::Publisher stepperStatusX("stepperStatusX", &str_msg_x);
ros::Publisher stepperStatus("stepperStatus", &str_msg_y);
ros::Publisher arduinoHeartBit("arduinoHeartBit", &heartBit);

/* Creating a callback for the topic "stepperCommandX" & "stepperCommandY"
 * whenever a value come through this topic, this  
 * callback will execute  
 */ 

void messageCbX(const std_msgs::Int16& startX )
{ 
   x = startX.data;
   
   //nh.loginfo(result);

  if(startX.data > 0)
  {
      // Set the spinning direction:
      digitalWrite(dirPin, HIGH);

      // Get the number of itr
      itrx = startX.data;

      // loop for the itr
      for(int i = 0; i <= itrx; i++)
      {
        digitalWrite(pulPin, HIGH);
        delayMicroseconds(500);
        digitalWrite(pulPin, LOW);
        delayMicroseconds(500);
      }

      //str_msg_x.data = 1;
      //stepperStatusX.publish(&str_msg_x);
   
  }
  else
  {
     // Change the stepper direction in case of itr negativ value
     // Set the spinning direction:
      digitalWrite(dirPin, LOW);
      
      // Get the number of itr
      itrx = startX.data * (-1);

      // loop for the itr
      for(int i = 0; i <= itrx; i++)
      {
        digitalWrite(pulPin, HIGH);
        delayMicroseconds(500);
        digitalWrite(pulPin, LOW);
        delayMicroseconds(500);
      }
   
      //str_msg_x.data = 1;
      //stepperStatusX.publish(&str_msg_x); 
  }
}

void messageCbY(const std_msgs::Int16& startY )
{ 
  y = startY.data;
    static char resulty[15];
    dtostrf(y,0, 0, resulty);

    static char resultx[15];
    dtostrf(x,0, 0, resultx);

    char xy[30];
    strcpy(xy, resultx);
    strcat(xy, ";");
    strcat(xy, resulty);
   
    nh.loginfo(xy);

  if(startY.data > 0)
  {
      // Set the spinning direction:
      digitalWrite(dirPin_, HIGH);

      // Get the number of itr
      itry = startY.data;

      // loop for the itr
      for(int i = 0; i <= itry; i++)
      {
        digitalWrite(pulPin_, HIGH);
        delayMicroseconds(500);
        digitalWrite(pulPin_, LOW);
        delayMicroseconds(500);
      }

      str_msg_y.data = 1;
      stepperStatus.publish(&str_msg_y);
   
  }
  else
  {
     // Change the stepper direction in case of itr negativ value
     // Set the spinning direction:
      digitalWrite(dirPin_, LOW);
      
      // Get the number of itr
      itry = startY.data * (-1);

      // loop for the itr
      for(int i = 0; i <= itry; i++)
      {
        digitalWrite(pulPin_, HIGH);
        delayMicroseconds(500);
        digitalWrite(pulPin_, LOW);
        delayMicroseconds(500);
      }
     
      str_msg_y.data = 1;
      stepperStatus.publish(&str_msg_y); 
  }
}

// Creating a subscriber with a name "stepperCommandX" & "stepperCommandX"and its callback
ros::Subscriber<std_msgs::Int16> subX("stepperCommandX", &messageCbX);

ros::Subscriber<std_msgs::Int16> subY("stepperCommandY", &messageCbY);

void setup()
{ 
  
  // declare pins as output:
  pinMode(pulPin, OUTPUT);
  pinMode(dirPin, OUTPUT);
  pinMode(enaPin, OUTPUT);

  pinMode(pulPin_, OUTPUT);
  pinMode(dirPin_, OUTPUT);
  pinMode(enaPin_, OUTPUT);

  //Set the ENA pin off
  digitalWrite(enaPin, LOW);
  digitalWrite(enaPin_, LOW);
  
  nh.initNode();
  nh.subscribe(subX);
  nh.subscribe(subY);
  
  //nh.advertise(stepperStatusX);
  nh.advertise(stepperStatus);
  nh.advertise(arduinoHeartBit);
} 

// Spining the node each time to listen from the topic

void loop()
{
  nh.spinOnce();
  delay(100);
  
  heartBit.data = 1;
  arduinoHeartBit.publish(&heartBit);
} 
