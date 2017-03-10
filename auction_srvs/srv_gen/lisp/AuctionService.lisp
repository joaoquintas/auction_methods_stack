; Auto-generated. Do not edit!


(cl:in-package auction_srvs-srv)


;//! \htmlinclude AuctionService-request.msg.html

(cl:defclass <AuctionService-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AuctionService-request (<AuctionService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctionService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctionService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<AuctionService-request> is deprecated: use auction_srvs-srv:AuctionService-request instead.")))

(cl:ensure-generic-function 'role-val :lambda-list '(m))
(cl:defmethod role-val ((m <AuctionService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:role-val is deprecated.  Use auction_srvs-srv:role instead.")
  (role m))

(cl:ensure-generic-function 'auction_type-val :lambda-list '(m))
(cl:defmethod auction_type-val ((m <AuctionService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:auction_type-val is deprecated.  Use auction_srvs-srv:auction_type instead.")
  (auction_type m))

(cl:ensure-generic-function 'sending_node-val :lambda-list '(m))
(cl:defmethod sending_node-val ((m <AuctionService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:sending_node-val is deprecated.  Use auction_srvs-srv:sending_node instead.")
  (sending_node m))

(cl:ensure-generic-function 'nodes_collected-val :lambda-list '(m))
(cl:defmethod nodes_collected-val ((m <AuctionService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:nodes_collected-val is deprecated.  Use auction_srvs-srv:nodes_collected instead.")
  (nodes_collected m))

(cl:ensure-generic-function 'auction_data-val :lambda-list '(m))
(cl:defmethod auction_data-val ((m <AuctionService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:auction_data-val is deprecated.  Use auction_srvs-srv:auction_data instead.")
  (auction_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctionService-request>) ostream)
  "Serializes a message object of type '<AuctionService-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctionService-request>) istream)
  "Deserializes a message object of type '<AuctionService-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctionService-request>)))
  "Returns string type for a service object of type '<AuctionService-request>"
  "auction_srvs/AuctionServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionService-request)))
  "Returns string type for a service object of type 'AuctionService-request"
  "auction_srvs/AuctionServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctionService-request>)))
  "Returns md5sum for a message object of type '<AuctionService-request>"
  "d6b81557d076b0cba63ad79512801bd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctionService-request)))
  "Returns md5sum for a message object of type 'AuctionService-request"
  "d6b81557d076b0cba63ad79512801bd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctionService-request>)))
  "Returns full string definition for message of type '<AuctionService-request>"
  (cl:format cl:nil "~%~%~%string role~%string auction_type~%string sending_node~%string nodes_collected~%auction_msgs/Auction auction_data~%~%~%================================================================================~%MSG: auction_msgs/Auction~%Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctionService-request)))
  "Returns full string definition for message of type 'AuctionService-request"
  (cl:format cl:nil "~%~%~%string role~%string auction_type~%string sending_node~%string nodes_collected~%auction_msgs/Auction auction_data~%~%~%================================================================================~%MSG: auction_msgs/Auction~%Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctionService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'role))
     4 (cl:length (cl:slot-value msg 'auction_type))
     4 (cl:length (cl:slot-value msg 'sending_node))
     4 (cl:length (cl:slot-value msg 'nodes_collected))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auction_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctionService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctionService-request
    (cl:cons ':role (role msg))
    (cl:cons ':auction_type (auction_type msg))
    (cl:cons ':sending_node (sending_node msg))
    (cl:cons ':nodes_collected (nodes_collected msg))
    (cl:cons ':auction_data (auction_data msg))
))
;//! \htmlinclude AuctionService-response.msg.html

(cl:defclass <AuctionService-response> (roslisp-msg-protocol:ros-message)
  ((response_info
    :reader response_info
    :initarg :response_info
    :type cl:string
    :initform "")
   (bid_data
    :reader bid_data
    :initarg :bid_data
    :type auction_msgs-msg:Bid
    :initform (cl:make-instance 'auction_msgs-msg:Bid)))
)

(cl:defclass AuctionService-response (<AuctionService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctionService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctionService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<AuctionService-response> is deprecated: use auction_srvs-srv:AuctionService-response instead.")))

(cl:ensure-generic-function 'response_info-val :lambda-list '(m))
(cl:defmethod response_info-val ((m <AuctionService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:response_info-val is deprecated.  Use auction_srvs-srv:response_info instead.")
  (response_info m))

(cl:ensure-generic-function 'bid_data-val :lambda-list '(m))
(cl:defmethod bid_data-val ((m <AuctionService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:bid_data-val is deprecated.  Use auction_srvs-srv:bid_data instead.")
  (bid_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctionService-response>) ostream)
  "Serializes a message object of type '<AuctionService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_info))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bid_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctionService-response>) istream)
  "Deserializes a message object of type '<AuctionService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bid_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctionService-response>)))
  "Returns string type for a service object of type '<AuctionService-response>"
  "auction_srvs/AuctionServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionService-response)))
  "Returns string type for a service object of type 'AuctionService-response"
  "auction_srvs/AuctionServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctionService-response>)))
  "Returns md5sum for a message object of type '<AuctionService-response>"
  "d6b81557d076b0cba63ad79512801bd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctionService-response)))
  "Returns md5sum for a message object of type 'AuctionService-response"
  "d6b81557d076b0cba63ad79512801bd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctionService-response>)))
  "Returns full string definition for message of type '<AuctionService-response>"
  (cl:format cl:nil "~%~%~%string response_info~%auction_msgs/Bid bid_data~%~%================================================================================~%MSG: auction_msgs/Bid~%Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctionService-response)))
  "Returns full string definition for message of type 'AuctionService-response"
  (cl:format cl:nil "~%~%~%string response_info~%auction_msgs/Bid bid_data~%~%================================================================================~%MSG: auction_msgs/Bid~%Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctionService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bid_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctionService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctionService-response
    (cl:cons ':response_info (response_info msg))
    (cl:cons ':bid_data (bid_data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AuctionService)))
  'AuctionService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AuctionService)))
  'AuctionService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctionService)))
  "Returns string type for a service object of type '<AuctionService>"
  "auction_srvs/AuctionService")