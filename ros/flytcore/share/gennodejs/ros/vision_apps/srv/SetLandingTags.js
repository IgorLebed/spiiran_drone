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

class SetLandingTagsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tags_list = null;
      this.tags_size = null;
      this.save = null;
    }
    else {
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
      if (initObj.hasOwnProperty('save')) {
        this.save = initObj.save
      }
      else {
        this.save = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLandingTagsRequest
    // Serialize message field [tags_list]
    bufferOffset = _arraySerializer.int16(obj.tags_list, buffer, bufferOffset, null);
    // Serialize message field [tags_size]
    bufferOffset = _arraySerializer.float32(obj.tags_size, buffer, bufferOffset, null);
    // Serialize message field [save]
    bufferOffset = _serializer.bool(obj.save, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLandingTagsRequest
    let len;
    let data = new SetLandingTagsRequest(null);
    // Deserialize message field [tags_list]
    data.tags_list = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [tags_size]
    data.tags_size = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [save]
    data.save = _deserializer.bool(buffer, bufferOffset);
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
    return 'vision_apps/SetLandingTagsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbb6b6df56128886e3d664be49a1a4eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[] tags_list
    float32[] tags_size
    bool save
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLandingTagsRequest(null);
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

    if (msg.save !== undefined) {
      resolved.save = msg.save;
    }
    else {
      resolved.save = false
    }

    return resolved;
    }
};

class SetLandingTagsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
      this.no_of_tags = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLandingTagsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [no_of_tags]
    bufferOffset = _serializer.uint8(obj.no_of_tags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLandingTagsResponse
    let len;
    let data = new SetLandingTagsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [no_of_tags]
    data.no_of_tags = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/SetLandingTagsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1baebd8f9e081c78d7a8cd9ff7afcfe2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    uint8 no_of_tags
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLandingTagsResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: SetLandingTagsRequest,
  Response: SetLandingTagsResponse,
  md5sum() { return 'cd699613466cea6d48ccdaa53ecb88b7'; },
  datatype() { return 'vision_apps/SetLandingTags'; }
};
