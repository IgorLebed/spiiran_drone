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

class SaveRaspiStreamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_width = null;
      this.image_height = null;
      this.framerate = null;
      this.brightness = null;
      this.saturation = null;
      this.flip = null;
    }
    else {
      if (initObj.hasOwnProperty('image_width')) {
        this.image_width = initObj.image_width
      }
      else {
        this.image_width = 0;
      }
      if (initObj.hasOwnProperty('image_height')) {
        this.image_height = initObj.image_height
      }
      else {
        this.image_height = 0;
      }
      if (initObj.hasOwnProperty('framerate')) {
        this.framerate = initObj.framerate
      }
      else {
        this.framerate = 0;
      }
      if (initObj.hasOwnProperty('brightness')) {
        this.brightness = initObj.brightness
      }
      else {
        this.brightness = 0;
      }
      if (initObj.hasOwnProperty('saturation')) {
        this.saturation = initObj.saturation
      }
      else {
        this.saturation = 0;
      }
      if (initObj.hasOwnProperty('flip')) {
        this.flip = initObj.flip
      }
      else {
        this.flip = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveRaspiStreamRequest
    // Serialize message field [image_width]
    bufferOffset = _serializer.int64(obj.image_width, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.int64(obj.image_height, buffer, bufferOffset);
    // Serialize message field [framerate]
    bufferOffset = _serializer.int64(obj.framerate, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.int64(obj.brightness, buffer, bufferOffset);
    // Serialize message field [saturation]
    bufferOffset = _serializer.int64(obj.saturation, buffer, bufferOffset);
    // Serialize message field [flip]
    bufferOffset = _serializer.bool(obj.flip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRaspiStreamRequest
    let len;
    let data = new SaveRaspiStreamRequest(null);
    // Deserialize message field [image_width]
    data.image_width = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [framerate]
    data.framerate = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [saturation]
    data.saturation = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [flip]
    data.flip = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/SaveRaspiStreamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a882567248ccbc61befc65b85423896f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64  image_width
    int64  image_height
    int64  framerate
    int64  brightness
    int64  saturation
    bool 	 flip
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveRaspiStreamRequest(null);
    if (msg.image_width !== undefined) {
      resolved.image_width = msg.image_width;
    }
    else {
      resolved.image_width = 0
    }

    if (msg.image_height !== undefined) {
      resolved.image_height = msg.image_height;
    }
    else {
      resolved.image_height = 0
    }

    if (msg.framerate !== undefined) {
      resolved.framerate = msg.framerate;
    }
    else {
      resolved.framerate = 0
    }

    if (msg.brightness !== undefined) {
      resolved.brightness = msg.brightness;
    }
    else {
      resolved.brightness = 0
    }

    if (msg.saturation !== undefined) {
      resolved.saturation = msg.saturation;
    }
    else {
      resolved.saturation = 0
    }

    if (msg.flip !== undefined) {
      resolved.flip = msg.flip;
    }
    else {
      resolved.flip = false
    }

    return resolved;
    }
};

class SaveRaspiStreamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveRaspiStreamResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRaspiStreamResponse
    let len;
    let data = new SaveRaspiStreamResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/SaveRaspiStreamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveRaspiStreamResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: SaveRaspiStreamRequest,
  Response: SaveRaspiStreamResponse,
  md5sum() { return '1bc50cb45f8869f15d55cc109c10788a'; },
  datatype() { return 'vision_apps/SaveRaspiStream'; }
};
