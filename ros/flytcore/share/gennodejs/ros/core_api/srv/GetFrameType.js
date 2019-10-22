// Auto-generated. Do not edit!

// (in-package core_api.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetFrameTypeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFrameTypeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFrameTypeRequest
    let len;
    let data = new GetFrameTypeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/GetFrameTypeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0290695c8968cf211689fac5874080b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MAV_TYPE_GENERIC=0
    uint8 MAV_TYPE_FIXED_WING=1
    uint8 MAV_TYPE_QUADROTOR=2
    uint8 MAV_TYPE_COAXIAL=3
    uint8 MAV_TYPE_HELICOPTER=4
    uint8 MAV_TYPE_ANTENNA_TRACKER=5
    uint8 MAV_TYPE_GCS=6
    uint8 MAV_TYPE_AIRSHIP=7
    uint8 MAV_TYPE_FREE_BALLOON=8
    uint8 MAV_TYPE_ROCKET=9
    uint8 MAV_TYPE_GROUND_ROVER=10
    uint8 MAV_TYPE_SURFACE_BOAT=11
    uint8 MAV_TYPE_SUBMARINE=12
    uint8 MAV_TYPE_HEXAROTOR=13
    uint8 MAV_TYPE_OCTOROTOR=14
    uint8 MAV_TYPE_TRICOPTER=15
    uint8 MAV_TYPE_FLAPPING_WING=16
    uint8 MAV_TYPE_KITE=17
    uint8 MAV_TYPE_ONBOARD_CONTROLLER=18
    uint8 MAV_TYPE_VTOL_DUOROTOR=19
    uint8 MAV_TYPE_VTOL_QUADROTOR=20
    uint8 MAV_TYPE_VTOL_TILTROTOR=21
    uint8 MAV_TYPE_VTOL_RESERVED2=22
    uint8 MAV_TYPE_VTOL_RESERVED3=23
    uint8 MAV_TYPE_VTOL_RESERVED4=24
    uint8 MAV_TYPE_VTOL_RESERVED5=25
    uint8 MAV_TYPE_GIMBAL=26
    uint8 MAV_TYPE_ADSB=27
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFrameTypeRequest(null);
    return resolved;
    }
};

// Constants for message
GetFrameTypeRequest.Constants = {
  MAV_TYPE_GENERIC: 0,
  MAV_TYPE_FIXED_WING: 1,
  MAV_TYPE_QUADROTOR: 2,
  MAV_TYPE_COAXIAL: 3,
  MAV_TYPE_HELICOPTER: 4,
  MAV_TYPE_ANTENNA_TRACKER: 5,
  MAV_TYPE_GCS: 6,
  MAV_TYPE_AIRSHIP: 7,
  MAV_TYPE_FREE_BALLOON: 8,
  MAV_TYPE_ROCKET: 9,
  MAV_TYPE_GROUND_ROVER: 10,
  MAV_TYPE_SURFACE_BOAT: 11,
  MAV_TYPE_SUBMARINE: 12,
  MAV_TYPE_HEXAROTOR: 13,
  MAV_TYPE_OCTOROTOR: 14,
  MAV_TYPE_TRICOPTER: 15,
  MAV_TYPE_FLAPPING_WING: 16,
  MAV_TYPE_KITE: 17,
  MAV_TYPE_ONBOARD_CONTROLLER: 18,
  MAV_TYPE_VTOL_DUOROTOR: 19,
  MAV_TYPE_VTOL_QUADROTOR: 20,
  MAV_TYPE_VTOL_TILTROTOR: 21,
  MAV_TYPE_VTOL_RESERVED2: 22,
  MAV_TYPE_VTOL_RESERVED3: 23,
  MAV_TYPE_VTOL_RESERVED4: 24,
  MAV_TYPE_VTOL_RESERVED5: 25,
  MAV_TYPE_GIMBAL: 26,
  MAV_TYPE_ADSB: 27,
}

class GetFrameTypeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.frame_type = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('frame_type')) {
        this.frame_type = initObj.frame_type
      }
      else {
        this.frame_type = 0;
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
    // Serializes a message object of type GetFrameTypeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [frame_type]
    bufferOffset = _serializer.uint8(obj.frame_type, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFrameTypeResponse
    let len;
    let data = new GetFrameTypeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frame_type]
    data.frame_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'core_api/GetFrameTypeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d4473a8567cf1f654bc65d0f4343d36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 frame_type
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFrameTypeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.frame_type !== undefined) {
      resolved.frame_type = msg.frame_type;
    }
    else {
      resolved.frame_type = 0
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
  Request: GetFrameTypeRequest,
  Response: GetFrameTypeResponse,
  md5sum() { return '2ec2f59783788c725a2606f728cb44da'; },
  datatype() { return 'core_api/GetFrameType'; }
};
