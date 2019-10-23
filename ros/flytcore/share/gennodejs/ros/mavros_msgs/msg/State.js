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

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.connected = null;
      this.armed = null;
      this.guided = null;
      this.mode = null;
      this.mav_type = null;
      this.mav_autopilot = null;
      this.mav_sys_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('connected')) {
        this.connected = initObj.connected
      }
      else {
        this.connected = false;
      }
      if (initObj.hasOwnProperty('armed')) {
        this.armed = initObj.armed
      }
      else {
        this.armed = false;
      }
      if (initObj.hasOwnProperty('guided')) {
        this.guided = initObj.guided
      }
      else {
        this.guided = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('mav_type')) {
        this.mav_type = initObj.mav_type
      }
      else {
        this.mav_type = 0;
      }
      if (initObj.hasOwnProperty('mav_autopilot')) {
        this.mav_autopilot = initObj.mav_autopilot
      }
      else {
        this.mav_autopilot = 0;
      }
      if (initObj.hasOwnProperty('mav_sys_status')) {
        this.mav_sys_status = initObj.mav_sys_status
      }
      else {
        this.mav_sys_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [connected]
    bufferOffset = _serializer.bool(obj.connected, buffer, bufferOffset);
    // Serialize message field [armed]
    bufferOffset = _serializer.bool(obj.armed, buffer, bufferOffset);
    // Serialize message field [guided]
    bufferOffset = _serializer.bool(obj.guided, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [mav_type]
    bufferOffset = _serializer.uint8(obj.mav_type, buffer, bufferOffset);
    // Serialize message field [mav_autopilot]
    bufferOffset = _serializer.uint8(obj.mav_autopilot, buffer, bufferOffset);
    // Serialize message field [mav_sys_status]
    bufferOffset = _serializer.uint8(obj.mav_sys_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [connected]
    data.connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armed]
    data.armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [guided]
    data.guided = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mav_type]
    data.mav_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mav_autopilot]
    data.mav_autopilot = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mav_sys_status]
    data.mav_sys_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.mode.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3fa825e16d1350d54cd9b4e0f09a9f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Current autopilot state
    #
    # Known modes listed here:
    # http://wiki.ros.org/mavros/CustomModes
    
    std_msgs/Header header
    bool connected
    bool armed
    bool guided
    string mode
    uint8 mav_type
    uint8 mav_autopilot
    uint8 mav_sys_status
    
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
    const resolved = new State(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.connected !== undefined) {
      resolved.connected = msg.connected;
    }
    else {
      resolved.connected = false
    }

    if (msg.armed !== undefined) {
      resolved.armed = msg.armed;
    }
    else {
      resolved.armed = false
    }

    if (msg.guided !== undefined) {
      resolved.guided = msg.guided;
    }
    else {
      resolved.guided = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.mav_type !== undefined) {
      resolved.mav_type = msg.mav_type;
    }
    else {
      resolved.mav_type = 0
    }

    if (msg.mav_autopilot !== undefined) {
      resolved.mav_autopilot = msg.mav_autopilot;
    }
    else {
      resolved.mav_autopilot = 0
    }

    if (msg.mav_sys_status !== undefined) {
      resolved.mav_sys_status = msg.mav_sys_status;
    }
    else {
      resolved.mav_sys_status = 0
    }

    return resolved;
    }
};

module.exports = State;
