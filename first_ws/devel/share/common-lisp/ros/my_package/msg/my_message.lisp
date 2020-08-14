; Auto-generated. Do not edit!


(cl:in-package my_package-msg)


;//! \htmlinclude my_message.msg.html

(cl:defclass <my_message> (roslisp-msg-protocol:ros-message)
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
    :initform 0))
)

(cl:defclass my_message (<my_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_package-msg:<my_message> is deprecated: use my_package-msg:my_message instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <my_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:x-val is deprecated.  Use my_package-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <my_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:y-val is deprecated.  Use my_package-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <my_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_package-msg:z-val is deprecated.  Use my_package-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_message>) ostream)
  "Serializes a message object of type '<my_message>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_message>) istream)
  "Deserializes a message object of type '<my_message>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_message>)))
  "Returns string type for a message object of type '<my_message>"
  "my_package/my_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_message)))
  "Returns string type for a message object of type 'my_message"
  "my_package/my_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_message>)))
  "Returns md5sum for a message object of type '<my_message>"
  "85729383565f7e059d4a213b3db1317b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_message)))
  "Returns md5sum for a message object of type 'my_message"
  "85729383565f7e059d4a213b3db1317b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_message>)))
  "Returns full string definition for message of type '<my_message>"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_message)))
  "Returns full string definition for message of type 'my_message"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_message>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_message>))
  "Converts a ROS message object to a list"
  (cl:list 'my_message
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
