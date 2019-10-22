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

class GeofencePushRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lat = null;
      this.lng = null;
    }
    else {
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
    // Serializes a message object of type GeofencePushRequest
    // Serialize message field [lat]
    bufferOffset = _arraySerializer.float64(obj.lat, buffer, bufferOffset, null);
    // Serialize message field [lng]
    bufferOffset = _arraySerializer.float64(obj.lng, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeofencePushRequest
    let len;
    let data = new GeofencePushRequest(null);
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
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/GeofencePushRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87d2e173b20cc35c41c74cf33d6d51f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    float64[] lat
    float64[] lng
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeofencePushRequest(null);
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

class GeofencePushResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.count = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeofencePushResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeofencePushResponse
    let len;
    let data = new GeofencePushResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/GeofencePushResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00ba4d66f37d7947976581272399219d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 count
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeofencePushResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: GeofencePushRequest,
  Response: GeofencePushResponse,
  md5sum() { return 'c3af180efb144ee3fa6be1613192bb21'; },
  datatype() { return 'mavros_msgs/GeofencePush'; }
};
