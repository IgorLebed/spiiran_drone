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

let Checkpoint = require('../msg/Checkpoint.js');

//-----------------------------------------------------------

class GetCheckpointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCheckpointsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCheckpointsRequest
    let len;
    let data = new GetCheckpointsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetCheckpointsRequest';
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
    const resolved = new GetCheckpointsRequest(null);
    return resolved;
    }
};

class GetCheckpointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
      this.no_of_checkpoints = null;
      this.checkpoints = null;
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
      if (initObj.hasOwnProperty('no_of_checkpoints')) {
        this.no_of_checkpoints = initObj.no_of_checkpoints
      }
      else {
        this.no_of_checkpoints = 0;
      }
      if (initObj.hasOwnProperty('checkpoints')) {
        this.checkpoints = initObj.checkpoints
      }
      else {
        this.checkpoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCheckpointsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [no_of_checkpoints]
    bufferOffset = _serializer.uint8(obj.no_of_checkpoints, buffer, bufferOffset);
    // Serialize message field [checkpoints]
    // Serialize the length for message field [checkpoints]
    bufferOffset = _serializer.uint32(obj.checkpoints.length, buffer, bufferOffset);
    obj.checkpoints.forEach((val) => {
      bufferOffset = Checkpoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCheckpointsResponse
    let len;
    let data = new GetCheckpointsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [no_of_checkpoints]
    data.no_of_checkpoints = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checkpoints]
    // Deserialize array length for message field [checkpoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.checkpoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.checkpoints[i] = Checkpoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += 22 * object.checkpoints.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetCheckpointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0716ca053acdca4ffd9f1606f16f3814';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    uint8 no_of_checkpoints
    vision_apps/Checkpoint[] checkpoints
    
    
    ================================================================================
    MSG: vision_apps/Checkpoint
    uint8 checkpoint_id
    uint8 tag_id
    float32 tag_x
    float32 tag_y
    float32 tag_z
    float32 tag_yaw
    float32 tag_size
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCheckpointsResponse(null);
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

    if (msg.no_of_checkpoints !== undefined) {
      resolved.no_of_checkpoints = msg.no_of_checkpoints;
    }
    else {
      resolved.no_of_checkpoints = 0
    }

    if (msg.checkpoints !== undefined) {
      resolved.checkpoints = new Array(msg.checkpoints.length);
      for (let i = 0; i < resolved.checkpoints.length; ++i) {
        resolved.checkpoints[i] = Checkpoint.Resolve(msg.checkpoints[i]);
      }
    }
    else {
      resolved.checkpoints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCheckpointsRequest,
  Response: GetCheckpointsResponse,
  md5sum() { return '0716ca053acdca4ffd9f1606f16f3814'; },
  datatype() { return 'vision_apps/GetCheckpoints'; }
};
