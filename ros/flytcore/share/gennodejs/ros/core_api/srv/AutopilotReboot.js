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

class AutopilotRebootRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reboot_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('reboot_mode')) {
        this.reboot_mode = initObj.reboot_mode
      }
      else {
        this.reboot_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutopilotRebootRequest
    // Serialize message field [reboot_mode]
    bufferOffset = _serializer.int8(obj.reboot_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutopilotRebootRequest
    let len;
    let data = new AutopilotRebootRequest(null);
    // Deserialize message field [reboot_mode]
    data.reboot_mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/AutopilotRebootRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9b34444b62826dd2bbc414b1ea8856f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 REBOOT=1
    int8 REBOOT_TO_SLEEP=3
    int8 REBOOT_FROM_SLEEP=4
    
    int8 reboot_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutopilotRebootRequest(null);
    if (msg.reboot_mode !== undefined) {
      resolved.reboot_mode = msg.reboot_mode;
    }
    else {
      resolved.reboot_mode = 0
    }

    return resolved;
    }
};

// Constants for message
AutopilotRebootRequest.Constants = {
  REBOOT: 1,
  REBOOT_TO_SLEEP: 3,
  REBOOT_FROM_SLEEP: 4,
}

class AutopilotRebootResponse {
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
    // Serializes a message object of type AutopilotRebootResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutopilotRebootResponse
    let len;
    let data = new AutopilotRebootResponse(null);
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
    return 'core_api/AutopilotRebootResponse';
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
    const resolved = new AutopilotRebootResponse(null);
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
  Request: AutopilotRebootRequest,
  Response: AutopilotRebootResponse,
  md5sum() { return 'fc3bd1e818efe2a00584996f3753a5c9'; },
  datatype() { return 'core_api/AutopilotReboot'; }
};
