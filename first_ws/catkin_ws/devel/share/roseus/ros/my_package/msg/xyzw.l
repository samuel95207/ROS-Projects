;; Auto-generated. Do not edit!


(when (boundp 'my_package::xyzw)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'xyzw (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::XYZW")
  (make-package "MY_PACKAGE::XYZW"))

(in-package "ROS")
;;//! \htmlinclude xyzw.msg.html


(defclass my_package::xyzw
  :super ros::object
  :slots (_x _y _z _w ))

(defmethod my_package::xyzw
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:w __w) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _w (round __w))
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
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int16 _z
    2
    ;; int16 _w
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
     ;; int16 _w
       (write-word _w s)
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
   ;; int16 _w
     (setq _w (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get my_package::xyzw :md5sum-) "5956c726008213976745e51253798e9f")
(setf (get my_package::xyzw :datatype-) "my_package/xyzw")
(setf (get my_package::xyzw :definition-)
      "int16 x
int16 y
int16 z
int16 w
")



(provide :my_package/xyzw "5956c726008213976745e51253798e9f")


