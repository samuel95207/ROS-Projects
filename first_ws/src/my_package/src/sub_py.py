#!/usr/bin/env python3
import rospy
from std_msgs.msg import Int8

count = 0

def callback(data):
    global count
    count += data.data
    rospy.loginfo(count)
    
def listener():
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("pub_py", Int8, callback)

    rospy.spin()

if __name__ == '__main__':
    listener()