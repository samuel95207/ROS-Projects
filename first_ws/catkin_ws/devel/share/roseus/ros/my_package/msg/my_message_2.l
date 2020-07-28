;; Auto-generated. Do not edit!


(when (boundp 'my_package::my_message_2)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'my_message_2 (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::MY_MESSAGE_2")
  (make-package "MY_PACKAGE::MY_MESSAGE_2"))

(in-package "ROS")
;;//! \htmlinclude my_message_2.msg.html


(defclass my_package::my_message_2
  :super ros::object
  :slots (_x _y _z ))

(defmethod my_package::my_message_2
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int16 _z
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; int16 _z
       (write-word _z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _z
     (setq _z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get my_package::my_message_2 :md5sum-) "85729383565f7e059d4a213b3db1317b")
(setf (get my_package::my_message_2 :datatype-) "my_package/my_message_2")
(setf (get my_package::my_message_2 :definition-)
      "int16 x
int16 y
int16 z
")



(provide :my_package/my_message_2 "85729383565f7e059d4a213b3db1317b")


