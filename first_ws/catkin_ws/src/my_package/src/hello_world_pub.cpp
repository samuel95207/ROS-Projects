#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char **argv){
    ros::init(argc,argv, "publisher");
    ros::NodeHandle n;

    ros::Publisher pub = n.advertise<std_msgs::String>("hello_world",1000);
    ros::Rate loop_rate(2);

    while(ros::ok()){
        std_msgs::String msg;
        std::stringstream ss;

        ss << "Hello world!";
        msg.data = ss.str();

        ROS_INFO("Publishing the topic");
        pub.publish(msg);

        ros::spinOnce();

        loop_rate.sleep();
    }
}
