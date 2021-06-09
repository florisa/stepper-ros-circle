#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int8, Int16

# def callback(it):
#     global pub
#     rospy.loginfo(it.data)
#     status = 1
#     pub.publish(Int8(status))

# def stepperEcho():  
#     global pub
#     rospy.init_node("stepperEcho", anonymous=True)
#     print("Client Created") 

#     pub = rospy.Publisher("stepperStatus", Int8, queue_size=10) 
#     status = 1
#     pub.publish(Int8(status))

#     rospy.Subscriber("stepperCommand", Int16, callback)    
#     rospy.spin()

pub = rospy.Publisher("stepperStatus", Int8, queue_size=10)

def callback(data):
    rospy.loginfo(data.data)

def stepperEcho():
    rospy.init_node("stepperEcho", anonymous=True)
    rospy.Subscriber("stepperCommand", Int16, callback)
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        status = 1
        pub.publish(Int8(status))
        rate.sleep()

if __name__ == "__main__":
    try:
        stepperEcho()
    except rospy.ROSInterruptException:
        pass