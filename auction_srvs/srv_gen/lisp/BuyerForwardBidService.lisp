; Auto-generated. Do not edit!


(cl:in-package auction_srvs-srv)


;//! \htmlinclude BuyerForwardBidService-request.msg.html

(cl:defclass <BuyerForwardBidService-request> (roslisp-msg-protocol:ros-message)
  ((sending_node
    :reader sending_node
    :initarg :sending_node
    :type cl:string
    :initform "")
   (path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (bid_data
    :reader bid_data
    :initarg :bid_data
    :type auction_msgs-msg:Bid
    :initform (cl:make-instance 'auction_msgs-msg:Bid)))
)

(cl:defclass BuyerForwardBidService-request (<BuyerForwardBidService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuyerForwardBidService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuyerForwardBidService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<BuyerForwardBidService-request> is deprecated: use auction_srvs-srv:BuyerForwardBidService-request instead.")))

(cl:ensure-generic-function 'sending_node-val :lambda-list '(m))
(cl:defmethod sending_node-val ((m <BuyerForwardBidService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:sending_node-val is deprecated.  Use auction_srvs-srv:sending_node instead.")
  (sending_node m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <BuyerForwardBidService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:path-val is deprecated.  Use auction_srvs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'bid_data-val :lambda-list '(m))
(cl:defmethod bid_data-val ((m <BuyerForwardBidService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:bid_data-val is deprecated.  Use auction_srvs-srv:bid_data instead.")
  (bid_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuyerForwardBidService-request>) ostream)
  "Serializes a message object of type '<BuyerForwardBidService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sending_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sending_node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bid_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuyerForwardBidService-request>) istream)
  "Deserializes a message object of type '<BuyerForwardBidService-request>"
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
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bid_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuyerForwardBidService-request>)))
  "Returns string type for a service object of type '<BuyerForwardBidService-request>"
  "auction_srvs/BuyerForwardBidServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuyerForwardBidService-request)))
  "Returns string type for a service object of type 'BuyerForwardBidService-request"
  "auction_srvs/BuyerForwardBidServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuyerForwardBidService-request>)))
  "Returns md5sum for a message object of type '<BuyerForwardBidService-request>"
  "cbc49abd05aae81cb92ec30f51b288e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuyerForwardBidService-request)))
  "Returns md5sum for a message object of type 'BuyerForwardBidService-request"
  "cbc49abd05aae81cb92ec30f51b288e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuyerForwardBidService-request>)))
  "Returns full string definition for message of type '<BuyerForwardBidService-request>"
  (cl:format cl:nil "~%~%~%string sending_node~%string path~%auction_msgs/Bid bid_data~%~%~%================================================================================~%MSG: auction_msgs/Bid~%Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuyerForwardBidService-request)))
  "Returns full string definition for message of type 'BuyerForwardBidService-request"
  (cl:format cl:nil "~%~%~%string sending_node~%string path~%auction_msgs/Bid bid_data~%~%~%================================================================================~%MSG: auction_msgs/Bid~%Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuyerForwardBidService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sending_node))
     4 (cl:length (cl:slot-value msg 'path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bid_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuyerForwardBidService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BuyerForwardBidService-request
    (cl:cons ':sending_node (sending_node msg))
    (cl:cons ':path (path msg))
    (cl:cons ':bid_data (bid_data msg))
))
;//! \htmlinclude BuyerForwardBidService-response.msg.html

(cl:defclass <BuyerForwardBidService-response> (roslisp-msg-protocol:ros-message)
  ((response_info
    :reader response_info
    :initarg :response_info
    :type cl:string
    :initform ""))
)

(cl:defclass BuyerForwardBidService-response (<BuyerForwardBidService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuyerForwardBidService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuyerForwardBidService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<BuyerForwardBidService-response> is deprecated: use auction_srvs-srv:BuyerForwardBidService-response instead.")))

(cl:ensure-generic-function 'response_info-val :lambda-list '(m))
(cl:defmethod response_info-val ((m <BuyerForwardBidService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:response_info-val is deprecated.  Use auction_srvs-srv:response_info instead.")
  (response_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuyerForwardBidService-response>) ostream)
  "Serializes a message object of type '<BuyerForwardBidService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuyerForwardBidService-response>) istream)
  "Deserializes a message object of type '<BuyerForwardBidService-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuyerForwardBidService-response>)))
  "Returns string type for a service object of type '<BuyerForwardBidService-response>"
  "auction_srvs/BuyerForwardBidServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuyerForwardBidService-response)))
  "Returns string type for a service object of type 'BuyerForwardBidService-response"
  "auction_srvs/BuyerForwardBidServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuyerForwardBidService-response>)))
  "Returns md5sum for a message object of type '<BuyerForwardBidService-response>"
  "cbc49abd05aae81cb92ec30f51b288e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuyerForwardBidService-response)))
  "Returns md5sum for a message object of type 'BuyerForwardBidService-response"
  "cbc49abd05aae81cb92ec30f51b288e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuyerForwardBidService-response>)))
  "Returns full string definition for message of type '<BuyerForwardBidService-response>"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuyerForwardBidService-response)))
  "Returns full string definition for message of type 'BuyerForwardBidService-response"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuyerForwardBidService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuyerForwardBidService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BuyerForwardBidService-response
    (cl:cons ':response_info (response_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BuyerForwardBidService)))
  'BuyerForwardBidService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BuyerForwardBidService)))
  'BuyerForwardBidService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuyerForwardBidService)))
  "Returns string type for a service object of type '<BuyerForwardBidService>"
  "auction_srvs/BuyerForwardBidService")