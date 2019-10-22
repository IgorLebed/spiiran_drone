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

class ParamGetGlobalNamespaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamGetGlobalNamespaceRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetGlobalNamespaceRequest
    let len;
    let data = new ParamGetGlobalNamespaceRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ParamGetGlobalNamespaceRequest';
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
    const resolved = new ParamGetGlobalNamespaceRequest(null);
    return resolved;
    }
};

class ParamGetGlobalNamespaceResponse {
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
    // Serializes a message object of type ParamGetGlobalNamespaceResponse
    // Serialize message field [param_info]
    bufferOffset = ParamInfo.serialize(obj.param_info, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetGlobalNamespaceResponse
    let len;
    let data = new ParamGetGlobalNamespaceResponse(null);
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
    return 'core_api/ParamGetGlobalNamespaceResponse';
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
    const resolved = new ParamGetGlobalNamespaceResponse(null);
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
  Request: ParamGetGlobalNamespaceRequest,
  Response: ParamGetGlobalNamespaceResponse,
  md5sum() { return 'dbd6d35ff58e7e1c082ccd13944710ab'; },
  datatype() { return 'core_api/ParamGetGlobalNamespace'; }
};
