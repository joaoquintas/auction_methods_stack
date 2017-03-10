; Auto-generated. Do not edit!


(cl:in-package auction_srvs-srv)


;//! \htmlinclude AuctioneerBidService-request.msg.html

(cl:defclass <AuctioneerBidService-request> (roslisp-msg-protocol:ros-message)
  ((bid_data
    :reader bid_data
    :initarg :bid_data
    :type auction_msgs-msg:Bid
    :initform (cl:make-instance 'auction_msgs-msg:Bid)))
)

(cl:defclass AuctioneerBidService-request (<AuctioneerBidService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctioneerBidService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctioneerBidService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<AuctioneerBidService-request> is deprecated: use auction_srvs-srv:AuctioneerBidService-request instead.")))

(cl:ensure-generic-function 'bid_data-val :lambda-list '(m))
(cl:defmethod bid_data-val ((m <AuctioneerBidService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:bid_data-val is deprecated.  Use auction_srvs-srv:bid_data instead.")
  (bid_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctioneerBidService-request>) ostream)
  "Serializes a message object of type '<AuctioneerBidService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bid_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctioneerBidService-request>) istream)
  "Deserializes a message object of type '<AuctioneerBidService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bid_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctioneerBidService-request>)))
  "Returns string type for a service object of type '<AuctioneerBidService-request>"
  "auction_srvs/AuctioneerBidServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctioneerBidService-request)))
  "Returns string type for a service object of type 'AuctioneerBidService-request"
  "auction_srvs/AuctioneerBidServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctioneerBidService-request>)))
  "Returns md5sum for a message object of type '<AuctioneerBidService-request>"
  "199b17765623618cee1cad5c1350560a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctioneerBidService-request)))
  "Returns md5sum for a message object of type 'AuctioneerBidService-request"
  "199b17765623618cee1cad5c1350560a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctioneerBidService-request>)))
  "Returns full string definition for message of type '<AuctioneerBidService-request>"
  (cl:format cl:nil "~%~%~%auction_msgs/Bid bid_data~%~%~%================================================================================~%MSG: auction_msgs/Bid~%Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctioneerBidService-request)))
  "Returns full string definition for message of type 'AuctioneerBidService-request"
  (cl:format cl:nil "~%~%~%auction_msgs/Bid bid_data~%~%~%================================================================================~%MSG: auction_msgs/Bid~%Header header~%string buyer_id~%int64 cost_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctioneerBidService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bid_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctioneerBidService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctioneerBidService-request
    (cl:cons ':bid_data (bid_data msg))
))
;//! \htmlinclude AuctioneerBidService-response.msg.html

(cl:defclass <AuctioneerBidService-response> (roslisp-msg-protocol:ros-message)
  ((response_info
    :reader response_info
    :initarg :response_info
    :type cl:string
    :initform ""))
)

(cl:defclass AuctioneerBidService-response (<AuctioneerBidService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuctioneerBidService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuctioneerBidService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auction_srvs-srv:<AuctioneerBidService-response> is deprecated: use auction_srvs-srv:AuctioneerBidService-response instead.")))

(cl:ensure-generic-function 'response_info-val :lambda-list '(m))
(cl:defmethod response_info-val ((m <AuctioneerBidService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auction_srvs-srv:response_info-val is deprecated.  Use auction_srvs-srv:response_info instead.")
  (response_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuctioneerBidService-response>) ostream)
  "Serializes a message object of type '<AuctioneerBidService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuctioneerBidService-response>) istream)
  "Deserializes a message object of type '<AuctioneerBidService-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuctioneerBidService-response>)))
  "Returns string type for a service object of type '<AuctioneerBidService-response>"
  "auction_srvs/AuctioneerBidServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctioneerBidService-response)))
  "Returns string type for a service object of type 'AuctioneerBidService-response"
  "auction_srvs/AuctioneerBidServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuctioneerBidService-response>)))
  "Returns md5sum for a message object of type '<AuctioneerBidService-response>"
  "199b17765623618cee1cad5c1350560a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuctioneerBidService-response)))
  "Returns md5sum for a message object of type 'AuctioneerBidService-response"
  "199b17765623618cee1cad5c1350560a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuctioneerBidService-response>)))
  "Returns full string definition for message of type '<AuctioneerBidService-response>"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuctioneerBidService-response)))
  "Returns full string definition for message of type 'AuctioneerBidService-response"
  (cl:format cl:nil "~%~%~%string response_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuctioneerBidService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuctioneerBidService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AuctioneerBidService-response
    (cl:cons ':response_info (response_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AuctioneerBidService)))
  'AuctioneerBidService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AuctioneerBidService)))
  'AuctioneerBidService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuctioneerBidService)))
  "Returns string type for a service object of type '<AuctioneerBidService>"
  "auction_srvs/AuctioneerBidService")