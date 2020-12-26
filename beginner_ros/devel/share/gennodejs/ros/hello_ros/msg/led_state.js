// Auto-generated. Do not edit!

// (in-package hello_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class led_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_state = null;
    }
    else {
      if (initObj.hasOwnProperty('led_state')) {
        this.led_state = initObj.led_state
      }
      else {
        this.led_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type led_state
    // Serialize message field [led_state]
    bufferOffset = _serializer.int64(obj.led_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type led_state
    let len;
    let data = new led_state(null);
    // Deserialize message field [led_state]
    data.led_state = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_ros/led_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '569a11dc0ada46c5a0c7d383fcce43c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 led_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new led_state(null);
    if (msg.led_state !== undefined) {
      resolved.led_state = msg.led_state;
    }
    else {
      resolved.led_state = 0
    }

    return resolved;
    }
};

module.exports = led_state;
