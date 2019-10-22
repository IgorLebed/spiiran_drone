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

class LogList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.filename = null;
      this.autopilot = null;
      this.date = null;
      this.time = null;
      this.size = null;
      this.sbc_status = null;
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
      if (initObj.hasOwnProperty('autopilot')) {
        this.autopilot = initObj.autopilot
      }
      else {
        this.autopilot = '';
      }
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = '';
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('sbc_status')) {
        this.sbc_status = initObj.sbc_status
      }
      else {
        this.sbc_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogList
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [autopilot]
    bufferOffset = _serializer.string(obj.autopilot, buffer, bufferOffset);
    // Serialize message field [date]
    bufferOffset = _serializer.string(obj.date, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.uint32(obj.time, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    // Serialize message field [sbc_status]
    bufferOffset = _serializer.uint8(obj.sbc_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogList
    let len;
    let data = new LogList(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [autopilot]
    data.autopilot = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [date]
    data.date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sbc_status]
    data.sbc_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.filename.length;
    length += object.autopilot.length;
    length += object.date.length;
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/LogList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a31e4c42d97337d2378f367a9d40f318';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Base message format for every entry of log list
    # sbc_status -> 0 for not available on SBC, 1 for available
    
    uint16 id
    string filename
    string autopilot
    string date
    uint32 time
    uint32 size
    uint8 sbc_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LogList(null);
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

    if (msg.autopilot !== undefined) {
      resolved.autopilot = msg.autopilot;
    }
    else {
      resolved.autopilot = ''
    }

    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = ''
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.sbc_status !== undefined) {
      resolved.sbc_status = msg.sbc_status;
    }
    else {
      resolved.sbc_status = 0
    }

    return resolved;
    }
};

module.exports = LogList;
