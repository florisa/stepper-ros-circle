#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int8, Int16

from draw_circle import Shape_Drawer

circle = Shape_Drawer()
pub = rospy.Publisher("stepperCommand", Int16, queue_size=10)

def callback(status):
    rospy.loginfo(status.data)

def stepperControlCommand():
    rospy.init_node("stepperControlCommand", anonymous=True)
    rospy.Subscriber("stepperStatus", Int8, callback)
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        it = circle.get_next_step()
        pub.publish(Int16(it))
        rate.sleep()

if __name__ == "__main__":
    try:
        stepperControlCommand()
    except rospy.ROSInterruptException:
        pass
