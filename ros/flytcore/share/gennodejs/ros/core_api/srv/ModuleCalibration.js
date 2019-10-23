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

class ModuleCalibrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.module_calibrate = null;
    }
    else {
      if (initObj.hasOwnProperty('module_calibrate')) {
        this.module_calibrate = initObj.module_calibrate
      }
      else {
        this.module_calibrate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleCalibrationRequest
    // Serialize message field [module_calibrate]
    bufferOffset = _serializer.int8(obj.module_calibrate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleCalibrationRequest
    let len;
    let data = new ModuleCalibrationRequest(null);
    // Deserialize message field [module_calibrate]
    data.module_calibrate = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/ModuleCalibrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57b406498875fd11aa66dfdce74c7a0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STOP = 0
    uint8 ACCELEROMETER = 1
    uint8 GYROSCOPE = 2
    uint8 MAGNETOMETER = 3
    uint8 RC = 4
    uint8 RC_TRIM = 5
    uint8 RC_STOP = 6
    uint8 LEVEL = 7
    uint8 AIRSPEED = 8
    
    int8 module_calibrate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleCalibrationRequest(null);
    if (msg.module_calibrate !== undefined) {
      resolved.module_calibrate = msg.module_calibrate;
    }
    else {
      resolved.module_calibrate = 0
    }

    return resolved;
    }
};

// Constants for message
ModuleCalibrationRequest.Constants = {
  STOP: 0,
  ACCELEROMETER: 1,
  GYROSCOPE: 2,
  MAGNETOMETER: 3,
  RC: 4,
  RC_TRIM: 5,
  RC_STOP: 6,
  LEVEL: 7,
  AIRSPEED: 8,
}

class ModuleCalibrationResponse {
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
    // Serializes a message object of type ModuleCalibrationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleCalibrationResponse
    let len;
    let data = new ModuleCalibrationResponse(null);
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
    return 'core_api/ModuleCalibrationResponse';
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
    const resolved = new ModuleCalibrationResponse(null);
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
  Request: ModuleCalibrationRequest,
  Response: ModuleCalibrationResponse,
  md5sum() { return '9928bcb1099b5b3fb4ae123e92f7d55b'; },
  datatype() { return 'core_api/ModuleCalibration'; }
};
