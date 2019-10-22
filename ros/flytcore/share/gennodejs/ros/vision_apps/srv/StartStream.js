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

class StartStreamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.streamer = null;
      this.ip = null;
      this.port = null;
      this.source_type = null;
      this.camera_alias = null;
      this.topic = null;
      this.camera_calib_file = null;
      this.image_width = null;
      this.image_height = null;
      this.framerate = null;
      this.brightness = null;
    }
    else {
      if (initObj.hasOwnProperty('streamer')) {
        this.streamer = initObj.streamer
      }
      else {
        this.streamer = '';
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = '';
      }
      if (initObj.hasOwnProperty('source_type')) {
        this.source_type = initObj.source_type
      }
      else {
        this.source_type = '';
      }
      if (initObj.hasOwnProperty('camera_alias')) {
        this.camera_alias = initObj.camera_alias
      }
      else {
        this.camera_alias = '';
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('camera_calib_file')) {
        this.camera_calib_file = initObj.camera_calib_file
      }
      else {
        this.camera_calib_file = '';
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartStreamRequest
    // Serialize message field [streamer]
    bufferOffset = _serializer.string(obj.streamer, buffer, bufferOffset);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.string(obj.port, buffer, bufferOffset);
    // Serialize message field [source_type]
    bufferOffset = _serializer.string(obj.source_type, buffer, bufferOffset);
    // Serialize message field [camera_alias]
    bufferOffset = _serializer.string(obj.camera_alias, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [camera_calib_file]
    bufferOffset = _serializer.string(obj.camera_calib_file, buffer, bufferOffset);
    // Serialize message field [image_width]
    bufferOffset = _serializer.int64(obj.image_width, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.int64(obj.image_height, buffer, bufferOffset);
    // Serialize message field [framerate]
    bufferOffset = _serializer.int64(obj.framerate, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.int64(obj.brightness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartStreamRequest
    let len;
    let data = new StartStreamRequest(null);
    // Deserialize message field [streamer]
    data.streamer = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [source_type]
    data.source_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [camera_alias]
    data.camera_alias = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [camera_calib_file]
    data.camera_calib_file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_width]
    data.image_width = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [framerate]
    data.framerate = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.streamer.length;
    length += object.ip.length;
    length += object.port.length;
    length += object.source_type.length;
    length += object.camera_alias.length;
    length += object.topic.length;
    length += object.camera_calib_file.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/StartStreamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd428f21e61f04708b49bf739aba95e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string streamer
    string ip
    string port
    string source_type
    string camera_alias
    string topic
    string camera_calib_file
    int64  image_width
    int64  image_height
    int64  framerate
    int64  brightness
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartStreamRequest(null);
    if (msg.streamer !== undefined) {
      resolved.streamer = msg.streamer;
    }
    else {
      resolved.streamer = ''
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = ''
    }

    if (msg.source_type !== undefined) {
      resolved.source_type = msg.source_type;
    }
    else {
      resolved.source_type = ''
    }

    if (msg.camera_alias !== undefined) {
      resolved.camera_alias = msg.camera_alias;
    }
    else {
      resolved.camera_alias = ''
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.camera_calib_file !== undefined) {
      resolved.camera_calib_file = msg.camera_calib_file;
    }
    else {
      resolved.camera_calib_file = ''
    }

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

    return resolved;
    }
};

class StartStreamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pid = null;
    }
    else {
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartStreamResponse
    // Serialize message field [pid]
    bufferOffset = _serializer.int32(obj.pid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartStreamResponse
    let len;
    let data = new StartStreamResponse(null);
    // Deserialize message field [pid]
    data.pid = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/StartStreamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea869443c246f5e50c4a1211c67c339d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pid
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartStreamResponse(null);
    if (msg.pid !== undefined) {
      resolved.pid = msg.pid;
    }
    else {
      resolved.pid = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: StartStreamRequest,
  Response: StartStreamResponse,
  md5sum() { return 'e80b3fbc60a44ad81af9ba0208e68957'; },
  datatype() { return 'vision_apps/StartStream'; }
};
