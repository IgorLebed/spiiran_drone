// Auto-generated. Do not edit!

// (in-package navigation_util.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NavigationPosFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_error = null;
      this.yaw_error = null;
      this.sum_sq_error = null;
    }
    else {
      if (initObj.hasOwnProperty('position_error')) {
        this.position_error = initObj.position_error
      }
      else {
        this.position_error = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('yaw_error')) {
        this.yaw_error = initObj.yaw_error
      }
      else {
        this.yaw_error = 0.0;
      }
      if (initObj.hasOwnProperty('sum_sq_error')) {
        this.sum_sq_error = initObj.sum_sq_error
      }
      else {
        this.sum_sq_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationPosFeedback
    // Serialize message field [position_error]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position_error, buffer, bufferOffset);
    // Serialize message field [yaw_error]
    bufferOffset = _serializer.float32(obj.yaw_error, buffer, bufferOffset);
    // Serialize message field [sum_sq_error]
    bufferOffset = _serializer.float32(obj.sum_sq_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationPosFeedback
    let len;
    let data = new NavigationPosFeedback(null);
    // Deserialize message field [position_error]
    data.position_error = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw_error]
    data.yaw_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sum_sq_error]
    data.sum_sq_error = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navigation_util/NavigationPosFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73c4f1364353f8d8f4de503f3aaa2904';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    geometry_msgs/Point position_error
    float32 yaw_error
    #This corresponds to the termination criterion, tolerance
    float32 sum_sq_error
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationPosFeedback(null);
    if (msg.position_error !== undefined) {
      resolved.position_error = geometry_msgs.msg.Point.Resolve(msg.position_error)
    }
    else {
      resolved.position_error = new geometry_msgs.msg.Point()
    }

    if (msg.yaw_error !== undefined) {
      resolved.yaw_error = msg.yaw_error;
    }
    else {
      resolved.yaw_error = 0.0
    }

    if (msg.sum_sq_error !== undefined) {
      resolved.sum_sq_error = msg.sum_sq_error;
    }
    else {
      resolved.sum_sq_error = 0.0
    }

    return resolved;
    }
};

module.exports = NavigationPosFeedback;
