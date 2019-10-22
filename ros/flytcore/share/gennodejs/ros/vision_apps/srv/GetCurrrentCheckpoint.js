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

class GetCurrrentCheckpointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrrentCheckpointRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrrentCheckpointRequest
    let len;
    let data = new GetCurrrentCheckpointRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetCurrrentCheckpointRequest';
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
    const resolved = new GetCurrrentCheckpointRequest(null);
    return resolved;
    }
};

class GetCurrrentCheckpointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.checkpoint_id = null;
      this.missionpoint_number = null;
      this.tag_id = null;
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
      if (initObj.hasOwnProperty('checkpoint_id')) {
        this.checkpoint_id = initObj.checkpoint_id
      }
      else {
        this.checkpoint_id = 0;
      }
      if (initObj.hasOwnProperty('missionpoint_number')) {
        this.missionpoint_number = initObj.missionpoint_number
      }
      else {
        this.missionpoint_number = 0;
      }
      if (initObj.hasOwnProperty('tag_id')) {
        this.tag_id = initObj.tag_id
      }
      else {
        this.tag_id = 0;
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
    // Serializes a message object of type GetCurrrentCheckpointResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [checkpoint_id]
    bufferOffset = _serializer.uint8(obj.checkpoint_id, buffer, bufferOffset);
    // Serialize message field [missionpoint_number]
    bufferOffset = _serializer.uint8(obj.missionpoint_number, buffer, bufferOffset);
    // Serialize message field [tag_id]
    bufferOffset = _serializer.uint8(obj.tag_id, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrrentCheckpointResponse
    let len;
    let data = new GetCurrrentCheckpointResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [checkpoint_id]
    data.checkpoint_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [missionpoint_number]
    data.missionpoint_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tag_id]
    data.tag_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetCurrrentCheckpointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7cc3faa051aab17ce96e020c0c4d1fb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    uint8 checkpoint_id
    uint8 missionpoint_number
    uint8 tag_id
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrrentCheckpointResponse(null);
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

    if (msg.checkpoint_id !== undefined) {
      resolved.checkpoint_id = msg.checkpoint_id;
    }
    else {
      resolved.checkpoint_id = 0
    }

    if (msg.missionpoint_number !== undefined) {
      resolved.missionpoint_number = msg.missionpoint_number;
    }
    else {
      resolved.missionpoint_number = 0
    }

    if (msg.tag_id !== undefined) {
      resolved.tag_id = msg.tag_id;
    }
    else {
      resolved.tag_id = 0
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
  Request: GetCurrrentCheckpointRequest,
  Response: GetCurrrentCheckpointResponse,
  md5sum() { return '7cc3faa051aab17ce96e020c0c4d1fb6'; },
  datatype() { return 'vision_apps/GetCurrrentCheckpoint'; }
};
