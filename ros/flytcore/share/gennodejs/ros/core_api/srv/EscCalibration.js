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

class EscCalibrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pwm_min = null;
      this.pwm_max = null;
      this.num_of_actuators = null;
      this.calibration_state = null;
    }
    else {
      if (initObj.hasOwnProperty('pwm_min')) {
        this.pwm_min = initObj.pwm_min
      }
      else {
        this.pwm_min = 0.0;
      }
      if (initObj.hasOwnProperty('pwm_max')) {
        this.pwm_max = initObj.pwm_max
      }
      else {
        this.pwm_max = 0.0;
      }
      if (initObj.hasOwnProperty('num_of_actuators')) {
        this.num_of_actuators = initObj.num_of_actuators
      }
      else {
        this.num_of_actuators = 0;
      }
      if (initObj.hasOwnProperty('calibration_state')) {
        this.calibration_state = initObj.calibration_state
      }
      else {
        this.calibration_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EscCalibrationRequest
    // Serialize message field [pwm_min]
    bufferOffset = _serializer.float32(obj.pwm_min, buffer, bufferOffset);
    // Serialize message field [pwm_max]
    bufferOffset = _serializer.float32(obj.pwm_max, buffer, bufferOffset);
    // Serialize message field [num_of_actuators]
    bufferOffset = _serializer.int8(obj.num_of_actuators, buffer, bufferOffset);
    // Serialize message field [calibration_state]
    bufferOffset = _serializer.int8(obj.calibration_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EscCalibrationRequest
    let len;
    let data = new EscCalibrationRequest(null);
    // Deserialize message field [pwm_min]
    data.pwm_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pwm_max]
    data.pwm_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_of_actuators]
    data.num_of_actuators = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [calibration_state]
    data.calibration_state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/EscCalibrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80dcc1436352653d31aebe0d837c992f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 CALIBRATION_STATE_SET_PWM_MAX = 1
    int8 CALIBRATION_STATE_SET_PWM_MIN = 2
    int8 CALIBRATION_STATE_CANCEL = 3
    float32 pwm_min
    float32 pwm_max
    int8 num_of_actuators
    int8 calibration_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EscCalibrationRequest(null);
    if (msg.pwm_min !== undefined) {
      resolved.pwm_min = msg.pwm_min;
    }
    else {
      resolved.pwm_min = 0.0
    }

    if (msg.pwm_max !== undefined) {
      resolved.pwm_max = msg.pwm_max;
    }
    else {
      resolved.pwm_max = 0.0
    }

    if (msg.num_of_actuators !== undefined) {
      resolved.num_of_actuators = msg.num_of_actuators;
    }
    else {
      resolved.num_of_actuators = 0
    }

    if (msg.calibration_state !== undefined) {
      resolved.calibration_state = msg.calibration_state;
    }
    else {
      resolved.calibration_state = 0
    }

    return resolved;
    }
};

// Constants for message
EscCalibrationRequest.Constants = {
  CALIBRATION_STATE_SET_PWM_MAX: 1,
  CALIBRATION_STATE_SET_PWM_MIN: 2,
  CALIBRATION_STATE_CANCEL: 3,
}

class EscCalibrationResponse {
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
    // Serializes a message object of type EscCalibrationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EscCalibrationResponse
    let len;
    let data = new EscCalibrationResponse(null);
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
    return 'core_api/EscCalibrationResponse';
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
    const resolved = new EscCalibrationResponse(null);
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
  Request: EscCalibrationRequest,
  Response: EscCalibrationResponse,
  md5sum() { return '250665cf11b7e061cef652c07d5dc46a'; },
  datatype() { return 'core_api/EscCalibration'; }
};
