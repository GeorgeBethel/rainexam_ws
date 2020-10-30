// Auto-generated. Do not edit!

// (in-package motion_model.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_a = null;
      this.motor_a = null;
      this.motor_b = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_a')) {
        this.enable_a = initObj.enable_a
      }
      else {
        this.enable_a = 0;
      }
      if (initObj.hasOwnProperty('motor_a')) {
        this.motor_a = initObj.motor_a
      }
      else {
        this.motor_a = 0;
      }
      if (initObj.hasOwnProperty('motor_b')) {
        this.motor_b = initObj.motor_b
      }
      else {
        this.motor_b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motor
    // Serialize message field [enable_a]
    bufferOffset = _serializer.int64(obj.enable_a, buffer, bufferOffset);
    // Serialize message field [motor_a]
    bufferOffset = _serializer.int64(obj.motor_a, buffer, bufferOffset);
    // Serialize message field [motor_b]
    bufferOffset = _serializer.int64(obj.motor_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motor
    let len;
    let data = new motor(null);
    // Deserialize message field [enable_a]
    data.enable_a = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [motor_a]
    data.motor_a = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [motor_b]
    data.motor_b = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_model/motor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16a4c61e6707493fabc6919adea54f38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #this message file contains all the variables used for the motor driver. this is for only one motor
    
    int64 enable_a  #enable pin for motor A
    
    # direction pins for motor A
    
    int64 motor_a
    int64 motor_b
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motor(null);
    if (msg.enable_a !== undefined) {
      resolved.enable_a = msg.enable_a;
    }
    else {
      resolved.enable_a = 0
    }

    if (msg.motor_a !== undefined) {
      resolved.motor_a = msg.motor_a;
    }
    else {
      resolved.motor_a = 0
    }

    if (msg.motor_b !== undefined) {
      resolved.motor_b = msg.motor_b;
    }
    else {
      resolved.motor_b = 0
    }

    return resolved;
    }
};

module.exports = motor;
