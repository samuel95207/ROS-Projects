#!/usr/bin/env python3
import rospy
from my_package.msg import xyzw

count = 0

def callback(data):
    global count
    count += data.x + data.y + data.z + data.w
    rospy.loginfo(count)
    
def listener():
    rospy.init_node('ones_listener', anonymous=True)

    rospy.Subscriber("ones_pub_py", xyzw, callback)

    rospy.spin()

if __name__ == '__main__':
    listener()