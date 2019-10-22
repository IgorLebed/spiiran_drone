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

class BrightPiLEDRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.state = null;
      this.gain = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
      if (initObj.hasOwnProperty('gain')) {
        this.gain = initObj.gain
      }
      else {
        this.gain = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrightPiLEDRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    // Serialize message field [gain]
    bufferOffset = _serializer.uint8(obj.gain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrightPiLEDRequest
    let len;
    let data = new BrightPiLEDRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gain]
    data.gain = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/BrightPiLEDRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e0a95d7494fe766e60089dcefe916b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    uint8 MODE_GET_LED_STATUS = 1
    uint8 MODE_SET_LED_STATUS = 2
    uint8 MODE_SET_LED_GAIN = 3
    
    uint8 mode
    bool state
    uint8 gain
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrightPiLEDRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    if (msg.gain !== undefined) {
      resolved.gain = msg.gain;
    }
    else {
      resolved.gain = 0
    }

    return resolved;
    }
};

// Constants for message
BrightPiLEDRequest.Constants = {
  MODE_GET_LED_STATUS: 1,
  MODE_SET_LED_STATUS: 2,
  MODE_SET_LED_GAIN: 3,
}

class BrightPiLEDResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.state = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
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
    // Serializes a message object of type BrightPiLEDResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrightPiLEDResponse
    let len;
    let data = new BrightPiLEDResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
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
    return 'core_api/BrightPiLEDResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'afc858357848bb882003e65328c8a3ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    bool state
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrightPiLEDResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
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
  Request: BrightPiLEDRequest,
  Response: BrightPiLEDResponse,
  md5sum() { return '17e462bdcd84d82b4992ac5262b3fcf8'; },
  datatype() { return 'core_api/BrightPiLED'; }
};
