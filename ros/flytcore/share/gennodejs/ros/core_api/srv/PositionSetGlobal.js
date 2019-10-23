// Auto-generated. Do not edit!

// (in-package core_api.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PositionSetGlobalRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.twist = null;
      this.lat_x = null;
      this.long_y = null;
      this.rel_alt_z = null;
      this.yaw = null;
      this.tolerance = null;
      this.async = null;
      this.yaw_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new geometry_msgs.msg.TwistStamped();
      }
      if (initObj.hasOwnProperty('lat_x')) {
        this.lat_x = initObj.lat_x
      }
      else {
        this.lat_x = 0.0;
      }
      if (initObj.hasOwnProperty('long_y')) {
        this.long_y = initObj.long_y
      }
      else {
        this.long_y = 0.0;
      }
      if (initObj.hasOwnProperty('rel_alt_z')) {
        this.rel_alt_z = initObj.rel_alt_z
      }
      else {
        this.rel_alt_z = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = 0.0;
      }
      if (initObj.hasOwnProperty('async')) {
        this.async = initObj.async
      }
      else {
        this.async = false;
      }
      if (initObj.hasOwnProperty('yaw_valid')) {
        this.yaw_valid = initObj.yaw_valid
      }
      else {
        this.yaw_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionSetGlobalRequest
    // Serialize message field [twist]
    bufferOffset = geometry_msgs.msg.TwistStamped.serialize(obj.twist, buffer, bufferOffset);
    // Serialize message field [lat_x]
    bufferOffset = _serializer.float32(obj.lat_x, buffer, bufferOffset);
    // Serialize message field [long_y]
    bufferOffset = _serializer.float32(obj.long_y, buffer, bufferOffset);
    // Serialize message field [rel_alt_z]
    bufferOffset = _serializer.float32(obj.rel_alt_z, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [tolerance]
    bufferOffset = _serializer.float32(obj.tolerance, buffer, bufferOffset);
    // Serialize message field [async]
    bufferOffset = _serializer.bool(obj.async, buffer, bufferOffset);
    // Serialize message field [yaw_valid]
    bufferOffset = _serializer.bool(obj.yaw_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionSetGlobalRequest
    let len;
    let data = new PositionSetGlobalRequest(null);
    // Deserialize message field [twist]
    data.twist = geometry_msgs.msg.TwistStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat_x]
    data.lat_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [long_y]
    data.long_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rel_alt_z]
    data.rel_alt_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tolerance]
    data.tolerance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [async]
    data.async = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [yaw_valid]
    data.yaw_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TwistStamped.getMessageSize(object.twist);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/PositionSetGlobalRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16275473bd2aa16fd2f714ae721eb87d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    geometry_msgs/TwistStamped twist
    float32 lat_x
    float32 long_y
    float32 rel_alt_z
    float32 yaw
    float32 tolerance
    bool async
    bool yaw_valid
    
    ================================================================================
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new PositionSetGlobalRequest(null);
    if (msg.twist !== undefined) {
      resolved.twist = geometry_msgs.msg.TwistStamped.Resolve(msg.twist)
    }
    else {
      resolved.twist = new geometry_msgs.msg.TwistStamped()
    }

    if (msg.lat_x !== undefined) {
      resolved.lat_x = msg.lat_x;
    }
    else {
      resolved.lat_x = 0.0
    }

    if (msg.long_y !== undefined) {
      resolved.long_y = msg.long_y;
    }
    else {
      resolved.long_y = 0.0
    }

    if (msg.rel_alt_z !== undefined) {
      resolved.rel_alt_z = msg.rel_alt_z;
    }
    else {
      resolved.rel_alt_z = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = 0.0
    }

    if (msg.async !== undefined) {
      resolved.async = msg.async;
    }
    else {
      resolved.async = false
    }

    if (msg.yaw_valid !== undefined) {
      resolved.yaw_valid = msg.yaw_valid;
    }
    else {
      resolved.yaw_valid = false
    }

    return resolved;
    }
};

class PositionSetGlobalResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionSetGlobalResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionSetGlobalResponse
    let len;
    let data = new PositionSetGlobalResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/PositionSetGlobalResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionSetGlobalResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PositionSetGlobalRequest,
  Response: PositionSetGlobalResponse,
  md5sum() { return '6578c26fcd60d8ecd591fdca570571f8'; },
  datatype() { return 'core_api/PositionSetGlobal'; }
};
