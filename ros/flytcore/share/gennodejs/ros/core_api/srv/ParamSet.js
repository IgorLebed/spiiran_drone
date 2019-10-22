// Auto-generated. Do not edit!

// (in-package core_api.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ParamInfo = require('../msg/ParamInfo.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ParamSetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_info = null;
    }
    else {
      if (initObj.hasOwnProperty('param_info')) {
        this.param_info = initObj.param_info
      }
      else {
        this.param_info = new ParamInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamSetRequest
    // Serialize message field [param_info]
    bufferOffset = ParamInfo.serialize(obj.param_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetRequest
    let len;
    let data = new ParamSetRequest(null);
    // Deserialize message field [param_info]
    data.param_info = ParamInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ParamInfo.getMessageSize(object.param_info);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ParamSetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7acc4bdbf04f7ea0fa46a53d6ea1c25d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    core_api/ParamInfo param_info
    
    ================================================================================
    MSG: core_api/ParamInfo
    string param_id
    string param_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamSetRequest(null);
    if (msg.param_info !== undefined) {
      resolved.param_info = ParamInfo.Resolve(msg.param_info)
    }
    else {
      resolved.param_info = new ParamInfo()
    }

    return resolved;
    }
};

class ParamSetResponse {
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
    // Serializes a message object of type ParamSetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamSetResponse
    let len;
    let data = new ParamSetResponse(null);
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
    return 'core_api/ParamSetResponse';
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
    const resolved = new ParamSetResponse(null);
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
  Request: ParamSetRequest,
  Response: ParamSetResponse,
  md5sum() { return '3139407759ce2a5b88c5244e2a57e352'; },
  datatype() { return 'core_api/ParamSet'; }
};
