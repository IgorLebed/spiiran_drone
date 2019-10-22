// Auto-generated. Do not edit!

// (in-package core_api.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let mavros_msgs = _finder('mavros_msgs');

//-----------------------------------------------------------

class WaypointGetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointGetRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointGetRequest
    let len;
    let data = new WaypointGetRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/WaypointGetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointGetRequest(null);
    return resolved;
    }
};

class WaypointGetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.wp_received = null;
      this.waypoints = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('wp_received')) {
        this.wp_received = initObj.wp_received
      }
      else {
        this.wp_received = 0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
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
    // Serializes a message object of type WaypointGetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [wp_received]
    bufferOffset = _serializer.uint32(obj.wp_received, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = mavros_msgs.msg.Waypoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointGetResponse
    let len;
    let data = new WaypointGetResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wp_received]
    data.wp_received = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = mavros_msgs.msg.Waypoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 45 * object.waypoints.length;
    length += object.message.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/WaypointGetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b38735166bb040ca6a9bf63e5c480555';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint32 wp_received
    mavros_msgs/Waypoint[] waypoints
    string message
    
    
    ================================================================================
    MSG: mavros_msgs/Waypoint
    # Waypoint.msg
    #
    # ROS representation of MAVLink MISSION_ITEM
    # See mavlink documentation
    
    
    
    # see enum MAV_FRAME
    uint8 frame
    uint8 FRAME_GLOBAL = 0
    uint8 FRAME_LOCAL_NED = 1
    uint8 FRAME_MISSION = 2
    uint8 FRAME_GLOBAL_REL_ALT = 3
    uint8 FRAME_LOCAL_ENU = 4
    
    # see enum MAV_CMD and CommandCode.msg
    uint16 command
    
    bool is_current
    bool autocontinue
    # meaning of this params described in enum MAV_CMD
    float32 param1
    float32 param2
    float32 param3
    float32 param4
    float64 x_lat
    float64 y_long
    float64 z_alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointGetResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.wp_received !== undefined) {
      resolved.wp_received = msg.wp_received;
    }
    else {
      resolved.wp_received = 0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = mavros_msgs.msg.Waypoint.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
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
  Request: WaypointGetRequest,
  Response: WaypointGetResponse,
  md5sum() { return 'b38735166bb040ca6a9bf63e5c480555'; },
  datatype() { return 'core_api/WaypointGet'; }
};
