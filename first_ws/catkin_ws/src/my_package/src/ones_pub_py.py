#!/usr/bin/env python3
# license removed for brevity
import rospy
from my_package.msg import xyzw

def publisher():
    pub = rospy.Publisher('ones_pub_py', xyzw, queue_size=10)
    rospy.init_node('one', anonymous=True)
    rate = rospy.Rate(1)

    msg = xyzw()

    msg.x,msg.y,msg.z,msg.w = (1,1,1,1)

    while not rospy.is_shutdown():
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass