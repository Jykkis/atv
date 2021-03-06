# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gps_msgs/Rpv.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import gps_msgs.msg
import genpy
import std_msgs.msg

class Rpv(genpy.Message):
  _md5sum = "d0dd395e0a43da31b99eaff5928463a1"
  _type = "gps_msgs/Rpv"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """## This is the advanced output message for DRTK. It is used primarily for 
## debugging and contains much information that is of no use to the end user.
Header header
    uint32 seq
    time stamp
    string frame_id

# Assuming that the gps
string gps_id_from
string gps_id_to

# GPS Time of output (ms into week)
int64 gps_time

int8 status # Output status
            #  2 : High precision solution available
            #  1 : Low precision solution only (high precision is zero)
            #  0 : Insufficient observations
            # -1 : Time stamps of input data do not match
            # -2 : Already computed solution for time stamp on input data
            # -3 : No L1 range measurements on receiver 1
            # -4 : No L2 range measurements on receiver 1
            # -5 : No L1 range measurements on receiver 2
            # -6 : No L2 range measurements on receiver 2

# ratio resultant from the LAMBDA method
float64 ratio

# number of input observations common across all with no cycle slip and which 
# are continuous between timesteps
int32 input_obs

# numb of 
int32 non_fault_obs
# Number of fixed ambiguiity observations
int32 amb_obs


# Standard Positioning 
RpvData sp

# Low Precision
RpvData lp

# High Precision
RpvData hp

## base prn used for double differencing - floating ambiguities
int32 base_prn_float

## base prn used for double differencing - fixed integer ambiguities
int32 base_prn_fixed
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: gps_msgs/RpvData
XYZRpvData xyz
ENURpvData enu
float64 magnitude
float64 horizontal_magnitude
================================================================================
MSG: gps_msgs/XYZRpvData
float64 x
float64 y
float64 z
================================================================================
MSG: gps_msgs/ENURpvData
float64 e
float64 n
float64 u"""
  __slots__ = ['header','seq','stamp','frame_id','gps_id_from','gps_id_to','gps_time','status','ratio','input_obs','non_fault_obs','amb_obs','sp','lp','hp','base_prn_float','base_prn_fixed']
  _slot_types = ['std_msgs/Header','uint32','time','string','string','string','int64','int8','float64','int32','int32','int32','gps_msgs/RpvData','gps_msgs/RpvData','gps_msgs/RpvData','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,seq,stamp,frame_id,gps_id_from,gps_id_to,gps_time,status,ratio,input_obs,non_fault_obs,amb_obs,sp,lp,hp,base_prn_float,base_prn_fixed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Rpv, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.seq is None:
        self.seq = 0
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.frame_id is None:
        self.frame_id = ''
      if self.gps_id_from is None:
        self.gps_id_from = ''
      if self.gps_id_to is None:
        self.gps_id_to = ''
      if self.gps_time is None:
        self.gps_time = 0
      if self.status is None:
        self.status = 0
      if self.ratio is None:
        self.ratio = 0.
      if self.input_obs is None:
        self.input_obs = 0
      if self.non_fault_obs is None:
        self.non_fault_obs = 0
      if self.amb_obs is None:
        self.amb_obs = 0
      if self.sp is None:
        self.sp = gps_msgs.msg.RpvData()
      if self.lp is None:
        self.lp = gps_msgs.msg.RpvData()
      if self.hp is None:
        self.hp = gps_msgs.msg.RpvData()
      if self.base_prn_float is None:
        self.base_prn_float = 0
      if self.base_prn_fixed is None:
        self.base_prn_fixed = 0
    else:
      self.header = std_msgs.msg.Header()
      self.seq = 0
      self.stamp = genpy.Time()
      self.frame_id = ''
      self.gps_id_from = ''
      self.gps_id_to = ''
      self.gps_time = 0
      self.status = 0
      self.ratio = 0.
      self.input_obs = 0
      self.non_fault_obs = 0
      self.amb_obs = 0
      self.sp = gps_msgs.msg.RpvData()
      self.lp = gps_msgs.msg.RpvData()
      self.hp = gps_msgs.msg.RpvData()
      self.base_prn_float = 0
      self.base_prn_fixed = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.seq, _x.stamp.secs, _x.stamp.nsecs))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gps_id_from
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gps_id_to
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_qbd3i24d2i.pack(_x.gps_time, _x.status, _x.ratio, _x.input_obs, _x.non_fault_obs, _x.amb_obs, _x.sp.xyz.x, _x.sp.xyz.y, _x.sp.xyz.z, _x.sp.enu.e, _x.sp.enu.n, _x.sp.enu.u, _x.sp.magnitude, _x.sp.horizontal_magnitude, _x.lp.xyz.x, _x.lp.xyz.y, _x.lp.xyz.z, _x.lp.enu.e, _x.lp.enu.n, _x.lp.enu.u, _x.lp.magnitude, _x.lp.horizontal_magnitude, _x.hp.xyz.x, _x.hp.xyz.y, _x.hp.xyz.z, _x.hp.enu.e, _x.hp.enu.n, _x.hp.enu.u, _x.hp.magnitude, _x.hp.horizontal_magnitude, _x.base_prn_float, _x.base_prn_fixed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.sp is None:
        self.sp = gps_msgs.msg.RpvData()
      if self.lp is None:
        self.lp = gps_msgs.msg.RpvData()
      if self.hp is None:
        self.hp = gps_msgs.msg.RpvData()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.seq, _x.stamp.secs, _x.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8')
      else:
        self.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gps_id_from = str[start:end].decode('utf-8')
      else:
        self.gps_id_from = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gps_id_to = str[start:end].decode('utf-8')
      else:
        self.gps_id_to = str[start:end]
      _x = self
      start = end
      end += 229
      (_x.gps_time, _x.status, _x.ratio, _x.input_obs, _x.non_fault_obs, _x.amb_obs, _x.sp.xyz.x, _x.sp.xyz.y, _x.sp.xyz.z, _x.sp.enu.e, _x.sp.enu.n, _x.sp.enu.u, _x.sp.magnitude, _x.sp.horizontal_magnitude, _x.lp.xyz.x, _x.lp.xyz.y, _x.lp.xyz.z, _x.lp.enu.e, _x.lp.enu.n, _x.lp.enu.u, _x.lp.magnitude, _x.lp.horizontal_magnitude, _x.hp.xyz.x, _x.hp.xyz.y, _x.hp.xyz.z, _x.hp.enu.e, _x.hp.enu.n, _x.hp.enu.u, _x.hp.magnitude, _x.hp.horizontal_magnitude, _x.base_prn_float, _x.base_prn_fixed,) = _struct_qbd3i24d2i.unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.seq, _x.stamp.secs, _x.stamp.nsecs))
      _x = self.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gps_id_from
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.gps_id_to
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_qbd3i24d2i.pack(_x.gps_time, _x.status, _x.ratio, _x.input_obs, _x.non_fault_obs, _x.amb_obs, _x.sp.xyz.x, _x.sp.xyz.y, _x.sp.xyz.z, _x.sp.enu.e, _x.sp.enu.n, _x.sp.enu.u, _x.sp.magnitude, _x.sp.horizontal_magnitude, _x.lp.xyz.x, _x.lp.xyz.y, _x.lp.xyz.z, _x.lp.enu.e, _x.lp.enu.n, _x.lp.enu.u, _x.lp.magnitude, _x.lp.horizontal_magnitude, _x.hp.xyz.x, _x.hp.xyz.y, _x.hp.xyz.z, _x.hp.enu.e, _x.hp.enu.n, _x.hp.enu.u, _x.hp.magnitude, _x.hp.horizontal_magnitude, _x.base_prn_float, _x.base_prn_fixed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.sp is None:
        self.sp = gps_msgs.msg.RpvData()
      if self.lp is None:
        self.lp = gps_msgs.msg.RpvData()
      if self.hp is None:
        self.hp = gps_msgs.msg.RpvData()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.seq, _x.stamp.secs, _x.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.frame_id = str[start:end].decode('utf-8')
      else:
        self.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gps_id_from = str[start:end].decode('utf-8')
      else:
        self.gps_id_from = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gps_id_to = str[start:end].decode('utf-8')
      else:
        self.gps_id_to = str[start:end]
      _x = self
      start = end
      end += 229
      (_x.gps_time, _x.status, _x.ratio, _x.input_obs, _x.non_fault_obs, _x.amb_obs, _x.sp.xyz.x, _x.sp.xyz.y, _x.sp.xyz.z, _x.sp.enu.e, _x.sp.enu.n, _x.sp.enu.u, _x.sp.magnitude, _x.sp.horizontal_magnitude, _x.lp.xyz.x, _x.lp.xyz.y, _x.lp.xyz.z, _x.lp.enu.e, _x.lp.enu.n, _x.lp.enu.u, _x.lp.magnitude, _x.lp.horizontal_magnitude, _x.hp.xyz.x, _x.hp.xyz.y, _x.hp.xyz.z, _x.hp.enu.e, _x.hp.enu.n, _x.hp.enu.u, _x.hp.magnitude, _x.hp.horizontal_magnitude, _x.base_prn_float, _x.base_prn_fixed,) = _struct_qbd3i24d2i.unpack(str[start:end])
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_qbd3i24d2i = struct.Struct("<qbd3i24d2i")
