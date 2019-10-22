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

class GetCamListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCamListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCamListRequest
    let len;
    let data = new GetCamListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetCamListRequest';
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
    const resolved = new GetCamListRequest(null);
    return resolved;
    }
};

class GetCamListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_aliases = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_aliases')) {
        this.camera_aliases = initObj.camera_aliases
      }
      else {
        this.camera_aliases = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCamListResponse
    // Serialize message field [camera_aliases]
    bufferOffset = _arraySerializer.string(obj.camera_aliases, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCamListResponse
    let len;
    let data = new GetCamListResponse(null);
    // Deserialize message field [camera_aliases]
    data.camera_aliases = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.camera_aliases.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/GetCamListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9902e78c4ccd49c8d03303243efb89fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] camera_aliases
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCamListResponse(null);
    if (msg.camera_aliases !== undefined) {
      resolved.camera_aliases = msg.camera_aliases;
    }
    else {
      resolved.camera_aliases = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCamListRequest,
  Response: GetCamListResponse,
  md5sum() { return '9902e78c4ccd49c8d03303243efb89fc'; },
  datatype() { return 'vision_apps/GetCamList'; }
};
