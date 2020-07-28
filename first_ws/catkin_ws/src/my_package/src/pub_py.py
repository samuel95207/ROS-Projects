#!/usr/bin/env python3
# license removed for brevity
import rospy
from std_msgs.msg import Int8

def publisher():
    pub = rospy.Publisher('pub_py', Int8, queue_size=10)
    rospy.init_node('one', anonymous=True)
    rate = rospy.Rate(1)

    data = 1

    while not rospy.is_shutdown():
        rospy.loginfo(data)
        pub.publish(data)
        rate.sleep()

if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass