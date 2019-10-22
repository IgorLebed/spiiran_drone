#pragma once
// MESSAGE PAYLOAD_ADC PACKING

#define MAVLINK_MSG_ID_PAYLOAD_ADC 229

MAVPACKED(
typedef struct __mavlink_payload_adc_t {
 uint64_t time_usec; /*< Timestamp (micros since boot or Unix epoch)*/
 float adc_v[8]; /*< ADC values in V*/
}) mavlink_payload_adc_t;

#define MAVLINK_MSG_ID_PAYLOAD_ADC_LEN 40
#define MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN 40
#define MAVLINK_MSG_ID_229_LEN 40
#define MAVLINK_MSG_ID_229_MIN_LEN 40

#define MAVLINK_MSG_ID_PAYLOAD_ADC_CRC 217
#define MAVLINK_MSG_ID_229_CRC 217

#define MAVLINK_MSG_PAYLOAD_ADC_FIELD_ADC_V_LEN 8

#if MAVLINK_COMMAND_24BIT
#define MAVLINK_MESSAGE_INFO_PAYLOAD_ADC { \
    229, \
    "PAYLOAD_ADC", \
    2, \
    {  { "time_usec", NULL, MAVLINK_TYPE_UINT64_T, 0, 0, offsetof(mavlink_payload_adc_t, time_usec) }, \
         { "adc_v", NULL, MAVLINK_TYPE_FLOAT, 8, 8, offsetof(mavlink_payload_adc_t, adc_v) }, \
         } \
}
#else
#define MAVLINK_MESSAGE_INFO_PAYLOAD_ADC { \
    "PAYLOAD_ADC", \
    2, \
    {  { "time_usec", NULL, MAVLINK_TYPE_UINT64_T, 0, 0, offsetof(mavlink_payload_adc_t, time_usec) }, \
         { "adc_v", NULL, MAVLINK_TYPE_FLOAT, 8, 8, offsetof(mavlink_payload_adc_t, adc_v) }, \
         } \
}
#endif

/**
 * @brief Pack a payload_adc message
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 *
 * @param time_usec Timestamp (micros since boot or Unix epoch)
 * @param adc_v ADC values in V
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_payload_adc_pack(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg,
                               uint64_t time_usec, const float *adc_v)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char buf[MAVLINK_MSG_ID_PAYLOAD_ADC_LEN];
    _mav_put_uint64_t(buf, 0, time_usec);
    _mav_put_float_array(buf, 8, adc_v, 8);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN);
#else
    mavlink_payload_adc_t packet;
    packet.time_usec = time_usec;
    mav_array_memcpy(packet.adc_v, adc_v, sizeof(float)*8);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN);
#endif

    msg->msgid = MAVLINK_MSG_ID_PAYLOAD_ADC;
    return mavlink_finalize_message(msg, system_id, component_id, MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_CRC);
}

/**
 * @brief Pack a payload_adc message on a channel
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message will be sent over
 * @param msg The MAVLink message to compress the data into
 * @param time_usec Timestamp (micros since boot or Unix epoch)
 * @param adc_v ADC values in V
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_payload_adc_pack_chan(uint8_t system_id, uint8_t component_id, uint8_t chan,
                               mavlink_message_t* msg,
                                   uint64_t time_usec,const float *adc_v)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char buf[MAVLINK_MSG_ID_PAYLOAD_ADC_LEN];
    _mav_put_uint64_t(buf, 0, time_usec);
    _mav_put_float_array(buf, 8, adc_v, 8);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN);
#else
    mavlink_payload_adc_t packet;
    packet.time_usec = time_usec;
    mav_array_memcpy(packet.adc_v, adc_v, sizeof(float)*8);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN);
#endif

    msg->msgid = MAVLINK_MSG_ID_PAYLOAD_ADC;
    return mavlink_finalize_message_chan(msg, system_id, component_id, chan, MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_CRC);
}

/**
 * @brief Encode a payload_adc struct
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 * @param payload_adc C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_payload_adc_encode(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg, const mavlink_payload_adc_t* payload_adc)
{
    return mavlink_msg_payload_adc_pack(system_id, component_id, msg, payload_adc->time_usec, payload_adc->adc_v);
}

/**
 * @brief Encode a payload_adc struct on a channel
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message will be sent over
 * @param msg The MAVLink message to compress the data into
 * @param payload_adc C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_payload_adc_encode_chan(uint8_t system_id, uint8_t component_id, uint8_t chan, mavlink_message_t* msg, const mavlink_payload_adc_t* payload_adc)
{
    return mavlink_msg_payload_adc_pack_chan(system_id, component_id, chan, msg, payload_adc->time_usec, payload_adc->adc_v);
}

/**
 * @brief Send a payload_adc message
 * @param chan MAVLink channel to send the message
 *
 * @param time_usec Timestamp (micros since boot or Unix epoch)
 * @param adc_v ADC values in V
 */
#ifdef MAVLINK_USE_CONVENIENCE_FUNCTIONS

static inline void mavlink_msg_payload_adc_send(mavlink_channel_t chan, uint64_t time_usec, const float *adc_v)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char buf[MAVLINK_MSG_ID_PAYLOAD_ADC_LEN];
    _mav_put_uint64_t(buf, 0, time_usec);
    _mav_put_float_array(buf, 8, adc_v, 8);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_PAYLOAD_ADC, buf, MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_CRC);
#else
    mavlink_payload_adc_t packet;
    packet.time_usec = time_usec;
    mav_array_memcpy(packet.adc_v, adc_v, sizeof(float)*8);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_PAYLOAD_ADC, (const char *)&packet, MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_CRC);
#endif
}

/**
 * @brief Send a payload_adc message
 * @param chan MAVLink channel to send the message
 * @param struct The MAVLink struct to serialize
 */
static inline void mavlink_msg_payload_adc_send_struct(mavlink_channel_t chan, const mavlink_payload_adc_t* payload_adc)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    mavlink_msg_payload_adc_send(chan, payload_adc->time_usec, payload_adc->adc_v);
#else
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_PAYLOAD_ADC, (const char *)payload_adc, MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_CRC);
#endif
}

#if MAVLINK_MSG_ID_PAYLOAD_ADC_LEN <= MAVLINK_MAX_PAYLOAD_LEN
/*
  This varient of _send() can be used to save stack space by re-using
  memory from the receive buffer.  The caller provides a
  mavlink_message_t which is the size of a full mavlink message. This
  is usually the receive buffer for the channel, and allows a reply to an
  incoming message with minimum stack space usage.
 */
static inline void mavlink_msg_payload_adc_send_buf(mavlink_message_t *msgbuf, mavlink_channel_t chan,  uint64_t time_usec, const float *adc_v)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char *buf = (char *)msgbuf;
    _mav_put_uint64_t(buf, 0, time_usec);
    _mav_put_float_array(buf, 8, adc_v, 8);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_PAYLOAD_ADC, buf, MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_CRC);
#else
    mavlink_payload_adc_t *packet = (mavlink_payload_adc_t *)msgbuf;
    packet->time_usec = time_usec;
    mav_array_memcpy(packet->adc_v, adc_v, sizeof(float)*8);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_PAYLOAD_ADC, (const char *)packet, MAVLINK_MSG_ID_PAYLOAD_ADC_MIN_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN, MAVLINK_MSG_ID_PAYLOAD_ADC_CRC);
#endif
}
#endif

#endif

// MESSAGE PAYLOAD_ADC UNPACKING


/**
 * @brief Get field time_usec from payload_adc message
 *
 * @return Timestamp (micros since boot or Unix epoch)
 */
static inline uint64_t mavlink_msg_payload_adc_get_time_usec(const mavlink_message_t* msg)
{
    return _MAV_RETURN_uint64_t(msg,  0);
}

/**
 * @brief Get field adc_v from payload_adc message
 *
 * @return ADC values in V
 */
static inline uint16_t mavlink_msg_payload_adc_get_adc_v(const mavlink_message_t* msg, float *adc_v)
{
    return _MAV_RETURN_float_array(msg, adc_v, 8,  8);
}

/**
 * @brief Decode a payload_adc message into a struct
 *
 * @param msg The message to decode
 * @param payload_adc C-struct to decode the message contents into
 */
static inline void mavlink_msg_payload_adc_decode(const mavlink_message_t* msg, mavlink_payload_adc_t* payload_adc)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    payload_adc->time_usec = mavlink_msg_payload_adc_get_time_usec(msg);
    mavlink_msg_payload_adc_get_adc_v(msg, payload_adc->adc_v);
#else
        uint8_t len = msg->len < MAVLINK_MSG_ID_PAYLOAD_ADC_LEN? msg->len : MAVLINK_MSG_ID_PAYLOAD_ADC_LEN;
        memset(payload_adc, 0, MAVLINK_MSG_ID_PAYLOAD_ADC_LEN);
    memcpy(payload_adc, _MAV_PAYLOAD(msg), len);
#endif
}
