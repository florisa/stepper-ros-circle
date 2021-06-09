#!/usr/bin/env python3
import time
import numpy as np

import rospy
from std_msgs.msg import Int8, Int16

class Shape_Drawer:
    CIRCLE_RADIUS_U = 20.0
    ANGLE_INCREMENT_DEG = 1.5

    STEPPER_COURSE_MM = 40.0
    CONVERSION_U_2_MM = STEPPER_COURSE_MM / (CIRCLE_RADIUS_U * 2)
    CONVERSION_MM_2_IT= 416

    def __init__(self):
        # Private Members
        self._radius = self.CIRCLE_RADIUS_U
        self._angle_increment_DEG = self.ANGLE_INCREMENT_DEG
        self._angle_increment_RAD = self._angle_increment_DEG * np.pi / 180

        # Message Variables
        self.iterations = list()
        self._coordinates = list()
        self._counter = 0

        # Generate Shape
        self._generate_coordinates()
        self._transform_2_iterations()

    def get_next_step(self):
        it = self.iterations[self._counter]
        self._counter += 1
        if self._counter == len(self.iterations):
            self._counter = 0
        return it

    def _generate_coordinates(self):
        for theta in np.arange(0.0, 2 * np.pi + self._angle_increment_RAD, self._angle_increment_RAD):
            x = self._radius * np.cos(theta)
            y = self._radius * np.sin(theta)
            self._coordinates.append([x,y])

    def _transform_2_iterations(self):
        pt_last = self._coordinates[0][1]
        for idx in range(len(self._coordinates)):
            step_y_U = self._coordinates[idx][1] - pt_last
            step_y_MM = step_y_U * self.CONVERSION_U_2_MM
            
            self.iterations.append(int(round(step_y_MM * self.CONVERSION_MM_2_IT)))

            pt_last = self._coordinates[idx][1]

circle = Shape_Drawer()
pub = rospy.Publisher("stepperCommand", Int16, queue_size=10)
status_ready = True
arduino_ready = False

def callback(status):
    global status_ready
    rospy.loginfo(status.data)
    status_ready = True

def callback_hb(hb):
    global arduino_ready
    arduino_ready = True

def stepperControlCommand():
    global arduino_ready, status_ready
    rospy.init_node("stepperControlCommand", anonymous=True)
    rospy.Subscriber("stepperStatus", Int8, callback)
    rospy.Subscriber("arduinoHeartBit", Int8, callback_hb)
    while not rospy.is_shutdown():
        if arduino_ready and status_ready:
            it = circle.get_next_step()
            pub.publish(Int16(it))
            status_ready = False

if __name__ == "__main__":
    print("Setting Up...")
    time.sleep(1)
    print("Server Ready")
    try:
        stepperControlCommand()
    except rospy.ROSInterruptException:
        pass
