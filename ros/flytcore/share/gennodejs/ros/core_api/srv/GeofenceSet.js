// Auto-generated. Do not edit!

// (in-package core_api.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GeofenceSetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.min_alt = null;
      this.max_alt = null;
      this.lat = null;
      this.lng = null;
    }
    else {
      if (initObj.hasOwnProperty('min_alt')) {
        this.min_alt = initObj.min_alt
      }
      else {
        this.min_alt = 0.0;
      }
      if (initObj.hasOwnProperty('max_alt')) {
        this.max_alt = initObj.max_alt
      }
      else {
        this.max_alt = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = [];
      }
      if (initObj.hasOwnProperty('lng')) {
        this.lng = initObj.lng
      }
      else {
        this.lng = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeofenceSetRequest
    // Serialize message field [min_alt]
    bufferOffset = _serializer.float64(obj.min_alt, buffer, bufferOffset);
    // Serialize message field [max_alt]
    bufferOffset = _serializer.float64(obj.max_alt, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _arraySerializer.float64(obj.lat, buffer, bufferOffset, null);
    // Serialize message field [lng]
    bufferOffset = _arraySerializer.float64(obj.lng, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeofenceSetRequest
    let len;
    let data = new GeofenceSetRequest(null);
    // Deserialize message field [min_alt]
    data.min_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_alt]
    data.max_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [lng]
    data.lng = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.lat.length;
    length += 8 * object.lng.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/GeofenceSetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '405a0a71ce96270765c52ffdc0cf6f86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    float64 min_alt
    float64 max_alt
    float64[] lat
    float64[] lng
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeofenceSetRequest(null);
    if (msg.min_alt !== undefined) {
      resolved.min_alt = msg.min_alt;
    }
    else {
      resolved.min_alt = 0.0
    }

    if (msg.max_alt !== undefined) {
      resolved.max_alt = msg.max_alt;
    }
    else {
      resolved.max_alt = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = []
    }

    if (msg.lng !== undefined) {
      resolved.lng = msg.lng;
    }
    else {
      resolved.lng = []
    }

    return resolved;
    }
};

class GeofenceSetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.count = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeofenceSetResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeofenceSetResponse
    let len;
    let data = new GeofenceSetResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/GeofenceSetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03d1fcda26902ade9ffe4004fe1c14aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    uint8 count
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeofenceSetResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GeofenceSetRequest,
  Response: GeofenceSetResponse,
  md5sum() { return 'acfd36e0ae928bc2121a03e763a1984f'; },
  datatype() { return 'core_api/GeofenceSet'; }
};
