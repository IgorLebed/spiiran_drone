// Auto-generated. Do not edit!

// (in-package vision_apps.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartLandingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.landing_threshold = null;
      this.async = null;
      this.hover = null;
    }
    else {
      if (initObj.hasOwnProperty('landing_threshold')) {
        this.landing_threshold = initObj.landing_threshold
      }
      else {
        this.landing_threshold = 0.0;
      }
      if (initObj.hasOwnProperty('async')) {
        this.async = initObj.async
      }
      else {
        this.async = false;
      }
      if (initObj.hasOwnProperty('hover')) {
        this.hover = initObj.hover
      }
      else {
        this.hover = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartLandingRequest
    // Serialize message field [landing_threshold]
    bufferOffset = _serializer.float32(obj.landing_threshold, buffer, bufferOffset);
    // Serialize message field [async]
    bufferOffset = _serializer.bool(obj.async, buffer, bufferOffset);
    // Serialize message field [hover]
    bufferOffset = _serializer.bool(obj.hover, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartLandingRequest
    let len;
    let data = new StartLandingRequest(null);
    // Deserialize message field [landing_threshold]
    data.landing_threshold = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [async]
    data.async = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hover]
    data.hover = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/StartLandingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11c5cada868a7bb6c28781eedc327979';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 landing_threshold
    bool async
    bool hover
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartLandingRequest(null);
    if (msg.landing_threshold !== undefined) {
      resolved.landing_threshold = msg.landing_threshold;
    }
    else {
      resolved.landing_threshold = 0.0
    }

    if (msg.async !== undefined) {
      resolved.async = msg.async;
    }
    else {
      resolved.async = false
    }

    if (msg.hover !== undefined) {
      resolved.hover = msg.hover;
    }
    else {
      resolved.hover = false
    }

    return resolved;
    }
};

class StartLandingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
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
    // Serializes a message object of type StartLandingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartLandingResponse
    let len;
    let data = new StartLandingResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
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
    return 'vision_apps/StartLandingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ad76664b0717ddbf6142456d7398288';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartLandingResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
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
  Request: StartLandingRequest,
  Response: StartLandingResponse,
  md5sum() { return 'f7ef1928f21c1b26b6ad552eeaf0c4ac'; },
  datatype() { return 'vision_apps/StartLanding'; }
};
