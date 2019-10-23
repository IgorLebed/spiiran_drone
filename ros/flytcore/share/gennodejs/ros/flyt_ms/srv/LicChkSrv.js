// Auto-generated. Do not edit!

// (in-package flyt_ms.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LicChkSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LicChkSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LicChkSrvRequest
    let len;
    let data = new LicChkSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flyt_ms/LicChkSrvRequest';
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
    const resolved = new LicChkSrvRequest(null);
    return resolved;
    }
};

class LicChkSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lic_type = null;
      this.lic_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('lic_type')) {
        this.lic_type = initObj.lic_type
      }
      else {
        this.lic_type = '';
      }
      if (initObj.hasOwnProperty('lic_valid')) {
        this.lic_valid = initObj.lic_valid
      }
      else {
        this.lic_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LicChkSrvResponse
    // Serialize message field [lic_type]
    bufferOffset = _serializer.string(obj.lic_type, buffer, bufferOffset);
    // Serialize message field [lic_valid]
    bufferOffset = _serializer.bool(obj.lic_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LicChkSrvResponse
    let len;
    let data = new LicChkSrvResponse(null);
    // Deserialize message field [lic_type]
    data.lic_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lic_valid]
    data.lic_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lic_type.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flyt_ms/LicChkSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '654af7e147b2d29af49c77584bd33b70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string lic_type
    bool lic_valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LicChkSrvResponse(null);
    if (msg.lic_type !== undefined) {
      resolved.lic_type = msg.lic_type;
    }
    else {
      resolved.lic_type = ''
    }

    if (msg.lic_valid !== undefined) {
      resolved.lic_valid = msg.lic_valid;
    }
    else {
      resolved.lic_valid = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LicChkSrvRequest,
  Response: LicChkSrvResponse,
  md5sum() { return '654af7e147b2d29af49c77584bd33b70'; },
  datatype() { return 'flyt_ms/LicChkSrv'; }
};
