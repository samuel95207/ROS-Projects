#include "ros/ros.h"
#include "my_package/my_message_2.h"
#include "math.h"

int main(int argc, char **argv){
    ros::init(argc,argv, "my_message_pub");
    ros::NodeHandle n;

    ros::Publisher pub = n.advertise<my_package::my_message_2>("numbers",1000);
    ros::Rate loop_rate(1);

    int count = 0;

    while(ros::ok()){
        my_package::my_message_2 msg;

        msg.x = count;
        msg.y = 10 * count;
        msg.z = pow(count, 2);

        ROS_INFO("Publishing x y z");

        count ++;

        pub.publish(msg);

        ros::spinOnce();

        loop_rate.sleep();
    }
}
