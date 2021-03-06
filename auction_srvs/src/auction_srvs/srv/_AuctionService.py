"""autogenerated by genmsg_py from AuctionServiceRequest.msg. Do not edit."""
import roslib.message
import struct

import geometry_msgs.msg
import auction_msgs.msg
import roslib.rostime
import std_msgs.msg

class AuctionServiceRequest(roslib.message.Message):
  _md5sum = "71cdc8b8f8b1a628ff5e78f4bb4202a8"
  _type = "auction_srvs/AuctionServiceRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """


string role
string auction_type
string sending_node
string nodes_collected
auction_msgs/Auction auction_data


================================================================================
MSG: auction_msgs/Auction
Header header
string command
string task_type_name
string subject
string metrics
duration length
geometry_msgs/Point task_location

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

"""
  __slots__ = ['role','auction_type','sending_node','nodes_collected','auction_data']
  _slot_types = ['string','string','string','string','auction_msgs/Auction']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       role,auction_type,sending_node,nodes_collected,auction_data
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(AuctionServiceRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.role is None:
        self.role = ''
      if self.auction_type is None:
        self.auction_type = ''
      if self.sending_node is None:
        self.sending_node = ''
      if self.nodes_collected is None:
        self.nodes_collected = ''
      if self.auction_data is None:
        self.auction_data = auction_msgs.msg.Auction()
    else:
      self.role = ''
      self.auction_type = ''
      self.sending_node = ''
      self.nodes_collected = ''
      self.auction_data = auction_msgs.msg.Auction()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self.role
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_type
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.sending_node
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.nodes_collected
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.auction_data.header.seq, _x.auction_data.header.stamp.secs, _x.auction_data.header.stamp.nsecs))
      _x = self.auction_data.header.frame_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.command
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.task_type_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.subject
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.metrics
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2i3d.pack(_x.auction_data.length.secs, _x.auction_data.length.nsecs, _x.auction_data.task_location.x, _x.auction_data.task_location.y, _x.auction_data.task_location.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.auction_data is None:
        self.auction_data = auction_msgs.msg.Auction()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.role = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.sending_node = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.nodes_collected = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.auction_data.header.seq, _x.auction_data.header.stamp.secs, _x.auction_data.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.command = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.task_type_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.subject = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.metrics = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.auction_data.length.secs, _x.auction_data.length.nsecs, _x.auction_data.task_location.x, _x.auction_data.task_location.y, _x.auction_data.task_location.z,) = _struct_2i3d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self.role
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_type
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.sending_node
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.nodes_collected
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.auction_data.header.seq, _x.auction_data.header.stamp.secs, _x.auction_data.header.stamp.nsecs))
      _x = self.auction_data.header.frame_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.command
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.task_type_name
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.subject
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.auction_data.metrics
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2i3d.pack(_x.auction_data.length.secs, _x.auction_data.length.nsecs, _x.auction_data.task_location.x, _x.auction_data.task_location.y, _x.auction_data.task_location.z))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      if self.auction_data is None:
        self.auction_data = auction_msgs.msg.Auction()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.role = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.sending_node = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.nodes_collected = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.auction_data.header.seq, _x.auction_data.header.stamp.secs, _x.auction_data.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.command = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.task_type_name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.subject = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.auction_data.metrics = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.auction_data.length.secs, _x.auction_data.length.nsecs, _x.auction_data.task_location.x, _x.auction_data.task_location.y, _x.auction_data.task_location.z,) = _struct_2i3d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_3I = struct.Struct("<3I")
_struct_2i3d = struct.Struct("<2i3d")
"""autogenerated by genmsg_py from AuctionServiceResponse.msg. Do not edit."""
import roslib.message
import struct

import auction_msgs.msg
import std_msgs.msg

class AuctionServiceResponse(roslib.message.Message):
  _md5sum = "60191484f19ef1e101f27cfcfa9ff2c2"
  _type = "auction_srvs/AuctionServiceResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """


string response_info
auction_msgs/Bid bid_data

================================================================================
MSG: auction_msgs/Bid
Header header
string buyer_id
int64 cost_distance

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['response_info','bid_data']
  _slot_types = ['string','auction_msgs/Bid']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       response_info,bid_data
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(AuctionServiceResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.response_info is None:
        self.response_info = ''
      if self.bid_data is None:
        self.bid_data = auction_msgs.msg.Bid()
    else:
      self.response_info = ''
      self.bid_data = auction_msgs.msg.Bid()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self.response_info
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.bid_data.header.seq, _x.bid_data.header.stamp.secs, _x.bid_data.header.stamp.nsecs))
      _x = self.bid_data.header.frame_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.bid_data.buyer_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_q.pack(self.bid_data.cost_distance))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      if self.bid_data is None:
        self.bid_data = auction_msgs.msg.Bid()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.response_info = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.bid_data.header.seq, _x.bid_data.header.stamp.secs, _x.bid_data.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.bid_data.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.bid_data.buyer_id = str[start:end]
      start = end
      end += 8
      (self.bid_data.cost_distance,) = _struct_q.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self.response_info
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.bid_data.header.seq, _x.bid_data.header.stamp.secs, _x.bid_data.header.stamp.nsecs))
      _x = self.bid_data.header.frame_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.bid_data.buyer_id
      length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_q.pack(self.bid_data.cost_distance))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      if self.bid_data is None:
        self.bid_data = auction_msgs.msg.Bid()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.response_info = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.bid_data.header.seq, _x.bid_data.header.stamp.secs, _x.bid_data.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.bid_data.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.bid_data.buyer_id = str[start:end]
      start = end
      end += 8
      (self.bid_data.cost_distance,) = _struct_q.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_q = struct.Struct("<q")
_struct_3I = struct.Struct("<3I")
class AuctionService(roslib.message.ServiceDefinition):
  _type          = 'auction_srvs/AuctionService'
  _md5sum = 'd6b81557d076b0cba63ad79512801bd6'
  _request_class  = AuctionServiceRequest
  _response_class = AuctionServiceResponse
