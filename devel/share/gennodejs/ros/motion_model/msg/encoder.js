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

class encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.encoder_ticks = null;
    }
    else {
      if (initObj.hasOwnProperty('encoder_ticks')) {
        this.encoder_ticks = initObj.encoder_ticks
      }
      else {
        this.encoder_ticks = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type encoder
    // Serialize message field [encoder_ticks]
    bufferOffset = _serializer.int64(obj.encoder_ticks, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type encoder
    let len;
    let data = new encoder(null);
    // Deserialize message field [encoder_ticks]
    data.encoder_ticks = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_model/encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e570f1a7fbadec2be02bf436b46ef963';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # this message contains the data type for encoder ticks. use this message variable in your publisher node
    
    int64 encoder_ticks  #variable that holds the number of encoder ticks
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new encoder(null);
    if (msg.encoder_ticks !== undefined) {
      resolved.encoder_ticks = msg.encoder_ticks;
    }
    else {
      resolved.encoder_ticks = 0
    }

    return resolved;
    }
};

module.exports = encoder;
