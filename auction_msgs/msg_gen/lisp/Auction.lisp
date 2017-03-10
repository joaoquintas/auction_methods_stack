; Auto-generated. Do not edit!


(cl:in-package auction_msgs-msg)


;//! \htmlinclude Auction.msg.html

(cl:defclass <Auction> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (task_type_name
    :reader task_type_name
    :initarg :task_type_name
    :type cl:string
    :initform "")
   (subject
    :reader subject
    :initarg :subject
    :type cl:string
    :initform "")
   (metrics
    :reader metrics
    :initarg :metrics
    :type cl:string
    :initform "")
   (length
    :reader length
    :initarg :length
    :type cl:real
    :initform 0)
   (task_location
    :reader task_location
    :initarg :task_location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Auction (<Auction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Auction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Auction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_msgs-msg:<Auction> is deprecated: use auction_msgs-msg:Auction instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Auction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:header-val is deprecated.  Use auction_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Auction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:command-val is deprecated.  Use auction_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'task_type_name-val :lambda-list '(m))
(cl:defmethod task_type_name-val ((m <Auction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:task_type_name-val is deprecated.  Use auction_msgs-msg:task_type_name instead.")
  (task_type_name m))

(cl:ensure-generic-function 'subject-val :lambda-list '(m))
(cl:defmethod subject-val ((m <Auction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:subject-val is deprecated.  Use auction_msgs-msg:subject instead.")
  (subject m))

(cl:ensure-generic-function 'metrics-val :lambda-list '(m))
(cl:defmethod metrics-val ((m <Auction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:metrics-val is deprecated.  Use auction_msgs-msg:metrics instead.")
  (metrics m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Auction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:length-val is deprecated.  Use auction_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'task_location-val :lambda-list '(m))
(cl:defmethod task_location-val ((m <Auction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_msgs-msg:task_location-val is deprecated.  Use auction_msgs-msg:task_location instead.")
  (task_location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Auction>) ostream)
  "Serializes a message object of type '<Auction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_type_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_type_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subject))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subject))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'metrics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'metrics))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'length)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'length) (cl:floor (cl:slot-value msg 'length)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Auction>) istream)
  "Deserializes a message object of type '<Auction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_type_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_type_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subject) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subject) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'metrics) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'metrics) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Auction>)))
  "Returns string type for a message object of type '<Auction>"
  "auction_msgs/Auction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Auction)))
  "Returns string type for a message object of type 'Auction"
  "auction_msgs/Auction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Auction>)))
  "Returns md5sum for a message object of type '<Auction>"
  "003387503e87218848189bfdbbf986d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Auction)))
  "Returns md5sum for a message object of type 'Auction"
  "003387503e87218848189bfdbbf986d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Auction>)))
  "Returns full string definition for message of type '<Auction>"
  (cl:format cl:nil "Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Auction)))
  "Returns full string definition for message of type 'Auction"
  (cl:format cl:nil "Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Auction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'task_type_name))
     4 (cl:length (cl:slot-value msg 'subject))
     4 (cl:length (cl:slot-value msg 'metrics))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Auction>))
  "Converts a ROS message object to a list"
  (cl:list 'Auction
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
    (cl:cons ':task_type_name (task_type_name msg))
    (cl:cons ':subject (subject msg))
    (cl:cons ':metrics (metrics msg))
    (cl:cons ':length (length msg))
    (cl:cons ':task_location (task_location msg))
))
