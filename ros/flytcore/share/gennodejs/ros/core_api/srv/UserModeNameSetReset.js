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

class UserModeNameSetResetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode_name = null;
    }
    else {
      if (initObj.hasOwnProperty('mode_name')) {
        this.mode_name = initObj.mode_name
      }
      else {
        this.mode_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UserModeNameSetResetRequest
    // Serialize message field [mode_name]
    bufferOffset = _serializer.string(obj.mode_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UserModeNameSetResetRequest
    let len;
    let data = new UserModeNameSetResetRequest(null);
    // Deserialize message field [mode_name]
    data.mode_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/UserModeNameSetResetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40835738ac5b8f2269a9bb8d3dafbf7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mode_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UserModeNameSetResetRequest(null);
    if (msg.mode_name !== undefined) {
      resolved.mode_name = msg.mode_name;
    }
    else {
      resolved.mode_name = ''
    }

    return resolved;
    }
};

class UserModeNameSetResetResponse {
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
    // Serializes a message object of type UserModeNameSetResetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UserModeNameSetResetResponse
    let len;
    let data = new UserModeNameSetResetResponse(null);
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
    return 'core_api/UserModeNameSetResetResponse';
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
    const resolved = new UserModeNameSetResetResponse(null);
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
  Request: UserModeNameSetResetRequest,
  Response: UserModeNameSetResetResponse,
  md5sum() { return 'c06586fa4c917507a885a22dde0aa9b1'; },
  datatype() { return 'core_api/UserModeNameSetReset'; }
};
