#!/usr/bin/env python3

import rospy

from std_msgs.msg import String, Float64
from geometry_msgs.msg import Twist, Point32
from sensor_msgs.msg import PointCloud

class DecisionMaker():
    def __init__(self):
        self.config()

        self.base_pub  = rospy.Publisher('cmd_vel_mux/input/teleop', Twist, queue_size=1)
        self.camera_tilt_pub = rospy.Publisher('tilt/command', Float64, queue_size=1)

        rospy.init_node('decision_maker', anonymous=True)

        self.camera_tilt_pub.publish(0.01)


        rospy.Subscriber("object_pose", PointCloud, self.move_callback)
        
        self.rate = rospy.Rate(10) # 10hz

        rospy.spin()
        

    def config(self):
        self.rotate_threshold = 0.1
        self.distance_threshold = 1

        self.rotate_timeout = 0.5

    def rotate_find(self):
        cmd_vel_msg = Twist()

        cmd_vel_msg.linear.x = 0
        cmd_vel_msg.linear.y = 0
        cmd_vel_msg.linear.z = 0
        cmd_vel_msg.angular.x = 0
        cmd_vel_msg.angular.y = 0
        cmd_vel_msg.angular.z = 0.6

        self.base_pub.publish(cmd_vel_msg)

    def move_callback(self,data):
        points = data.points
        cmd_vel_msg = Twist()
        
        if(not points):
            rospy.loginfo("finding ball...")
            self.rotate_find()
        else:
            rospy.loginfo("ball found")
            rospy.loginfo(points)

            if(points[0].y > self.rotate_threshold):
                cmd_vel_msg.linear.x = 1
                cmd_vel_msg.linear.y = 0
                cmd_vel_msg.linear.z = 0
                cmd_vel_msg.angular.x = 0
                cmd_vel_msg.angular.y = 0
                cmd_vel_msg.angular.z = 0.7
            elif(points[0].y < -self.rotate_threshold):
                cmd_vel_msg.linear.x = 1
                cmd_vel_msg.linear.y = 0
                cmd_vel_msg.linear.z = 0
                cmd_vel_msg.angular.x = 0
                cmd_vel_msg.angular.y = 0
                cmd_vel_msg.angular.z = -0.7
            else:
                cmd_vel_msg.linear.x = 1
                cmd_vel_msg.linear.y = 0
                cmd_vel_msg.linear.z = 0
                cmd_vel_msg.angular.x = 0
                cmd_vel_msg.angular.y = 0
                cmd_vel_msg.angular.z = 0
                self.camera_tilt_pub.publish(0)
            
            if(points[0].x < self.distance_threshold):
                self.camera_tilt_pub.publish(0.5)
            else:
                self.camera_tilt_pub.publish(0)

        self.camera_tilt_pub.publish(0.01)
        

        # rospy.loginfo(cmd_vel_msg)
        self.base_pub.publish(cmd_vel_msg)

        self.rate.sleep()


if __name__ == '__main__':
    try:
        dm = DecisionMaker()
    except rospy.ROSInterruptException:
        pass
