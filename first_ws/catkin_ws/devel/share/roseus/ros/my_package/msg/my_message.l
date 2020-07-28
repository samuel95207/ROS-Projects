;; Auto-generated. Do not edit!


(when (boundp 'my_package::my_message)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'my_message (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::MY_MESSAGE")
  (make-package "MY_PACKAGE::MY_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude my_message.msg.html


(defclass my_package::my_message
  :super ros::object
  :slots (_x _y _z ))

(defmethod my_package::my_message
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

(setf (get my_package::my_message :md5sum-) "85729383565f7e059d4a213b3db1317b")
(setf (get my_package::my_message :datatype-) "my_package/my_message")
(setf (get my_package::my_message :definition-)
      "int16 x
int16 y
int16 z
")



(provide :my_package/my_message "85729383565f7e059d4a213b3db1317b")


