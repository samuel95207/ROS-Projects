#!/usr/bin/env python3
# license removed for brevity
import rospy

def helloWorld():
    rospy.init_node('hello_world_py', anonymous=True)
    rate = rospy.Rate(1) 

    flag = True

    msg = "Hello World from python!"

    while not rospy.is_shutdown():
        if(flag):
            print(msg)
        else:
            rospy.loginfo(msg)
        rate.sleep()
        flag = not flag

if __name__ == '__main__':
    try:
        helloWorld()
    except rospy.ROSInterruptException:
        pass