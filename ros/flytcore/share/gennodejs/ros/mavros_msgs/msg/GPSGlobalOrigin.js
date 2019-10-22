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

class GPSGlobalOrigin {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x_lat = null;
      this.y_long = null;
      this.z_alt = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x_lat')) {
        this.x_lat = initObj.x_lat
      }
      else {
        this.x_lat = 0.0;
      }
      if (initObj.hasOwnProperty('y_long')) {
        this.y_long = initObj.y_long
      }
      else {
        this.y_long = 0.0;
      }
      if (initObj.hasOwnProperty('z_alt')) {
        this.z_alt = initObj.z_alt
      }
      else {
        this.z_alt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSGlobalOrigin
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x_lat]
    bufferOffset = _serializer.float32(obj.x_lat, buffer, bufferOffset);
    // Serialize message field [y_long]
    bufferOffset = _serializer.float32(obj.y_long, buffer, bufferOffset);
    // Serialize message field [z_alt]
    bufferOffset = _serializer.float32(obj.z_alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSGlobalOrigin
    let len;
    let data = new GPSGlobalOrigin(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_lat]
    data.x_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_long]
    data.y_long = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z_alt]
    data.z_alt = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/GPSGlobalOrigin';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97beaea8077a69778b64e4ec4e002893';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GPS_GLOBAL_ORIGIN message data
    
    Header header
    
    float32 x_lat
    float32 y_long
    float32 z_alt
    
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
    const resolved = new GPSGlobalOrigin(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x_lat !== undefined) {
      resolved.x_lat = msg.x_lat;
    }
    else {
      resolved.x_lat = 0.0
    }

    if (msg.y_long !== undefined) {
      resolved.y_long = msg.y_long;
    }
    else {
      resolved.y_long = 0.0
    }

    if (msg.z_alt !== undefined) {
      resolved.z_alt = msg.z_alt;
    }
    else {
      resolved.z_alt = 0.0
    }

    return resolved;
    }
};

module.exports = GPSGlobalOrigin;
