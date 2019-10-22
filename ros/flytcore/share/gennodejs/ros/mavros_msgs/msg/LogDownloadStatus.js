// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LogDownloadStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.filename = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogDownloadStatus
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogDownloadStatus
    let len;
    let data = new LogDownloadStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.filename.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/LogDownloadStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d840e70d7837109a254981cf6cf6a98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Log Download Filename and Status
    #filename - as per actual download format
    #status - (-1) for not Downloading
    #         0-99 for Downloading
    #          100 for Download Finished
    
    int8 id
    string filename
    int8 status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LogDownloadStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = LogDownloadStatus;
