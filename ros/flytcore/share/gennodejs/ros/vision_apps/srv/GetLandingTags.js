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

class GetLandingTagsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLandingTagsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLandingTagsRequest
    let len;
    let data = new GetLandingTagsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetLandingTagsRequest';
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
    const resolved = new GetLandingTagsRequest(null);
    return resolved;
    }
};

class GetLandingTagsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
      this.no_of_tags = null;
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
      if (initObj.hasOwnProperty('no_of_tags')) {
        this.no_of_tags = initObj.no_of_tags
      }
      else {
        this.no_of_tags = 0;
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
    // Serializes a message object of type GetLandingTagsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [no_of_tags]
    bufferOffset = _serializer.uint8(obj.no_of_tags, buffer, bufferOffset);
    // Serialize message field [tags_list]
    bufferOffset = _arraySerializer.int16(obj.tags_list, buffer, bufferOffset, null);
    // Serialize message field [tags_size]
    bufferOffset = _arraySerializer.float32(obj.tags_size, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLandingTagsResponse
    let len;
    let data = new GetLandingTagsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [no_of_tags]
    data.no_of_tags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tags_list]
    data.tags_list = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [tags_size]
    data.tags_size = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    length += 2 * object.tags_list.length;
    length += 4 * object.tags_size.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetLandingTagsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aae0ee202470603e74d4947917bad750';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    uint8 no_of_tags
    int16[] tags_list
    float32[] tags_size
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLandingTagsResponse(null);
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

    if (msg.no_of_tags !== undefined) {
      resolved.no_of_tags = msg.no_of_tags;
    }
    else {
      resolved.no_of_tags = 0
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
  Request: GetLandingTagsRequest,
  Response: GetLandingTagsResponse,
  md5sum() { return 'aae0ee202470603e74d4947917bad750'; },
  datatype() { return 'vision_apps/GetLandingTags'; }
};
