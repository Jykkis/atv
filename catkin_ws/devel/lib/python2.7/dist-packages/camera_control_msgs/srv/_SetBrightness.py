# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from camera_control_msgs/SetBrightnessRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetBrightnessRequest(genpy.Message):
  _md5sum = "1f8cc426d8d4e41959f6306162a714c3"
  _type = "camera_control_msgs/SetBrightnessRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

int32 target_brightness








bool brightness_continuous







bool exposure_auto
bool gain_auto

"""
  __slots__ = ['target_brightness','brightness_continuous','exposure_auto','gain_auto']
  _slot_types = ['int32','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       target_brightness,brightness_continuous,exposure_auto,gain_auto

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetBrightnessRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.target_brightness is None:
        self.target_brightness = 0
      if self.brightness_continuous is None:
        self.brightness_continuous = False
      if self.exposure_auto is None:
        self.exposure_auto = False
      if self.gain_auto is None:
        self.gain_auto = False
    else:
      self.target_brightness = 0
      self.brightness_continuous = False
      self.exposure_auto = False
      self.gain_auto = False

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
      buff.write(_struct_i3B.pack(_x.target_brightness, _x.brightness_continuous, _x.exposure_auto, _x.gain_auto))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 7
      (_x.target_brightness, _x.brightness_continuous, _x.exposure_auto, _x.gain_auto,) = _struct_i3B.unpack(str[start:end])
      self.brightness_continuous = bool(self.brightness_continuous)
      self.exposure_auto = bool(self.exposure_auto)
      self.gain_auto = bool(self.gain_auto)
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
      buff.write(_struct_i3B.pack(_x.target_brightness, _x.brightness_continuous, _x.exposure_auto, _x.gain_auto))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 7
      (_x.target_brightness, _x.brightness_continuous, _x.exposure_auto, _x.gain_auto,) = _struct_i3B.unpack(str[start:end])
      self.brightness_continuous = bool(self.brightness_continuous)
      self.exposure_auto = bool(self.exposure_auto)
      self.gain_auto = bool(self.gain_auto)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i3B = struct.Struct("<i3B")
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from camera_control_msgs/SetBrightnessResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SetBrightnessResponse(genpy.Message):
  _md5sum = "62110aff39d46cf6a4ab77f09896582b"
  _type = "camera_control_msgs/SetBrightnessResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

int32 reached_brightness
float32 reached_exposure_time
float32 reached_gain_value

bool success

"""
  __slots__ = ['reached_brightness','reached_exposure_time','reached_gain_value','success']
  _slot_types = ['int32','float32','float32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       reached_brightness,reached_exposure_time,reached_gain_value,success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SetBrightnessResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.reached_brightness is None:
        self.reached_brightness = 0
      if self.reached_exposure_time is None:
        self.reached_exposure_time = 0.
      if self.reached_gain_value is None:
        self.reached_gain_value = 0.
      if self.success is None:
        self.success = False
    else:
      self.reached_brightness = 0
      self.reached_exposure_time = 0.
      self.reached_gain_value = 0.
      self.success = False

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
      buff.write(_struct_i2fB.pack(_x.reached_brightness, _x.reached_exposure_time, _x.reached_gain_value, _x.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.reached_brightness, _x.reached_exposure_time, _x.reached_gain_value, _x.success,) = _struct_i2fB.unpack(str[start:end])
      self.success = bool(self.success)
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
      buff.write(_struct_i2fB.pack(_x.reached_brightness, _x.reached_exposure_time, _x.reached_gain_value, _x.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 13
      (_x.reached_brightness, _x.reached_exposure_time, _x.reached_gain_value, _x.success,) = _struct_i2fB.unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i2fB = struct.Struct("<i2fB")
class SetBrightness(object):
  _type          = 'camera_control_msgs/SetBrightness'
  _md5sum = '36481c45e92096457660dc69b68eb6b1'
  _request_class  = SetBrightnessRequest
  _response_class = SetBrightnessResponse