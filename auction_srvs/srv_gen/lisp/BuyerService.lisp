; Auto-generated. Do not edit!


(cl:in-package auction_srvs-srv)


;//! \htmlinclude BuyerService-request.msg.html

(cl:defclass <BuyerService-request> (roslisp-msg-protocol:ros-message)
  ((auctioneer_node
    :reader auctioneer_node
    :initarg :auctioneer_node
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

(cl:defclass BuyerService-request (<BuyerService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuyerService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuyerService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<BuyerService-request> is deprecated: use auction_srvs-srv:BuyerService-request instead.")))

(cl:ensure-generic-function 'auctioneer_node-val :lambda-list '(m))
(cl:defmethod auctioneer_node-val ((m <BuyerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:auctioneer_node-val is deprecated.  Use auction_srvs-srv:auctioneer_node instead.")
  (auctioneer_node m))

(cl:ensure-generic-function 'sending_node-val :lambda-list '(m))
(cl:defmethod sending_node-val ((m <BuyerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:sending_node-val is deprecated.  Use auction_srvs-srv:sending_node instead.")
  (sending_node m))

(cl:ensure-generic-function 'nodes_collected-val :lambda-list '(m))
(cl:defmethod nodes_collected-val ((m <BuyerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:nodes_collected-val is deprecated.  Use auction_srvs-srv:nodes_collected instead.")
  (nodes_collected m))

(cl:ensure-generic-function 'auction_data-val :lambda-list '(m))
(cl:defmethod auction_data-val ((m <BuyerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:auction_data-val is deprecated.  Use auction_srvs-srv:auction_data instead.")
  (auction_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuyerService-request>) ostream)
  "Serializes a message object of type '<BuyerService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'auctioneer_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'auctioneer_node))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuyerService-request>) istream)
  "Deserializes a message object of type '<BuyerService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auctioneer_node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'auctioneer_node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuyerService-request>)))
  "Returns string type for a service object of type '<BuyerService-request>"
  "auction_srvs/BuyerServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuyerService-request)))
  "Returns string type for a service object of type 'BuyerService-request"
  "auction_srvs/BuyerServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuyerService-request>)))
  "Returns md5sum for a message object of type '<BuyerService-request>"
  "827a8d5b8806f1bbb1bc47a119c94d69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuyerService-request)))
  "Returns md5sum for a message object of type 'BuyerService-request"
  "827a8d5b8806f1bbb1bc47a119c94d69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuyerService-request>)))
  "Returns full string definition for message of type '<BuyerService-request>"
  (cl:format cl:nil "~%~%~%string auctioneer_node~%string sending_node~%string nodes_collected~%auction_msgs/Auction auction_data~%~%~%================================================================================~%MSG: auction_msgs/Auction~%Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuyerService-request)))
  "Returns full string definition for message of type 'BuyerService-request"
  (cl:format cl:nil "~%~%~%string auctioneer_node~%string sending_node~%string nodes_collected~%auction_msgs/Auction auction_data~%~%~%================================================================================~%MSG: auction_msgs/Auction~%Header header~%string command~%string task_type_name~%string subject~%string metrics~%duration length~%geometry_msgs/Point task_location~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuyerService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'auctioneer_node))
     4 (cl:length (cl:slot-value msg 'sending_node))
     4 (cl:length (cl:slot-value msg 'nodes_collected))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auction_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuyerService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BuyerService-request
    (cl:cons ':auctioneer_node (auctioneer_node msg))
    (cl:cons ':sending_node (sending_node msg))
    (cl:cons ':nodes_collected (nodes_collected msg))
    (cl:cons ':auction_data (auction_data msg))
))
;//! \htmlinclude BuyerService-response.msg.html

(cl:defclass <BuyerService-response> (roslisp-msg-protocol:ros-message)
  ((response_info
    :reader response_info
    :initarg :response_info
    :type cl:string
    :initform ""))
)

(cl:defclass BuyerService-response (<BuyerService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuyerService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuyerService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<BuyerService-response> is deprecated: use auction_srvs-srv:BuyerService-response instead.")))

(cl:ensure-generic-function 'response_info-val :lambda-list '(m))
(cl:defmethod response_info-val ((m <BuyerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:response_info-val is deprecated.  Use auction_srvs-srv:response_info instead.")
  (response_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuyerService-response>) ostream)
  "Serializes a message object of type '<BuyerService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuyerService-response>) istream)
  "Deserializes a message object of type '<BuyerService-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuyerService-response>)))
  "Returns string type for a service object of type '<BuyerService-response>"
  "auction_srvs/BuyerServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuyerService-response)))
  "Returns string type for a service object of type 'BuyerService-response"
  "auction_srvs/BuyerServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuyerService-response>)))
  "Returns md5sum for a message object of type '<BuyerService-response>"
  "827a8d5b8806f1bbb1bc47a119c94d69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuyerService-response)))
  "Returns md5sum for a message object of type 'BuyerService-response"
  "827a8d5b8806f1bbb1bc47a119c94d69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuyerService-response>)))
  "Returns full string definition for message of type '<BuyerService-response>"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuyerService-response)))
  "Returns full string definition for message of type 'BuyerService-response"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuyerService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuyerService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BuyerService-response
    (cl:cons ':response_info (response_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BuyerService)))
  'BuyerService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BuyerService)))
  'BuyerService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuyerService)))
  "Returns string type for a service object of type '<BuyerService>"
  "auction_srvs/BuyerService")