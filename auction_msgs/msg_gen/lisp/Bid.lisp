; Auto-generated. Do not edit!


(cl:in-package auction_msgs-msg)


;//! \htmlinclude Bid.msg.html

(cl:defclass <Bid> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (buyer_id
    :reader buyer_id
    :initarg :buyer_id
    :type cl:string
    :initform "")
   (cost_distance
    :reader cost_distance
    :initarg :cost_distance
    :type cl:integer
    :initform 0))
)

(cl:defclass Bid (<Bid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_msgs-msg:<Bid> is deprecated: use auction_msgs-msg:Bid instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:header-val is deprecated.  Use auction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'buyer_id-val :lambda-list '(m))
(cl:defmethod buyer_id-val ((m <Bid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:buyer_id-val is deprecated.  Use auction_msgs-msg:buyer_id instead.")
  (buyer_id m))

(cl:ensure-generic-function 'cost_distance-val :lambda-list '(m))
(cl:defmethod cost_distance-val ((m <Bid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:cost_distance-val is deprecated.  Use auction_msgs-msg:cost_distance instead.")
  (cost_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bid>) ostream)
  "Serializes a message object of type '<Bid>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'buyer_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'buyer_id))
  (cl:let* ((signed (cl:slot-value msg 'cost_distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bid>) istream)
  "Deserializes a message object of type '<Bid>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buyer_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'buyer_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cost_distance) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bid>)))
  "Returns string type for a message object of type '<Bid>"
  "auction_msgs/Bid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bid)))
  "Returns string type for a message object of type 'Bid"
  "auction_msgs/Bid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bid>)))
  "Returns md5sum for a message object of type '<Bid>"
  "a9fd8c7cc5d27c4274d3730239f98aaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bid)))
  "Returns md5sum for a message object of type 'Bid"
  "a9fd8c7cc5d27c4274d3730239f98aaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bid>)))
  "Returns full string definition for message of type '<Bid>"
  (cl:format cl:nil "Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bid)))
  "Returns full string definition for message of type 'Bid"
  (cl:format cl:nil "Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bid>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'buyer_id))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bid>))
  "Converts a ROS message object to a list"
  (cl:list 'Bid
    (cl:cons ':header (header msg))
    (cl:cons ':buyer_id (buyer_id msg))
    (cl:cons ':cost_distance (cost_distance msg))
))
