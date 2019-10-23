// Auto-generated. Do not edit!

// (in-package maxbotix.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeAddressRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_sensor_id = null;
      this.source_sensor_addr = null;
    }
    else {
      if (initObj.hasOwnProperty('target_sensor_id')) {
        this.target_sensor_id = initObj.target_sensor_id
      }
      else {
        this.target_sensor_id = '';
      }
      if (initObj.hasOwnProperty('source_sensor_addr')) {
        this.source_sensor_addr = initObj.source_sensor_addr
      }
      else {
        this.source_sensor_addr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeAddressRequest
    // Serialize message field [target_sensor_id]
    bufferOffset = _serializer.string(obj.target_sensor_id, buffer, bufferOffset);
    // Serialize message field [source_sensor_addr]
    bufferOffset = _serializer.uint8(obj.source_sensor_addr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeAddressRequest
    let len;
    let data = new ChangeAddressRequest(null);
    // Deserialize message field [target_sensor_id]
    data.target_sensor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [source_sensor_addr]
    data.source_sensor_addr = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_sensor_id.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'maxbotix/ChangeAddressRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '446dc151926c248098aace03987c5b14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    string target_sensor_id
    uint8 source_sensor_addr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeAddressRequest(null);
    if (msg.target_sensor_id !== undefined) {
      resolved.target_sensor_id = msg.target_sensor_id;
    }
    else {
      resolved.target_sensor_id = ''
    }

    if (msg.source_sensor_addr !== undefined) {
      resolved.source_sensor_addr = msg.source_sensor_addr;
    }
    else {
      resolved.source_sensor_addr = 0
    }

    return resolved;
    }
};

class ChangeAddressResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.range = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
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
    // Serializes a message object of type ChangeAddressResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float32(obj.range, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeAddressResponse
    let len;
    let data = new ChangeAddressResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float32(buffer, bufferOffset);
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
    return 'maxbotix/ChangeAddressResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81adc6e83e81888bc1a05ef62c3e3633';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float32 range
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeAddressResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
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
  Request: ChangeAddressRequest,
  Response: ChangeAddressResponse,
  md5sum() { return '679a57e3b3b49facc4662b8ff5dd2743'; },
  datatype() { return 'maxbotix/ChangeAddress'; }
};
