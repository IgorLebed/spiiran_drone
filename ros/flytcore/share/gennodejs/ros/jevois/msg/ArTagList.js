// Auto-generated. Do not edit!

// (in-package jevois.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ArTag = require('./ArTag.js');

//-----------------------------------------------------------

class ArTagList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.artags = null;
    }
    else {
      if (initObj.hasOwnProperty('artags')) {
        this.artags = initObj.artags
      }
      else {
        this.artags = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArTagList
    // Serialize message field [artags]
    // Serialize the length for message field [artags]
    bufferOffset = _serializer.uint32(obj.artags.length, buffer, bufferOffset);
    obj.artags.forEach((val) => {
      bufferOffset = ArTag.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArTagList
    let len;
    let data = new ArTagList(null);
    // Deserialize message field [artags]
    // Deserialize array length for message field [artags]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.artags = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.artags[i] = ArTag.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.artags.forEach((val) => {
      length += ArTag.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jevois/ArTagList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b47f96c75985e348d4ba777b500a3e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Vector of ArTags detected
    
    jevois/ArTag[] artags
    
    ================================================================================
    MSG: jevois/ArTag
    #Stores ARTag data
    
    Header header
    int16 marker_id
    string serstyle
    string tagtype
    geometry_msgs/Quaternion quat
    float32 x
    float32 y
    float32 z
    float32 rot_x
    float32 rot_y
    float32 rot_z
    float32 confidence
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArTagList(null);
    if (msg.artags !== undefined) {
      resolved.artags = new Array(msg.artags.length);
      for (let i = 0; i < resolved.artags.length; ++i) {
        resolved.artags[i] = ArTag.Resolve(msg.artags[i]);
      }
    }
    else {
      resolved.artags = []
    }

    return resolved;
    }
};

module.exports = ArTagList;
