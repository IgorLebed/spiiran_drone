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

class ActuatorTestingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuator_id = null;
      this.time_s = null;
    }
    else {
      if (initObj.hasOwnProperty('actuator_id')) {
        this.actuator_id = initObj.actuator_id
      }
      else {
        this.actuator_id = 0;
      }
      if (initObj.hasOwnProperty('time_s')) {
        this.time_s = initObj.time_s
      }
      else {
        this.time_s = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorTestingRequest
    // Serialize message field [actuator_id]
    bufferOffset = _serializer.uint8(obj.actuator_id, buffer, bufferOffset);
    // Serialize message field [time_s]
    bufferOffset = _serializer.float32(obj.time_s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorTestingRequest
    let len;
    let data = new ActuatorTestingRequest(null);
    // Deserialize message field [actuator_id]
    data.actuator_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_s]
    data.time_s = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ActuatorTestingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c59cf021860f740acd550ade3646ebef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 actuator_id
    float32 time_s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActuatorTestingRequest(null);
    if (msg.actuator_id !== undefined) {
      resolved.actuator_id = msg.actuator_id;
    }
    else {
      resolved.actuator_id = 0
    }

    if (msg.time_s !== undefined) {
      resolved.time_s = msg.time_s;
    }
    else {
      resolved.time_s = 0.0
    }

    return resolved;
    }
};

class ActuatorTestingResponse {
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
    // Serializes a message object of type ActuatorTestingResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorTestingResponse
    let len;
    let data = new ActuatorTestingResponse(null);
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
    return 'core_api/ActuatorTestingResponse';
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
    const resolved = new ActuatorTestingResponse(null);
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
  Request: ActuatorTestingRequest,
  Response: ActuatorTestingResponse,
  md5sum() { return 'b11d01d67fd996b3e6a87d0afb45636c'; },
  datatype() { return 'core_api/ActuatorTesting'; }
};
