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

class StartRaspiStreamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_width = null;
      this.image_height = null;
      this.framerate = null;
      this.brightness = null;
      this.saturation = null;
      this.flip = null;
      this.remote_url = null;
      this.remote_target = null;
      this.bitrate = null;
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
      if (initObj.hasOwnProperty('remote_url')) {
        this.remote_url = initObj.remote_url
      }
      else {
        this.remote_url = '';
      }
      if (initObj.hasOwnProperty('remote_target')) {
        this.remote_target = initObj.remote_target
      }
      else {
        this.remote_target = false;
      }
      if (initObj.hasOwnProperty('bitrate')) {
        this.bitrate = initObj.bitrate
      }
      else {
        this.bitrate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartRaspiStreamRequest
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
    // Serialize message field [remote_url]
    bufferOffset = _serializer.string(obj.remote_url, buffer, bufferOffset);
    // Serialize message field [remote_target]
    bufferOffset = _serializer.bool(obj.remote_target, buffer, bufferOffset);
    // Serialize message field [bitrate]
    bufferOffset = _serializer.int64(obj.bitrate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRaspiStreamRequest
    let len;
    let data = new StartRaspiStreamRequest(null);
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
    // Deserialize message field [remote_url]
    data.remote_url = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remote_target]
    data.remote_target = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bitrate]
    data.bitrate = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.remote_url.length;
    return length + 54;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/StartRaspiStreamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6b72259901d1ca6aeaef13a7f232c79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64  image_width
    int64  image_height
    int64  framerate
    int64  brightness
    int64  saturation
    bool   flip
    string remote_url
    bool   remote_target
    int64  bitrate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartRaspiStreamRequest(null);
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

    if (msg.remote_url !== undefined) {
      resolved.remote_url = msg.remote_url;
    }
    else {
      resolved.remote_url = ''
    }

    if (msg.remote_target !== undefined) {
      resolved.remote_target = msg.remote_target;
    }
    else {
      resolved.remote_target = false
    }

    if (msg.bitrate !== undefined) {
      resolved.bitrate = msg.bitrate;
    }
    else {
      resolved.bitrate = 0
    }

    return resolved;
    }
};

class StartRaspiStreamResponse {
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
    // Serializes a message object of type StartRaspiStreamResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRaspiStreamResponse
    let len;
    let data = new StartRaspiStreamResponse(null);
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
    return 'vision_apps/StartRaspiStreamResponse';
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
    const resolved = new StartRaspiStreamResponse(null);
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
  Request: StartRaspiStreamRequest,
  Response: StartRaspiStreamResponse,
  md5sum() { return 'c8ad8ed25dd91782467c8f3557791b57'; },
  datatype() { return 'vision_apps/StartRaspiStream'; }
};
