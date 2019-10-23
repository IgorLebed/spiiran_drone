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

let ParamInfo = require('../msg/ParamInfo.js');

//-----------------------------------------------------------

class ParamGetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_id = null;
    }
    else {
      if (initObj.hasOwnProperty('param_id')) {
        this.param_id = initObj.param_id
      }
      else {
        this.param_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamGetRequest
    // Serialize message field [param_id]
    bufferOffset = _serializer.string(obj.param_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetRequest
    let len;
    let data = new ParamGetRequest(null);
    // Deserialize message field [param_id]
    data.param_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.param_id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ParamGetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0c8304d59f465712790120c3fc4b7d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string param_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamGetRequest(null);
    if (msg.param_id !== undefined) {
      resolved.param_id = msg.param_id;
    }
    else {
      resolved.param_id = ''
    }

    return resolved;
    }
};

class ParamGetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_info = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('param_info')) {
        this.param_info = initObj.param_info
      }
      else {
        this.param_info = new ParamInfo();
      }
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
    // Serializes a message object of type ParamGetResponse
    // Serialize message field [param_info]
    bufferOffset = ParamInfo.serialize(obj.param_info, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetResponse
    let len;
    let data = new ParamGetResponse(null);
    // Deserialize message field [param_info]
    data.param_info = ParamInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ParamInfo.getMessageSize(object.param_info);
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ParamGetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbd6d35ff58e7e1c082ccd13944710ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    core_api/ParamInfo param_info
    bool success
    string message
    
    
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
    const resolved = new ParamGetResponse(null);
    if (msg.param_info !== undefined) {
      resolved.param_info = ParamInfo.Resolve(msg.param_info)
    }
    else {
      resolved.param_info = new ParamInfo()
    }

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
  Request: ParamGetRequest,
  Response: ParamGetResponse,
  md5sum() { return 'ee3a46669de239e9ddb25d063c5e6029'; },
  datatype() { return 'core_api/ParamGet'; }
};
