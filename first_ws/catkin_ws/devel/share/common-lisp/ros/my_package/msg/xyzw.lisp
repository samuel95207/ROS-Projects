; Auto-generated. Do not edit!


(cl:in-package my_package-msg)


;//! \htmlinclude xyzw.msg.html

(cl:defclass <xyzw> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:fixnum
    :initform 0)
   (w
    :reader w
    :initarg :w
    :type cl:fixnum
    :initform 0))
)

(cl:defclass xyzw (<xyzw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <xyzw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'xyzw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-msg:<xyzw> is deprecated: use my_package-msg:xyzw instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <xyzw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:x-val is deprecated.  Use my_package-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <xyzw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:y-val is deprecated.  Use my_package-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <xyzw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:z-val is deprecated.  Use my_package-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <xyzw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:w-val is deprecated.  Use my_package-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <xyzw>) ostream)
  "Serializes a message object of type '<xyzw>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'w)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <xyzw>) istream)
  "Deserializes a message object of type '<xyzw>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'w) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<xyzw>)))
  "Returns string type for a message object of type '<xyzw>"
  "my_package/xyzw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'xyzw)))
  "Returns string type for a message object of type 'xyzw"
  "my_package/xyzw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<xyzw>)))
  "Returns md5sum for a message object of type '<xyzw>"
  "5956c726008213976745e51253798e9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'xyzw)))
  "Returns md5sum for a message object of type 'xyzw"
  "5956c726008213976745e51253798e9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<xyzw>)))
  "Returns full string definition for message of type '<xyzw>"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%int16 w~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'xyzw)))
  "Returns full string definition for message of type 'xyzw"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%int16 w~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <xyzw>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <xyzw>))
  "Converts a ROS message object to a list"
  (cl:list 'xyzw
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':w (w msg))
))
