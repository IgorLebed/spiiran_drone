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

let LogList = require('../msg/LogList.js');

//-----------------------------------------------------------

class LogListReqRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogListReqRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogListReqRequest
    let len;
    let data = new LogListReqRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/LogListReqRequest';
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
    const resolved = new LogListReqRequest(null);
    return resolved;
    }
};

class LogListReqResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.loglist = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('loglist')) {
        this.loglist = initObj.loglist
      }
      else {
        this.loglist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LogListReqResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [loglist]
    // Serialize the length for message field [loglist]
    bufferOffset = _serializer.uint32(obj.loglist.length, buffer, bufferOffset);
    obj.loglist.forEach((val) => {
      bufferOffset = LogList.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LogListReqResponse
    let len;
    let data = new LogListReqResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [loglist]
    // Deserialize array length for message field [loglist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.loglist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.loglist[i] = LogList.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.loglist.forEach((val) => {
      length += LogList.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mavros_msgs/LogListReqResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6364c880a0085320615fba1995407d03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    LogList[] loglist
    
    
    
    
    ================================================================================
    MSG: mavros_msgs/LogList
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
    const resolved = new LogListReqResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.loglist !== undefined) {
      resolved.loglist = new Array(msg.loglist.length);
      for (let i = 0; i < resolved.loglist.length; ++i) {
        resolved.loglist[i] = LogList.Resolve(msg.loglist[i]);
      }
    }
    else {
      resolved.loglist = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LogListReqRequest,
  Response: LogListReqResponse,
  md5sum() { return '6364c880a0085320615fba1995407d03'; },
  datatype() { return 'mavros_msgs/LogListReq'; }
};
