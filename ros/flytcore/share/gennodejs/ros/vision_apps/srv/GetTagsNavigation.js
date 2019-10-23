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

class GetTagsNavigationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTagsNavigationRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTagsNavigationRequest
    let len;
    let data = new GetTagsNavigationRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetTagsNavigationRequest';
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
    const resolved = new GetTagsNavigationRequest(null);
    return resolved;
    }
};

class GetTagsNavigationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.tags_list = null;
      this.tags_size = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('tags_list')) {
        this.tags_list = initObj.tags_list
      }
      else {
        this.tags_list = [];
      }
      if (initObj.hasOwnProperty('tags_size')) {
        this.tags_size = initObj.tags_size
      }
      else {
        this.tags_size = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTagsNavigationResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [tags_list]
    bufferOffset = _arraySerializer.int16(obj.tags_list, buffer, bufferOffset, null);
    // Serialize message field [tags_size]
    bufferOffset = _arraySerializer.float32(obj.tags_size, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTagsNavigationResponse
    let len;
    let data = new GetTagsNavigationResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tags_list]
    data.tags_list = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [tags_size]
    data.tags_size = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.tags_list.length;
    length += 4 * object.tags_size.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetTagsNavigationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53782a4fae57c38fe64c9c19dae267f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    int16[] tags_list
    float32[] tags_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTagsNavigationResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.tags_list !== undefined) {
      resolved.tags_list = msg.tags_list;
    }
    else {
      resolved.tags_list = []
    }

    if (msg.tags_size !== undefined) {
      resolved.tags_size = msg.tags_size;
    }
    else {
      resolved.tags_size = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTagsNavigationRequest,
  Response: GetTagsNavigationResponse,
  md5sum() { return '53782a4fae57c38fe64c9c19dae267f7'; },
  datatype() { return 'vision_apps/GetTagsNavigation'; }
};
