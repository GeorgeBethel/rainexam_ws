;; Auto-generated. Do not edit!


(when (boundp 'motion_model::encoder)
  (if (not (find-package "MOTION_MODEL"))
    (make-package "MOTION_MODEL"))
  (shadow 'encoder (find-package "MOTION_MODEL")))
(unless (find-package "MOTION_MODEL::ENCODER")
  (make-package "MOTION_MODEL::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude encoder.msg.html


(defclass motion_model::encoder
  :super ros::object
  :slots (_encoder_ticks ))

(defmethod motion_model::encoder
  (:init
   (&key
    ((:encoder_ticks __encoder_ticks) 0)
    )
   (send-super :init)
   (setq _encoder_ticks (round __encoder_ticks))
   self)
  (:encoder_ticks
   (&optional __encoder_ticks)
   (if __encoder_ticks (setq _encoder_ticks __encoder_ticks)) _encoder_ticks)
  (:serialization-length
   ()
   (+
    ;; int64 _encoder_ticks
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _encoder_ticks
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _encoder_ticks (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _encoder_ticks) (= (length (_encoder_ticks . bv)) 2)) ;; bignum
              (write-long (ash (elt (_encoder_ticks . bv) 0) 0) s)
              (write-long (ash (elt (_encoder_ticks . bv) 1) -1) s))
             ((and (class _encoder_ticks) (= (length (_encoder_ticks . bv)) 1)) ;; big1
              (write-long (elt (_encoder_ticks . bv) 0) s)
              (write-long (if (>= _encoder_ticks 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _encoder_ticks s)(write-long (if (>= _encoder_ticks 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _encoder_ticks
#+(or :alpha :irix6 :x86_64)
      (setf _encoder_ticks (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _encoder_ticks (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get motion_model::encoder :md5sum-) "e570f1a7fbadec2be02bf436b46ef963")
(setf (get motion_model::encoder :datatype-) "motion_model/encoder")
(setf (get motion_model::encoder :definition-)
      "# this message contains the data type for encoder ticks. use this message variable in your publisher node

int64 encoder_ticks  #variable that holds the number of encoder ticks

")



(provide :motion_model/encoder "e570f1a7fbadec2be02bf436b46ef963")


