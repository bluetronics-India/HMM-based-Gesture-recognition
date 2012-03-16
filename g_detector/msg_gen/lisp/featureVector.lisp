; Auto-generated. Do not edit!


(cl:in-package g_detector-msg)


;//! \htmlinclude featureVector.msg.html

(cl:defclass <featureVector> (roslisp-msg-protocol:ros-message)
  ((l_h_distance
    :reader l_h_distance
    :initarg :l_h_distance
    :type cl:float
    :initform 0.0)
   (l_e_distance
    :reader l_e_distance
    :initarg :l_e_distance
    :type cl:float
    :initform 0.0)
   (r_h_distance
    :reader r_h_distance
    :initarg :r_h_distance
    :type cl:float
    :initform 0.0)
   (r_e_distance
    :reader r_e_distance
    :initarg :r_e_distance
    :type cl:float
    :initform 0.0)
   (l_h_direction
    :reader l_h_direction
    :initarg :l_h_direction
    :type cl:float
    :initform 0.0)
   (l_e_direction
    :reader l_e_direction
    :initarg :l_e_direction
    :type cl:float
    :initform 0.0)
   (r_h_direction
    :reader r_h_direction
    :initarg :r_h_direction
    :type cl:float
    :initform 0.0)
   (r_e_direction
    :reader r_e_direction
    :initarg :r_e_direction
    :type cl:float
    :initform 0.0))
)

(cl:defclass featureVector (<featureVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <featureVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'featureVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name g_detector-msg:<featureVector> is deprecated: use g_detector-msg:featureVector instead.")))

(cl:ensure-generic-function 'l_h_distance-val :lambda-list '(m))
(cl:defmethod l_h_distance-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:l_h_distance-val is deprecated.  Use g_detector-msg:l_h_distance instead.")
  (l_h_distance m))

(cl:ensure-generic-function 'l_e_distance-val :lambda-list '(m))
(cl:defmethod l_e_distance-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:l_e_distance-val is deprecated.  Use g_detector-msg:l_e_distance instead.")
  (l_e_distance m))

(cl:ensure-generic-function 'r_h_distance-val :lambda-list '(m))
(cl:defmethod r_h_distance-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:r_h_distance-val is deprecated.  Use g_detector-msg:r_h_distance instead.")
  (r_h_distance m))

(cl:ensure-generic-function 'r_e_distance-val :lambda-list '(m))
(cl:defmethod r_e_distance-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:r_e_distance-val is deprecated.  Use g_detector-msg:r_e_distance instead.")
  (r_e_distance m))

(cl:ensure-generic-function 'l_h_direction-val :lambda-list '(m))
(cl:defmethod l_h_direction-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:l_h_direction-val is deprecated.  Use g_detector-msg:l_h_direction instead.")
  (l_h_direction m))

(cl:ensure-generic-function 'l_e_direction-val :lambda-list '(m))
(cl:defmethod l_e_direction-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:l_e_direction-val is deprecated.  Use g_detector-msg:l_e_direction instead.")
  (l_e_direction m))

(cl:ensure-generic-function 'r_h_direction-val :lambda-list '(m))
(cl:defmethod r_h_direction-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:r_h_direction-val is deprecated.  Use g_detector-msg:r_h_direction instead.")
  (r_h_direction m))

(cl:ensure-generic-function 'r_e_direction-val :lambda-list '(m))
(cl:defmethod r_e_direction-val ((m <featureVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:r_e_direction-val is deprecated.  Use g_detector-msg:r_e_direction instead.")
  (r_e_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <featureVector>) ostream)
  "Serializes a message object of type '<featureVector>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_h_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_e_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_h_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_e_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_h_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_e_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_h_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_e_direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <featureVector>) istream)
  "Deserializes a message object of type '<featureVector>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_h_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_e_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_h_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_e_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_h_direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_e_direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_h_direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_e_direction) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<featureVector>)))
  "Returns string type for a message object of type '<featureVector>"
  "g_detector/featureVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'featureVector)))
  "Returns string type for a message object of type 'featureVector"
  "g_detector/featureVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<featureVector>)))
  "Returns md5sum for a message object of type '<featureVector>"
  "467515a83abd8a7e5f0f9239e1ea6a91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'featureVector)))
  "Returns md5sum for a message object of type 'featureVector"
  "467515a83abd8a7e5f0f9239e1ea6a91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<featureVector>)))
  "Returns full string definition for message of type '<featureVector>"
  (cl:format cl:nil "float32 l_h_distance~%float32 l_e_distance~%float32 r_h_distance~%float32 r_e_distance~%float32 l_h_direction~%float32 l_e_direction~%float32 r_h_direction~%float32 r_e_direction~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'featureVector)))
  "Returns full string definition for message of type 'featureVector"
  (cl:format cl:nil "float32 l_h_distance~%float32 l_e_distance~%float32 r_h_distance~%float32 r_e_distance~%float32 l_h_direction~%float32 l_e_direction~%float32 r_h_direction~%float32 r_e_direction~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <featureVector>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <featureVector>))
  "Converts a ROS message object to a list"
  (cl:list 'featureVector
    (cl:cons ':l_h_distance (l_h_distance msg))
    (cl:cons ':l_e_distance (l_e_distance msg))
    (cl:cons ':r_h_distance (r_h_distance msg))
    (cl:cons ':r_e_distance (r_e_distance msg))
    (cl:cons ':l_h_direction (l_h_direction msg))
    (cl:cons ':l_e_direction (l_e_direction msg))
    (cl:cons ':r_h_direction (r_h_direction msg))
    (cl:cons ':r_e_direction (r_e_direction msg))
))
