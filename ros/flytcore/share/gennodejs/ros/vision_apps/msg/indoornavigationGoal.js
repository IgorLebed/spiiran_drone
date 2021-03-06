// Auto-generated. Do not edit!

// (in-package vision_apps.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class indoornavigationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_list = null;
      this.from_origin = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_list')) {
        this.mission_list = initObj.mission_list
      }
      else {
        this.mission_list = [];
      }
      if (initObj.hasOwnProperty('from_origin')) {
        this.from_origin = initObj.from_origin
      }
      else {
        this.from_origin = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type indoornavigationGoal
    // Serialize message field [mission_list]
    bufferOffset = _arraySerializer.int16(obj.mission_list, buffer, bufferOffset, null);
    // Serialize message field [from_origin]
    bufferOffset = _serializer.bool(obj.from_origin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type indoornavigationGoal
    let len;
    let data = new indoornavigationGoal(null);
    // Deserialize message field [mission_list]
    data.mission_list = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [from_origin]
    data.from_origin = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.mission_list.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_apps/indoornavigationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e026cbae442f208eb8f15b42300d26b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    int16[] mission_list
    bool from_origin
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new indoornavigationGoal(null);
    if (msg.mission_list !== undefined) {
      resolved.mission_list = msg.mission_list;
    }
    else {
      resolved.mission_list = []
    }

    if (msg.from_origin !== undefined) {
      resolved.from_origin = msg.from_origin;
    }
    else {
      resolved.from_origin = false
    }

    return resolved;
    }
};

module.exports = indoornavigationGoal;
