#!/usr/bin/env python

import numpy as np
import cv2
import roslib
import rospy
import tf
import struct
import math
import time
from sensor_msgs.msg import Image
from sensor_msgs.msg import CameraInfo, CompressedImage
from geometry_msgs.msg import PoseArray, PoseStamped, Point32
from visualization_msgs.msg import Marker, MarkerArray
import rospkg
from nav_msgs.msg import Path
from cv_bridge import CvBridge, CvBridgeError
import torch
import torch.nn as nn
import torch.backends.cudnn as cudnn
from torch.autograd import Variable
import os 
import message_filters
#from ssd_mobile_lite.msg import Position


from vision.ssd.mobilenetv1_ssd import create_mobilenetv1_ssd, create_mobilenetv1_ssd_predictor
from vision.ssd.mobilenetv1_ssd_lite import create_mobilenetv1_ssd_lite, create_mobilenetv1_ssd_lite_predictor
from vision.ssd.mobilenet_v2_ssd_lite import create_mobilenetv2_ssd_lite, create_mobilenetv2_ssd_lite_predictor
#from vision.utils.misc import Timer

class bb_ssd_mobile_lite(object):
    def __init__(self):
        model = "v1"
        self.prob_threshold = 0.65
        r = rospkg.RosPack()
        self.path = r.get_path('ssd_mobile_lite')
        self.cv_bridge = CvBridge() 
        self.num_points = 8000
        self.labels = ['background' , # always index 0
            'duckie_car','house','broken','duck']
        self.objects = []
        if model == "v2_lite":
            self.network = create_mobilenetv2_ssd_lite(len(self.labels), is_test=True) 
            model_dir = "/home/nvidia"
            model_name = "model1.pth"
        elif model == "v1":
            self.network = create_mobilenetv1_ssd(len(self.labels), is_test=True) 
            model_name = "/models/model.pth"
    
        elif model == "v1_lite":
            self.network = create_mobilenetv1_ssd_lite(len(self.labels), is_test=True) 
            model_name = "/models/model.pth"

        state_dict = torch.load(self.path + model_name)
        self.network.load_state_dict(state_dict)
        DEVICE = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
        self.network.to(DEVICE)
        if model == "v2_lite":
            self.predictor = create_mobilenetv2_ssd_lite_predictor(self.network, candidate_size=200, device = DEVICE)
        elif model == "v1_lite":
            self.predictor = create_mobilenetv1_ssd_lite_predictor(self.network, candidate_size=200, device = DEVICE)
        elif model == "v1": 
            self.predictor = create_mobilenetv1_ssd_predictor(self.network, candidate_size=200, device = DEVICE)
        print("finish load model")
        #### Publisher
        self.image_pub = rospy.Publisher("/predict_img", Image, queue_size = 1)

        ### msg filter 
        self.is_compressed = True

        image_sub = rospy.Subscriber('/camera/color/image_raw/compressed', CompressedImage, self.callback)

    def callback(self, img_msg):
        try:
            if self.is_compressed:
                np_arr = np.fromstring(img_msg.data, np.uint8)
                cv_image = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
            else:
                cv_image = self.cv_bridge.imgmsg_to_cv2(img_msg, "bgr8")
        except CvBridgeError as e:
            print(e)
        

        (rows, cols, channels) = cv_image.shape
        self.width = cols
        self.height = rows
        predict_img = self.predict(cv_image)
        try:
            self.image_pub.publish(self.cv_bridge.cv2_to_imgmsg(predict_img, "bgr8"))
        except CvBridgeError as e:
            print(e)


    def predict(self, img):
        # Preprocessing

        image = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        time = rospy.get_time()
        boxes, labels, probs = self.predictor.predict(image, 10, self.prob_threshold)
        for i in range(boxes.size(0)):
            box = boxes[i, :]
            check = True
            for j in box:
                if not 0 <= j < 640:
                    check = False
            if check:
                if (box[0], box[1]) != (box[2], box[3]):
                    cv2.rectangle(img, (box[0], box[1]), (box[2], box[3]), (255, 255, 0), 4)

                    label = "{}: {:.2f}".format(self.labels[labels[i]], probs[i])
                    cv2.putText(img, label,(box[0] + 20, box[1] + 40),cv2.FONT_HERSHEY_SIMPLEX,1,(255, 0, 255),2)
                    
                    x = (box[0] + box[2])/2
                    y = (box[1] + box[3])/2

        return img# , objs


    def onShutdown(self):
        rospy.loginfo("Shutdown.")


if __name__ == '__main__': 
    rospy.init_node('bb_ssd_mobile_lite',anonymous=False)
    bb_ssd_mobile_lite = bb_ssd_mobile_lite()
    rospy.on_shutdown(bb_ssd_mobile_lite.onShutdown)
    rospy.spin()
