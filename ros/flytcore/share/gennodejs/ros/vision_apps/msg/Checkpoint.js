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

class Checkpoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.checkpoint_id = null;
      this.tag_id = null;
      this.tag_x = null;
      this.tag_y = null;
      this.tag_z = null;
      this.tag_yaw = null;
      this.tag_size = null;
    }
    else {
      if (initObj.hasOwnProperty('checkpoint_id')) {
        this.checkpoint_id = initObj.checkpoint_id
      }
      else {
        this.checkpoint_id = 0;
      }
      if (initObj.hasOwnProperty('tag_id')) {
        this.tag_id = initObj.tag_id
      }
      else {
        this.tag_id = 0;
      }
      if (initObj.hasOwnProperty('tag_x')) {
        this.tag_x = initObj.tag_x
      }
      else {
        this.tag_x = 0.0;
      }
      if (initObj.hasOwnProperty('tag_y')) {
        this.tag_y = initObj.tag_y
      }
      else {
        this.tag_y = 0.0;
      }
      if (initObj.hasOwnProperty('tag_z')) {
        this.tag_z = initObj.tag_z
      }
      else {
        this.tag_z = 0.0;
      }
      if (initObj.hasOwnProperty('tag_yaw')) {
        this.tag_yaw = initObj.tag_yaw
      }
      else {
        this.tag_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('tag_size')) {
        this.tag_size = initObj.tag_size
      }
      else {
        this.tag_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Checkpoint
    // Serialize message field [checkpoint_id]
    bufferOffset = _serializer.uint8(obj.checkpoint_id, buffer, bufferOffset);
    // Serialize message field [tag_id]
    bufferOffset = _serializer.uint8(obj.tag_id, buffer, bufferOffset);
    // Serialize message field [tag_x]
    bufferOffset = _serializer.float32(obj.tag_x, buffer, bufferOffset);
    // Serialize message field [tag_y]
    bufferOffset = _serializer.float32(obj.tag_y, buffer, bufferOffset);
    // Serialize message field [tag_z]
    bufferOffset = _serializer.float32(obj.tag_z, buffer, bufferOffset);
    // Serialize message field [tag_yaw]
    bufferOffset = _serializer.float32(obj.tag_yaw, buffer, bufferOffset);
    // Serialize message field [tag_size]
    bufferOffset = _serializer.float32(obj.tag_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Checkpoint
    let len;
    let data = new Checkpoint(null);
    // Deserialize message field [checkpoint_id]
    data.checkpoint_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tag_id]
    data.tag_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tag_x]
    data.tag_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tag_y]
    data.tag_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tag_z]
    data.tag_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tag_yaw]
    data.tag_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tag_size]
    data.tag_size = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_apps/Checkpoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2a1ecea1fa4e57d3d72769bae7bcf7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 checkpoint_id
    uint8 tag_id
    float32 tag_x
    float32 tag_y
    float32 tag_z
    float32 tag_yaw
    float32 tag_size
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Checkpoint(null);
    if (msg.checkpoint_id !== undefined) {
      resolved.checkpoint_id = msg.checkpoint_id;
    }
    else {
      resolved.checkpoint_id = 0
    }

    if (msg.tag_id !== undefined) {
      resolved.tag_id = msg.tag_id;
    }
    else {
      resolved.tag_id = 0
    }

    if (msg.tag_x !== undefined) {
      resolved.tag_x = msg.tag_x;
    }
    else {
      resolved.tag_x = 0.0
    }

    if (msg.tag_y !== undefined) {
      resolved.tag_y = msg.tag_y;
    }
    else {
      resolved.tag_y = 0.0
    }

    if (msg.tag_z !== undefined) {
      resolved.tag_z = msg.tag_z;
    }
    else {
      resolved.tag_z = 0.0
    }

    if (msg.tag_yaw !== undefined) {
      resolved.tag_yaw = msg.tag_yaw;
    }
    else {
      resolved.tag_yaw = 0.0
    }

    if (msg.tag_size !== undefined) {
      resolved.tag_size = msg.tag_size;
    }
    else {
      resolved.tag_size = 0.0
    }

    return resolved;
    }
};

module.exports = Checkpoint;
