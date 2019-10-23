// Auto-generated. Do not edit!

// (in-package mavros_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AutopilotAppControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.app_name = null;
      this.arguments = null;
    }
    else {
      if (initObj.hasOwnProperty('app_name')) {
        this.app_name = initObj.app_name
      }
      else {
        this.app_name = '';
      }
      if (initObj.hasOwnProperty('arguments')) {
        this.arguments = initObj.arguments
      }
      else {
        this.arguments = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AutopilotAppControlRequest
    // Serialize message field [app_name]
    bufferOffset = _serializer.string(obj.app_name, buffer, bufferOffset);
    // Serialize message field [arguments]
    bufferOffset = _serializer.string(obj.arguments, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutopilotAppControlRequest
    let len;
    let data = new AutopilotAppControlRequest(null);
    // Deserialize message field [app_name]
    data.app_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arguments]
    data.arguments = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.app_name.length;
    length += object.arguments.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/AutopilotAppControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f3be09431c50e601ac7045f4cd27075';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    string app_name
    string arguments
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AutopilotAppControlRequest(null);
    if (msg.app_name !== undefined) {
      resolved.app_name = msg.app_name;
    }
    else {
      resolved.app_name = ''
    }

    if (msg.arguments !== undefined) {
      resolved.arguments = msg.arguments;
    }
    else {
      resolved.arguments = ''
    }

    return resolved;
    }
};

class AutopilotAppControlResponse {
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
    // Serializes a message object of type AutopilotAppControlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AutopilotAppControlResponse
    let len;
    let data = new AutopilotAppControlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/AutopilotAppControlResponse';
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
    const resolved = new AutopilotAppControlResponse(null);
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
  Request: AutopilotAppControlRequest,
  Response: AutopilotAppControlResponse,
  md5sum() { return '04950ad0083546b156a464893d073280'; },
  datatype() { return 'mavros_msgs/AutopilotAppControl'; }
};
