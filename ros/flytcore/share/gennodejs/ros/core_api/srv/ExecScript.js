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

class ExecScriptRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.app_name = null;
      this.arguments = null;
    }
    else {
      if (initObj.hasOwnProperty('app_name')) {
        this.app_name = initObj.app_name
      }
      else {
        this.app_name = '';
      }
      if (initObj.hasOwnProperty('arguments')) {
        this.arguments = initObj.arguments
      }
      else {
        this.arguments = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecScriptRequest
    // Serialize message field [app_name]
    bufferOffset = _serializer.string(obj.app_name, buffer, bufferOffset);
    // Serialize message field [arguments]
    bufferOffset = _serializer.string(obj.arguments, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecScriptRequest
    let len;
    let data = new ExecScriptRequest(null);
    // Deserialize message field [app_name]
    data.app_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arguments]
    data.arguments = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.app_name.length;
    length += object.arguments.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ExecScriptRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f3be09431c50e601ac7045f4cd27075';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    string app_name
    string arguments
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExecScriptRequest(null);
    if (msg.app_name !== undefined) {
      resolved.app_name = msg.app_name;
    }
    else {
      resolved.app_name = ''
    }

    if (msg.arguments !== undefined) {
      resolved.arguments = msg.arguments;
    }
    else {
      resolved.arguments = ''
    }

    return resolved;
    }
};

class ExecScriptResponse {
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
    // Serializes a message object of type ExecScriptResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecScriptResponse
    let len;
    let data = new ExecScriptResponse(null);
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
    return 'core_api/ExecScriptResponse';
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
    const resolved = new ExecScriptResponse(null);
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
  Request: ExecScriptRequest,
  Response: ExecScriptResponse,
  md5sum() { return 'dc0ad6b67076c8affab5d27840600a3e'; },
  datatype() { return 'core_api/ExecScript'; }
};
