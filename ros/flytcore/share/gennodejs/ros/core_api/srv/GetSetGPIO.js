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

class GetSetGPIORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.mode = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = false;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSetGPIORequest
    // Serialize message field [pin]
    bufferOffset = _serializer.int8(obj.pin, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.bool(obj.mode, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSetGPIORequest
    let len;
    let data = new GetSetGPIORequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/GetSetGPIORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0f258c6b9f5dc557a675029da668d0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int8 pin
    bool mode
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSetGPIORequest(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = false
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

class GetSetGPIOResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
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
    // Serializes a message object of type GetSetGPIOResponse
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSetGPIOResponse
    let len;
    let data = new GetSetGPIOResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
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
    return 'core_api/GetSetGPIOResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e24ee4d355427180086fdf6fcd89b8dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool state
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSetGPIOResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
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
  Request: GetSetGPIORequest,
  Response: GetSetGPIOResponse,
  md5sum() { return '88ce3c80d9fdfb2b8176053d0296fd4a'; },
  datatype() { return 'core_api/GetSetGPIO'; }
};
