// Auto-generated. Do not edit!

// (in-package jevois.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArTag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.marker_id = null;
      this.serstyle = null;
      this.tagtype = null;
      this.quat = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.rot_x = null;
      this.rot_y = null;
      this.rot_z = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('marker_id')) {
        this.marker_id = initObj.marker_id
      }
      else {
        this.marker_id = 0;
      }
      if (initObj.hasOwnProperty('serstyle')) {
        this.serstyle = initObj.serstyle
      }
      else {
        this.serstyle = '';
      }
      if (initObj.hasOwnProperty('tagtype')) {
        this.tagtype = initObj.tagtype
      }
      else {
        this.tagtype = '';
      }
      if (initObj.hasOwnProperty('quat')) {
        this.quat = initObj.quat
      }
      else {
        this.quat = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('rot_x')) {
        this.rot_x = initObj.rot_x
      }
      else {
        this.rot_x = 0.0;
      }
      if (initObj.hasOwnProperty('rot_y')) {
        this.rot_y = initObj.rot_y
      }
      else {
        this.rot_y = 0.0;
      }
      if (initObj.hasOwnProperty('rot_z')) {
        this.rot_z = initObj.rot_z
      }
      else {
        this.rot_z = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArTag
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [marker_id]
    bufferOffset = _serializer.int16(obj.marker_id, buffer, bufferOffset);
    // Serialize message field [serstyle]
    bufferOffset = _serializer.string(obj.serstyle, buffer, bufferOffset);
    // Serialize message field [tagtype]
    bufferOffset = _serializer.string(obj.tagtype, buffer, bufferOffset);
    // Serialize message field [quat]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.quat, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [rot_x]
    bufferOffset = _serializer.float32(obj.rot_x, buffer, bufferOffset);
    // Serialize message field [rot_y]
    bufferOffset = _serializer.float32(obj.rot_y, buffer, bufferOffset);
    // Serialize message field [rot_z]
    bufferOffset = _serializer.float32(obj.rot_z, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArTag
    let len;
    let data = new ArTag(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [marker_id]
    data.marker_id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [serstyle]
    data.serstyle = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tagtype]
    data.tagtype = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [quat]
    data.quat = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rot_x]
    data.rot_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rot_y]
    data.rot_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rot_z]
    data.rot_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.serstyle.length;
    length += object.tagtype.length;
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jevois/ArTag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0ff331e9902aaedf65e8c451a744d9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Stores ARTag data
    
    Header header
    int16 marker_id
    string serstyle
    string tagtype
    geometry_msgs/Quaternion quat
    float32 x
    float32 y
    float32 z
    float32 rot_x
    float32 rot_y
    float32 rot_z
    float32 confidence
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArTag(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.marker_id !== undefined) {
      resolved.marker_id = msg.marker_id;
    }
    else {
      resolved.marker_id = 0
    }

    if (msg.serstyle !== undefined) {
      resolved.serstyle = msg.serstyle;
    }
    else {
      resolved.serstyle = ''
    }

    if (msg.tagtype !== undefined) {
      resolved.tagtype = msg.tagtype;
    }
    else {
      resolved.tagtype = ''
    }

    if (msg.quat !== undefined) {
      resolved.quat = geometry_msgs.msg.Quaternion.Resolve(msg.quat)
    }
    else {
      resolved.quat = new geometry_msgs.msg.Quaternion()
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.rot_x !== undefined) {
      resolved.rot_x = msg.rot_x;
    }
    else {
      resolved.rot_x = 0.0
    }

    if (msg.rot_y !== undefined) {
      resolved.rot_y = msg.rot_y;
    }
    else {
      resolved.rot_y = 0.0
    }

    if (msg.rot_z !== undefined) {
      resolved.rot_z = msg.rot_z;
    }
    else {
      resolved.rot_z = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = ArTag;
