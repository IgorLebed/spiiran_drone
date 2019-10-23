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

class UpdateAliasRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.old_alias = null;
      this.new_alias = null;
    }
    else {
      if (initObj.hasOwnProperty('old_alias')) {
        this.old_alias = initObj.old_alias
      }
      else {
        this.old_alias = '';
      }
      if (initObj.hasOwnProperty('new_alias')) {
        this.new_alias = initObj.new_alias
      }
      else {
        this.new_alias = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateAliasRequest
    // Serialize message field [old_alias]
    bufferOffset = _serializer.string(obj.old_alias, buffer, bufferOffset);
    // Serialize message field [new_alias]
    bufferOffset = _serializer.string(obj.new_alias, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateAliasRequest
    let len;
    let data = new UpdateAliasRequest(null);
    // Deserialize message field [old_alias]
    data.old_alias = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [new_alias]
    data.new_alias = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.old_alias.length;
    length += object.new_alias.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/UpdateAliasRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae297d5999a68063bf22aed92f20a25c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string old_alias
    string new_alias
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateAliasRequest(null);
    if (msg.old_alias !== undefined) {
      resolved.old_alias = msg.old_alias;
    }
    else {
      resolved.old_alias = ''
    }

    if (msg.new_alias !== undefined) {
      resolved.new_alias = msg.new_alias;
    }
    else {
      resolved.new_alias = ''
    }

    return resolved;
    }
};

class UpdateAliasResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateAliasResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateAliasResponse
    let len;
    let data = new UpdateAliasResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/UpdateAliasResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateAliasResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: UpdateAliasRequest,
  Response: UpdateAliasResponse,
  md5sum() { return '0a1770d68691fd4da5d99ac89cb0df8b'; },
  datatype() { return 'vision_apps/UpdateAlias'; }
};
