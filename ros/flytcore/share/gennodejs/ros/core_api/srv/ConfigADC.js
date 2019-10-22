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

class ConfigADCRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.channel = null;
      this.stream_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('stream_rate')) {
        this.stream_rate = initObj.stream_rate
      }
      else {
        this.stream_rate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigADCRequest
    // Serialize message field [channel]
    bufferOffset = _serializer.int32(obj.channel, buffer, bufferOffset);
    // Serialize message field [stream_rate]
    bufferOffset = _serializer.int32(obj.stream_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigADCRequest
    let len;
    let data = new ConfigADCRequest(null);
    // Deserialize message field [channel]
    data.channel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [stream_rate]
    data.stream_rate = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ConfigADCRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a20ab0578cc33603b7fe3ca6e67db8a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    int32 channel
    int32 stream_rate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigADCRequest(null);
    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.stream_rate !== undefined) {
      resolved.stream_rate = msg.stream_rate;
    }
    else {
      resolved.stream_rate = 0
    }

    return resolved;
    }
};

class ConfigADCResponse {
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
    // Serializes a message object of type ConfigADCResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigADCResponse
    let len;
    let data = new ConfigADCResponse(null);
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
    return 'core_api/ConfigADCResponse';
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
    const resolved = new ConfigADCResponse(null);
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
  Request: ConfigADCRequest,
  Response: ConfigADCResponse,
  md5sum() { return 'f5076d4723a127313ec1786e0634dbd2'; },
  datatype() { return 'core_api/ConfigADC'; }
};
