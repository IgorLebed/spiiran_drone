// Auto-generated. Do not edit!

// (in-package cpp_api.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UserData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.data_string = null;
      this.data_double = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('data_string')) {
        this.data_string = initObj.data_string
      }
      else {
        this.data_string = [];
      }
      if (initObj.hasOwnProperty('data_double')) {
        this.data_double = initObj.data_double
      }
      else {
        this.data_double = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UserData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [data_string]
    bufferOffset = _arraySerializer.string(obj.data_string, buffer, bufferOffset, null);
    // Serialize message field [data_double]
    bufferOffset = _arraySerializer.float64(obj.data_double, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UserData
    let len;
    let data = new UserData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [data_string]
    data.data_string = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [data_double]
    data.data_double = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.data_string.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.data_double.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cpp_api/UserData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1b785877a526c8a4bf870310420a136';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string[] data_string
    float64[] data_double
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UserData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.data_string !== undefined) {
      resolved.data_string = msg.data_string;
    }
    else {
      resolved.data_string = []
    }

    if (msg.data_double !== undefined) {
      resolved.data_double = msg.data_double;
    }
    else {
      resolved.data_double = []
    }

    return resolved;
    }
};

module.exports = UserData;
