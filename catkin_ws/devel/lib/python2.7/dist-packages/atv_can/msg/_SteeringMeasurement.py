# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from atv_can/SteeringMeasurement.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class SteeringMeasurement(genpy.Message):
  _md5sum = "1ea82a2a633f2b7c6b3360bca5c4c3ea"
  _type = "atv_can/SteeringMeasurement"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint32 encoder_position
time time_received
"""
  __slots__ = ['encoder_position','time_received']
  _slot_types = ['uint32','time']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       encoder_position,time_received

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SteeringMeasurement, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.encoder_position is None:
        self.encoder_position = 0
      if self.time_received is None:
        self.time_received = genpy.Time()
    else:
      self.encoder_position = 0
      self.time_received = genpy.Time()

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
      buff.write(_struct_3I.pack(_x.encoder_position, _x.time_received.secs, _x.time_received.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.time_received is None:
        self.time_received = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.encoder_position, _x.time_received.secs, _x.time_received.nsecs,) = _struct_3I.unpack(str[start:end])
      self.time_received.canon()
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
      buff.write(_struct_3I.pack(_x.encoder_position, _x.time_received.secs, _x.time_received.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.time_received is None:
        self.time_received = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.encoder_position, _x.time_received.secs, _x.time_received.nsecs,) = _struct_3I.unpack(str[start:end])
      self.time_received.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")