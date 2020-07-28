#include "ros/ros.h"
#include "std_msgs/String.h"

void callback(const std_msgs::String::ConstPtr& msg){
    ROS_INFO("%s", msg -> data.c_str());
}

int main(int argc, char **argv){
    ros::init(argc,argv, "subscriber");
    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe("hello_world",1000,callback);
    
    ros::spin();

    return 0;
}
