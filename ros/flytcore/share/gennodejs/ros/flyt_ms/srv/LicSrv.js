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

class LicSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ser_id = null;
      this.dev_id = null;
    }
    else {
      if (initObj.hasOwnProperty('ser_id')) {
        this.ser_id = initObj.ser_id
      }
      else {
        this.ser_id = '';
      }
      if (initObj.hasOwnProperty('dev_id')) {
        this.dev_id = initObj.dev_id
      }
      else {
        this.dev_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LicSrvRequest
    // Serialize message field [ser_id]
    bufferOffset = _serializer.string(obj.ser_id, buffer, bufferOffset);
    // Serialize message field [dev_id]
    bufferOffset = _serializer.string(obj.dev_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LicSrvRequest
    let len;
    let data = new LicSrvRequest(null);
    // Deserialize message field [ser_id]
    data.ser_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dev_id]
    data.dev_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ser_id.length;
    length += object.dev_id.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flyt_ms/LicSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2b7e214dd61b1b1c588b9f7b11d76d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ser_id
    string dev_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LicSrvRequest(null);
    if (msg.ser_id !== undefined) {
      resolved.ser_id = msg.ser_id;
    }
    else {
      resolved.ser_id = ''
    }

    if (msg.dev_id !== undefined) {
      resolved.dev_id = msg.dev_id;
    }
    else {
      resolved.dev_id = ''
    }

    return resolved;
    }
};

class LicSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lic_type = null;
      this.exp_date = null;
    }
    else {
      if (initObj.hasOwnProperty('lic_type')) {
        this.lic_type = initObj.lic_type
      }
      else {
        this.lic_type = '';
      }
      if (initObj.hasOwnProperty('exp_date')) {
        this.exp_date = initObj.exp_date
      }
      else {
        this.exp_date = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LicSrvResponse
    // Serialize message field [lic_type]
    bufferOffset = _serializer.string(obj.lic_type, buffer, bufferOffset);
    // Serialize message field [exp_date]
    bufferOffset = _serializer.string(obj.exp_date, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LicSrvResponse
    let len;
    let data = new LicSrvResponse(null);
    // Deserialize message field [lic_type]
    data.lic_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [exp_date]
    data.exp_date = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lic_type.length;
    length += object.exp_date.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'flyt_ms/LicSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2aa83faaac1ac420a3ff880e71ac394a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string lic_type
    string exp_date
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LicSrvResponse(null);
    if (msg.lic_type !== undefined) {
      resolved.lic_type = msg.lic_type;
    }
    else {
      resolved.lic_type = ''
    }

    if (msg.exp_date !== undefined) {
      resolved.exp_date = msg.exp_date;
    }
    else {
      resolved.exp_date = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: LicSrvRequest,
  Response: LicSrvResponse,
  md5sum() { return '78ae2287421c41faed757606acee0dc8'; },
  datatype() { return 'flyt_ms/LicSrv'; }
};
