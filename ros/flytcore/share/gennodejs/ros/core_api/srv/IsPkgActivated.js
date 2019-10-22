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

class IsPkgActivatedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pkg_name = null;
    }
    else {
      if (initObj.hasOwnProperty('pkg_name')) {
        this.pkg_name = initObj.pkg_name
      }
      else {
        this.pkg_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IsPkgActivatedRequest
    // Serialize message field [pkg_name]
    bufferOffset = _serializer.string(obj.pkg_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsPkgActivatedRequest
    let len;
    let data = new IsPkgActivatedRequest(null);
    // Deserialize message field [pkg_name]
    data.pkg_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pkg_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/IsPkgActivatedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a68d708fa4a6c5217b5cf600a63727b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string pkg_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsPkgActivatedRequest(null);
    if (msg.pkg_name !== undefined) {
      resolved.pkg_name = msg.pkg_name;
    }
    else {
      resolved.pkg_name = ''
    }

    return resolved;
    }
};

class IsPkgActivatedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.activated = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('activated')) {
        this.activated = initObj.activated
      }
      else {
        this.activated = false;
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
    // Serializes a message object of type IsPkgActivatedResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [activated]
    bufferOffset = _serializer.bool(obj.activated, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IsPkgActivatedResponse
    let len;
    let data = new IsPkgActivatedResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [activated]
    data.activated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/IsPkgActivatedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76e7996eebd0470a3bd5c864dba51733';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    bool activated
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IsPkgActivatedResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.activated !== undefined) {
      resolved.activated = msg.activated;
    }
    else {
      resolved.activated = false
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
  Request: IsPkgActivatedRequest,
  Response: IsPkgActivatedResponse,
  md5sum() { return '840df30bd3d88303e2027160e9982454'; },
  datatype() { return 'core_api/IsPkgActivated'; }
};
