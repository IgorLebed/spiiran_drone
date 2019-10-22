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

class GeofencePullRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeofencePullRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeofencePullRequest
    let len;
    let data = new GeofencePullRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/GeofencePullRequest';
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
    const resolved = new GeofencePullRequest(null);
    return resolved;
    }
};

class GeofencePullResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.count = null;
      this.lat = null;
      this.lng = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
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
    // Serializes a message object of type GeofencePullResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _arraySerializer.float64(obj.lat, buffer, bufferOffset, null);
    // Serialize message field [lng]
    bufferOffset = _arraySerializer.float64(obj.lng, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeofencePullResponse
    let len;
    let data = new GeofencePullResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
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
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/GeofencePullResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de057806094fca5534c26aac204ab4b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 count
    float64[] lat
    float64[] lng
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeofencePullResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
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

module.exports = {
  Request: GeofencePullRequest,
  Response: GeofencePullResponse,
  md5sum() { return 'de057806094fca5534c26aac204ab4b9'; },
  datatype() { return 'mavros_msgs/GeofencePull'; }
};
