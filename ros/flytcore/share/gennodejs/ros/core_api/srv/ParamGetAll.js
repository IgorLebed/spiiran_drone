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

class ParamGetAllRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fresh_pull = null;
      this.get_only_ap = null;
    }
    else {
      if (initObj.hasOwnProperty('fresh_pull')) {
        this.fresh_pull = initObj.fresh_pull
      }
      else {
        this.fresh_pull = false;
      }
      if (initObj.hasOwnProperty('get_only_ap')) {
        this.get_only_ap = initObj.get_only_ap
      }
      else {
        this.get_only_ap = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamGetAllRequest
    // Serialize message field [fresh_pull]
    bufferOffset = _serializer.bool(obj.fresh_pull, buffer, bufferOffset);
    // Serialize message field [get_only_ap]
    bufferOffset = _serializer.bool(obj.get_only_ap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetAllRequest
    let len;
    let data = new ParamGetAllRequest(null);
    // Deserialize message field [fresh_pull]
    data.fresh_pull = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [get_only_ap]
    data.get_only_ap = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ParamGetAllRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66cfb2a1a45f445632953ef48c88b7a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool fresh_pull
    bool get_only_ap
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamGetAllRequest(null);
    if (msg.fresh_pull !== undefined) {
      resolved.fresh_pull = msg.fresh_pull;
    }
    else {
      resolved.fresh_pull = false
    }

    if (msg.get_only_ap !== undefined) {
      resolved.get_only_ap = msg.get_only_ap;
    }
    else {
      resolved.get_only_ap = false
    }

    return resolved;
    }
};

class ParamGetAllResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_list = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('param_list')) {
        this.param_list = initObj.param_list
      }
      else {
        this.param_list = [];
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
    // Serializes a message object of type ParamGetAllResponse
    // Serialize message field [param_list]
    // Serialize the length for message field [param_list]
    bufferOffset = _serializer.uint32(obj.param_list.length, buffer, bufferOffset);
    obj.param_list.forEach((val) => {
      bufferOffset = ParamInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamGetAllResponse
    let len;
    let data = new ParamGetAllResponse(null);
    // Deserialize message field [param_list]
    // Deserialize array length for message field [param_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.param_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.param_list[i] = ParamInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.param_list.forEach((val) => {
      length += ParamInfo.getMessageSize(val);
    });
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ParamGetAllResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1a7906c0b9f8da89c07256c75c29a07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    core_api/ParamInfo[] param_list
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
    const resolved = new ParamGetAllResponse(null);
    if (msg.param_list !== undefined) {
      resolved.param_list = new Array(msg.param_list.length);
      for (let i = 0; i < resolved.param_list.length; ++i) {
        resolved.param_list[i] = ParamInfo.Resolve(msg.param_list[i]);
      }
    }
    else {
      resolved.param_list = []
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
  Request: ParamGetAllRequest,
  Response: ParamGetAllResponse,
  md5sum() { return 'b71ead203534a0f9bf45c0f7dcff82b8'; },
  datatype() { return 'core_api/ParamGetAll'; }
};
