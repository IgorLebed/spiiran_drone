// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VisionPoseDelta {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_delta_us = null;
      this.angle_delta_roll = null;
      this.angle_delta_pitch = null;
      this.angle_delta_yaw = null;
      this.position_delta_x = null;
      this.position_delta_y = null;
      this.position_delta_z = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_delta_us')) {
        this.time_delta_us = initObj.time_delta_us
      }
      else {
        this.time_delta_us = 0;
      }
      if (initObj.hasOwnProperty('angle_delta_roll')) {
        this.angle_delta_roll = initObj.angle_delta_roll
      }
      else {
        this.angle_delta_roll = 0.0;
      }
      if (initObj.hasOwnProperty('angle_delta_pitch')) {
        this.angle_delta_pitch = initObj.angle_delta_pitch
      }
      else {
        this.angle_delta_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('angle_delta_yaw')) {
        this.angle_delta_yaw = initObj.angle_delta_yaw
      }
      else {
        this.angle_delta_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('position_delta_x')) {
        this.position_delta_x = initObj.position_delta_x
      }
      else {
        this.position_delta_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_delta_y')) {
        this.position_delta_y = initObj.position_delta_y
      }
      else {
        this.position_delta_y = 0.0;
      }
      if (initObj.hasOwnProperty('position_delta_z')) {
        this.position_delta_z = initObj.position_delta_z
      }
      else {
        this.position_delta_z = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionPoseDelta
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_delta_us]
    bufferOffset = _serializer.uint32(obj.time_delta_us, buffer, bufferOffset);
    // Serialize message field [angle_delta_roll]
    bufferOffset = _serializer.float32(obj.angle_delta_roll, buffer, bufferOffset);
    // Serialize message field [angle_delta_pitch]
    bufferOffset = _serializer.float32(obj.angle_delta_pitch, buffer, bufferOffset);
    // Serialize message field [angle_delta_yaw]
    bufferOffset = _serializer.float32(obj.angle_delta_yaw, buffer, bufferOffset);
    // Serialize message field [position_delta_x]
    bufferOffset = _serializer.float32(obj.position_delta_x, buffer, bufferOffset);
    // Serialize message field [position_delta_y]
    bufferOffset = _serializer.float32(obj.position_delta_y, buffer, bufferOffset);
    // Serialize message field [position_delta_z]
    bufferOffset = _serializer.float32(obj.position_delta_z, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.uint8(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionPoseDelta
    let len;
    let data = new VisionPoseDelta(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_delta_us]
    data.time_delta_us = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [angle_delta_roll]
    data.angle_delta_roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_delta_pitch]
    data.angle_delta_pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_delta_yaw]
    data.angle_delta_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_delta_x]
    data.position_delta_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_delta_y]
    data.position_delta_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_delta_z]
    data.position_delta_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/VisionPoseDelta';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19f289602e4e368ce290900eecb3f779';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # VISION_POSITION_DELTA message data
    
    std_msgs/Header header
    
    uint32 time_delta_us
    
    float32 angle_delta_roll
    float32 angle_delta_pitch
    float32 angle_delta_yaw
    float32 position_delta_x
    float32 position_delta_y
    float32 position_delta_z
    
    uint8 confidence
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionPoseDelta(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_delta_us !== undefined) {
      resolved.time_delta_us = msg.time_delta_us;
    }
    else {
      resolved.time_delta_us = 0
    }

    if (msg.angle_delta_roll !== undefined) {
      resolved.angle_delta_roll = msg.angle_delta_roll;
    }
    else {
      resolved.angle_delta_roll = 0.0
    }

    if (msg.angle_delta_pitch !== undefined) {
      resolved.angle_delta_pitch = msg.angle_delta_pitch;
    }
    else {
      resolved.angle_delta_pitch = 0.0
    }

    if (msg.angle_delta_yaw !== undefined) {
      resolved.angle_delta_yaw = msg.angle_delta_yaw;
    }
    else {
      resolved.angle_delta_yaw = 0.0
    }

    if (msg.position_delta_x !== undefined) {
      resolved.position_delta_x = msg.position_delta_x;
    }
    else {
      resolved.position_delta_x = 0.0
    }

    if (msg.position_delta_y !== undefined) {
      resolved.position_delta_y = msg.position_delta_y;
    }
    else {
      resolved.position_delta_y = 0.0
    }

    if (msg.position_delta_z !== undefined) {
      resolved.position_delta_z = msg.position_delta_z;
    }
    else {
      resolved.position_delta_z = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0
    }

    return resolved;
    }
};

module.exports = VisionPoseDelta;
