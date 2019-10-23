// Auto-generated. Do not edit!

// (in-package core_api.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ParamInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.param_id = null;
      this.param_value = null;
    }
    else {
      if (initObj.hasOwnProperty('param_id')) {
        this.param_id = initObj.param_id
      }
      else {
        this.param_id = '';
      }
      if (initObj.hasOwnProperty('param_value')) {
        this.param_value = initObj.param_value
      }
      else {
        this.param_value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParamInfo
    // Serialize message field [param_id]
    bufferOffset = _serializer.string(obj.param_id, buffer, bufferOffset);
    // Serialize message field [param_value]
    bufferOffset = _serializer.string(obj.param_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParamInfo
    let len;
    let data = new ParamInfo(null);
    // Deserialize message field [param_id]
    data.param_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [param_value]
    data.param_value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.param_id.length;
    length += object.param_value.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'core_api/ParamInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a944080ebad844ddaa75505407d5efa8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string param_id
    string param_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParamInfo(null);
    if (msg.param_id !== undefined) {
      resolved.param_id = msg.param_id;
    }
    else {
      resolved.param_id = ''
    }

    if (msg.param_value !== undefined) {
      resolved.param_value = msg.param_value;
    }
    else {
      resolved.param_value = ''
    }

    return resolved;
    }
};

module.exports = ParamInfo;
