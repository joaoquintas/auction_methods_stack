; Auto-generated. Do not edit!


(cl:in-package auction_srvs-srv)


;//! \htmlinclude AuctionServiceReset-request.msg.html

(cl:defclass <AuctionServiceReset-request> (roslisp-msg-protocol:ros-message)
  ((role
    :reader role
    :initarg :role
    :type cl:string
    :initform "")
   (auction_type
    :reader auction_type
    :initarg :auction_type
    :type cl:string
    :initform "")
   (sending_node
    :reader sending_node
    :initarg :sending_node
    :type cl:string
    :initform "")
   (nodes_collected
    :reader nodes_collected
    :initarg :nodes_collected
    :type cl:string
    :initform "")
   (auction_data
    :reader auction_data
    :initarg :auction_data
    :type auction_msgs-msg:Auction
    :initform (cl:make-instance 'auction_msgs-msg:Auction)))
)

(cl:defclass AuctionServiceReset-request (<AuctionServiceReset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctionServiceReset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctionServiceReset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<AuctionServiceReset-request> is deprecated: use auction_srvs-srv:AuctionServiceReset-request instead.")))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <AuctionServiceReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:role-val is deprecated.  Use auction_srvs-srv:role instead.")
  (role m))

(cl:ensure-generic-function 'auction_type-val :lambda-list '(m))
(cl:defmethod auction_type-val ((m <AuctionServiceReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:auction_type-val is deprecated.  Use auction_srvs-srv:auction_type instead.")
  (auction_type m))

(cl:ensure-generic-function 'sending_node-val :lambda-list '(m))
(cl:defmethod sending_node-val ((m <AuctionServiceReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:sending_node-val is deprecated.  Use auction_srvs-srv:sending_node instead.")
  (sending_node m))

(cl:ensure-generic-function 'nodes_collected-val :lambda-list '(m))
(cl:defmethod nodes_collected-val ((m <AuctionServiceReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:nodes_collected-val is deprecated.  Use auction_srvs-srv:nodes_collected instead.")
  (nodes_collected m))

(cl:ensure-generic-function 'auction_data-val :lambda-list '(m))
(cl:defmethod auction_data-val ((m <AuctionServiceReset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:auction_data-val is deprecated.  Use auction_srvs-srv:auction_data instead.")
  (auction_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctionServiceReset-request>) ostream)
  "Serializes a message object of type '<AuctionServiceReset-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'role))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'role))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'auction_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'auction_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sending_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sending_node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nodes_collected))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nodes_collected))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auction_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctionServiceReset-request>) istream)
  "Deserializes a message object of type '<AuctionServiceReset-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'role) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'role) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auction_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'auction_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sending_node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sending_node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nodes_collected) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nodes_collected) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auction_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctionServiceReset-request>)))
  "Returns string type for a service object of type '<AuctionServiceReset-request>"
  "auction_srvs/AuctionServiceResetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionServiceReset-request)))
  "Returns string type for a service object of type 'AuctionServiceReset-request"
  "auction_srvs/AuctionServiceResetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctionServiceReset-request>)))
  "Returns md5sum for a message object of type '<AuctionServiceReset-request>"
  "4c61db6a7e5400f7a5137a2c8194bac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctionServiceReset-request)))
  "Returns md5sum for a message object of type 'AuctionServiceReset-request"
  "4c61db6a7e5400f7a5137a2c8194bac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctionServiceReset-request>)))
  "Returns full string definition for message of type '<AuctionServiceReset-request>"
  (cl:format cl:nil "~%~%~%string role~%string auction_type~%string sending_node~%string nodes_collected~%auction_msgs/Auction auction_data~%~%~%================================================================================~%MSG: auction_msgs/Auction~%Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctionServiceReset-request)))
  "Returns full string definition for message of type 'AuctionServiceReset-request"
  (cl:format cl:nil "~%~%~%string role~%string auction_type~%string sending_node~%string nodes_collected~%auction_msgs/Auction auction_data~%~%~%================================================================================~%MSG: auction_msgs/Auction~%Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctionServiceReset-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'role))
     4 (cl:length (cl:slot-value msg 'auction_type))
     4 (cl:length (cl:slot-value msg 'sending_node))
     4 (cl:length (cl:slot-value msg 'nodes_collected))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auction_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctionServiceReset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctionServiceReset-request
    (cl:cons ':role (role msg))
    (cl:cons ':auction_type (auction_type msg))
    (cl:cons ':sending_node (sending_node msg))
    (cl:cons ':nodes_collected (nodes_collected msg))
    (cl:cons ':auction_data (auction_data msg))
))
;//! \htmlinclude AuctionServiceReset-response.msg.html

(cl:defclass <AuctionServiceReset-response> (roslisp-msg-protocol:ros-message)
  ((response_info
    :reader response_info
    :initarg :response_info
    :type cl:string
    :initform ""))
)

(cl:defclass AuctionServiceReset-response (<AuctionServiceReset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctionServiceReset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctionServiceReset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<AuctionServiceReset-response> is deprecated: use auction_srvs-srv:AuctionServiceReset-response instead.")))

(cl:ensure-generic-function 'response_info-val :lambda-list '(m))
(cl:defmethod response_info-val ((m <AuctionServiceReset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:response_info-val is deprecated.  Use auction_srvs-srv:response_info instead.")
  (response_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctionServiceReset-response>) ostream)
  "Serializes a message object of type '<AuctionServiceReset-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctionServiceReset-response>) istream)
  "Deserializes a message object of type '<AuctionServiceReset-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctionServiceReset-response>)))
  "Returns string type for a service object of type '<AuctionServiceReset-response>"
  "auction_srvs/AuctionServiceResetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionServiceReset-response)))
  "Returns string type for a service object of type 'AuctionServiceReset-response"
  "auction_srvs/AuctionServiceResetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctionServiceReset-response>)))
  "Returns md5sum for a message object of type '<AuctionServiceReset-response>"
  "4c61db6a7e5400f7a5137a2c8194bac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctionServiceReset-response)))
  "Returns md5sum for a message object of type 'AuctionServiceReset-response"
  "4c61db6a7e5400f7a5137a2c8194bac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctionServiceReset-response>)))
  "Returns full string definition for message of type '<AuctionServiceReset-response>"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctionServiceReset-response)))
  "Returns full string definition for message of type 'AuctionServiceReset-response"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctionServiceReset-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctionServiceReset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctionServiceReset-response
    (cl:cons ':response_info (response_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AuctionServiceReset)))
  'AuctionServiceReset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AuctionServiceReset)))
  'AuctionServiceReset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionServiceReset)))
  "Returns string type for a service object of type '<AuctionServiceReset>"
  "auction_srvs/AuctionServiceReset")