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

class GetMissionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMissionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMissionRequest
    let len;
    let data = new GetMissionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetMissionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMissionRequest(null);
    return resolved;
    }
};

class GetMissionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
      this.no_of_missionpoints = null;
      this.missionpoints = null;
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
      if (initObj.hasOwnProperty('no_of_missionpoints')) {
        this.no_of_missionpoints = initObj.no_of_missionpoints
      }
      else {
        this.no_of_missionpoints = 0;
      }
      if (initObj.hasOwnProperty('missionpoints')) {
        this.missionpoints = initObj.missionpoints
      }
      else {
        this.missionpoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMissionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [no_of_missionpoints]
    bufferOffset = _serializer.uint8(obj.no_of_missionpoints, buffer, bufferOffset);
    // Serialize message field [missionpoints]
    bufferOffset = _arraySerializer.uint8(obj.missionpoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMissionResponse
    let len;
    let data = new GetMissionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [no_of_missionpoints]
    data.no_of_missionpoints = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [missionpoints]
    data.missionpoints = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += object.missionpoints.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetMissionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c91735d5d503efc35ae27424f54b09b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    uint8 no_of_missionpoints
    uint8[] missionpoints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMissionResponse(null);
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

    if (msg.no_of_missionpoints !== undefined) {
      resolved.no_of_missionpoints = msg.no_of_missionpoints;
    }
    else {
      resolved.no_of_missionpoints = 0
    }

    if (msg.missionpoints !== undefined) {
      resolved.missionpoints = msg.missionpoints;
    }
    else {
      resolved.missionpoints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMissionRequest,
  Response: GetMissionResponse,
  md5sum() { return '4c91735d5d503efc35ae27424f54b09b'; },
  datatype() { return 'vision_apps/GetMission'; }
};
