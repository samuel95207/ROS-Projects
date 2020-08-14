#include "ros/ros.h"

int main(int argc, char ** argv){
    ros::init(argc, argv, "hello_world");
    ros::NodeHandle n;
    ros::Rate loop_rate(5);

    bool flag = true;


    while(ros::ok()){
        if(flag){
            printf("hello world!\n");
            flag = !flag;
            loop_rate.sleep();
        }
        else{
            ROS_INFO("Hello World!");
            loop_rate.sleep();
            flag = !flag;
        }
    }
}