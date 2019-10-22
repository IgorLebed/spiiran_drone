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

class StartCameraCaptureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_alias = null;
      this.pixel_format = null;
      this.image_width = null;
      this.image_height = null;
      this.framerate = null;
      this.brightness = null;
      this.camera_info_url = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_alias')) {
        this.camera_alias = initObj.camera_alias
      }
      else {
        this.camera_alias = '';
      }
      if (initObj.hasOwnProperty('pixel_format')) {
        this.pixel_format = initObj.pixel_format
      }
      else {
        this.pixel_format = '';
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
      if (initObj.hasOwnProperty('camera_info_url')) {
        this.camera_info_url = initObj.camera_info_url
      }
      else {
        this.camera_info_url = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartCameraCaptureRequest
    // Serialize message field [camera_alias]
    bufferOffset = _serializer.string(obj.camera_alias, buffer, bufferOffset);
    // Serialize message field [pixel_format]
    bufferOffset = _serializer.string(obj.pixel_format, buffer, bufferOffset);
    // Serialize message field [image_width]
    bufferOffset = _serializer.int64(obj.image_width, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.int64(obj.image_height, buffer, bufferOffset);
    // Serialize message field [framerate]
    bufferOffset = _serializer.int64(obj.framerate, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.int64(obj.brightness, buffer, bufferOffset);
    // Serialize message field [camera_info_url]
    bufferOffset = _serializer.string(obj.camera_info_url, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartCameraCaptureRequest
    let len;
    let data = new StartCameraCaptureRequest(null);
    // Deserialize message field [camera_alias]
    data.camera_alias = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pixel_format]
    data.pixel_format = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_width]
    data.image_width = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [framerate]
    data.framerate = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [camera_info_url]
    data.camera_info_url = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.camera_alias.length;
    length += object.pixel_format.length;
    length += object.camera_info_url.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/StartCameraCaptureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c07f5d9a8fa4e366c0359eb63b05431c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string camera_alias
    string pixel_format
    int64  image_width
    int64  image_height
    int64  framerate
    int64  brightness
    string camera_info_url
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartCameraCaptureRequest(null);
    if (msg.camera_alias !== undefined) {
      resolved.camera_alias = msg.camera_alias;
    }
    else {
      resolved.camera_alias = ''
    }

    if (msg.pixel_format !== undefined) {
      resolved.pixel_format = msg.pixel_format;
    }
    else {
      resolved.pixel_format = ''
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

    if (msg.camera_info_url !== undefined) {
      resolved.camera_info_url = msg.camera_info_url;
    }
    else {
      resolved.camera_info_url = ''
    }

    return resolved;
    }
};

class StartCameraCaptureResponse {
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
    // Serializes a message object of type StartCameraCaptureResponse
    // Serialize message field [pid]
    bufferOffset = _serializer.int32(obj.pid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartCameraCaptureResponse
    let len;
    let data = new StartCameraCaptureResponse(null);
    // Deserialize message field [pid]
    data.pid = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_apps/StartCameraCaptureResponse';
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
    const resolved = new StartCameraCaptureResponse(null);
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
  Request: StartCameraCaptureRequest,
  Response: StartCameraCaptureResponse,
  md5sum() { return '5501cdfd5da9afae41c8afd579b3c676'; },
  datatype() { return 'vision_apps/StartCameraCapture'; }
};
