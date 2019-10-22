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


//-----------------------------------------------------------

class WaypointSetCurrentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wp_seq = null;
    }
    else {
      if (initObj.hasOwnProperty('wp_seq')) {
        this.wp_seq = initObj.wp_seq
      }
      else {
        this.wp_seq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointSetCurrentRequest
    // Serialize message field [wp_seq]
    bufferOffset = _serializer.uint16(obj.wp_seq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointSetCurrentRequest
    let len;
    let data = new WaypointSetCurrentRequest(null);
    // Deserialize message field [wp_seq]
    data.wp_seq = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/WaypointSetCurrentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9541369175e0776b0fef1c988db6840f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    uint16 wp_seq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointSetCurrentRequest(null);
    if (msg.wp_seq !== undefined) {
      resolved.wp_seq = msg.wp_seq;
    }
    else {
      resolved.wp_seq = 0
    }

    return resolved;
    }
};

class WaypointSetCurrentResponse {
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
    // Serializes a message object of type WaypointSetCurrentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointSetCurrentResponse
    let len;
    let data = new WaypointSetCurrentResponse(null);
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
    return 'core_api/WaypointSetCurrentResponse';
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
    const resolved = new WaypointSetCurrentResponse(null);
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
  Request: WaypointSetCurrentRequest,
  Response: WaypointSetCurrentResponse,
  md5sum() { return '655ff49a7862991ba96f0c159eea7e23'; },
  datatype() { return 'core_api/WaypointSetCurrent'; }
};
