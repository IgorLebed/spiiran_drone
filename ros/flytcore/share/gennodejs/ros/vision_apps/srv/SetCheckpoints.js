// Auto-generated. Do not edit!

// (in-package vision_apps.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Checkpoint = require('../msg/Checkpoint.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetCheckpointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.checkpoint_list = null;
      this.save = null;
    }
    else {
      if (initObj.hasOwnProperty('checkpoint_list')) {
        this.checkpoint_list = initObj.checkpoint_list
      }
      else {
        this.checkpoint_list = [];
      }
      if (initObj.hasOwnProperty('save')) {
        this.save = initObj.save
      }
      else {
        this.save = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCheckpointsRequest
    // Serialize message field [checkpoint_list]
    // Serialize the length for message field [checkpoint_list]
    bufferOffset = _serializer.uint32(obj.checkpoint_list.length, buffer, bufferOffset);
    obj.checkpoint_list.forEach((val) => {
      bufferOffset = Checkpoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [save]
    bufferOffset = _serializer.bool(obj.save, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCheckpointsRequest
    let len;
    let data = new SetCheckpointsRequest(null);
    // Deserialize message field [checkpoint_list]
    // Deserialize array length for message field [checkpoint_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.checkpoint_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.checkpoint_list[i] = Checkpoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [save]
    data.save = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 22 * object.checkpoint_list.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/SetCheckpointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2f89c19abc4d2f9bba48a64be1b3808';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    vision_apps/Checkpoint[] checkpoint_list
    bool save
    
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
    const resolved = new SetCheckpointsRequest(null);
    if (msg.checkpoint_list !== undefined) {
      resolved.checkpoint_list = new Array(msg.checkpoint_list.length);
      for (let i = 0; i < resolved.checkpoint_list.length; ++i) {
        resolved.checkpoint_list[i] = Checkpoint.Resolve(msg.checkpoint_list[i]);
      }
    }
    else {
      resolved.checkpoint_list = []
    }

    if (msg.save !== undefined) {
      resolved.save = msg.save;
    }
    else {
      resolved.save = false
    }

    return resolved;
    }
};

class SetCheckpointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
      this.no_of_checkpoints = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetCheckpointsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [no_of_checkpoints]
    bufferOffset = _serializer.uint8(obj.no_of_checkpoints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetCheckpointsResponse
    let len;
    let data = new SetCheckpointsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [no_of_checkpoints]
    data.no_of_checkpoints = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/SetCheckpointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '711cb5d50a8f528862a3b1e99d5fe29d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    uint8 no_of_checkpoints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetCheckpointsResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: SetCheckpointsRequest,
  Response: SetCheckpointsResponse,
  md5sum() { return '5b6a36f86958efb1c0227d47b297cadc'; },
  datatype() { return 'vision_apps/SetCheckpoints'; }
};
