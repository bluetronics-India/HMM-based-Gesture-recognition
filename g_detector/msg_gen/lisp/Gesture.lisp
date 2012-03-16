; Auto-generated. Do not edit!


(cl:in-package g_detector-msg)


;//! \htmlinclude Gesture.msg.html

(cl:defclass <Gesture> (roslisp-msg-protocol:ros-message)
  ((f_vec
    :reader f_vec
    :initarg :f_vec
    :type (cl:vector g_detector-msg:featureVector)
   :initform (cl:make-array 0 :element-type 'g_detector-msg:featureVector :initial-element (cl:make-instance 'g_detector-msg:featureVector))))
)

(cl:defclass Gesture (<Gesture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gesture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gesture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name g_detector-msg:<Gesture> is deprecated: use g_detector-msg:Gesture instead.")))

(cl:ensure-generic-function 'f_vec-val :lambda-list '(m))
(cl:defmethod f_vec-val ((m <Gesture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g_detector-msg:f_vec-val is deprecated.  Use g_detector-msg:f_vec instead.")
  (f_vec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gesture>) ostream)
  "Serializes a message object of type '<Gesture>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'f_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'f_vec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gesture>) istream)
  "Deserializes a message object of type '<Gesture>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'f_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'f_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'g_detector-msg:featureVector))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gesture>)))
  "Returns string type for a message object of type '<Gesture>"
  "g_detector/Gesture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gesture)))
  "Returns string type for a message object of type 'Gesture"
  "g_detector/Gesture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gesture>)))
  "Returns md5sum for a message object of type '<Gesture>"
  "bb80121350d542d4d689c261e0480250")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gesture)))
  "Returns md5sum for a message object of type 'Gesture"
  "bb80121350d542d4d689c261e0480250")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gesture>)))
  "Returns full string definition for message of type '<Gesture>"
  (cl:format cl:nil "featureVector[] f_vec~%================================================================================~%MSG: g_detector/featureVector~%float32 l_h_distance~%float32 l_e_distance~%float32 r_h_distance~%float32 r_e_distance~%float32 l_h_direction~%float32 l_e_direction~%float32 r_h_direction~%float32 r_e_direction~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gesture)))
  "Returns full string definition for message of type 'Gesture"
  (cl:format cl:nil "featureVector[] f_vec~%================================================================================~%MSG: g_detector/featureVector~%float32 l_h_distance~%float32 l_e_distance~%float32 r_h_distance~%float32 r_e_distance~%float32 l_h_direction~%float32 l_e_direction~%float32 r_h_direction~%float32 r_e_direction~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gesture>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'f_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gesture>))
  "Converts a ROS message object to a list"
  (cl:list 'Gesture
    (cl:cons ':f_vec (f_vec msg))
))
