;; Auto-generated. Do not edit!


(when (boundp 'motion_model::motor)
  (if (not (find-package "MOTION_MODEL"))
    (make-package "MOTION_MODEL"))
  (shadow 'motor (find-package "MOTION_MODEL")))
(unless (find-package "MOTION_MODEL::MOTOR")
  (make-package "MOTION_MODEL::MOTOR"))

(in-package "ROS")
;;//! \htmlinclude motor.msg.html


(defclass motion_model::motor
  :super ros::object
  :slots (_enable_a _motor_a _motor_b ))

(defmethod motion_model::motor
  (:init
   (&key
    ((:enable_a __enable_a) 0)
    ((:motor_a __motor_a) 0)
    ((:motor_b __motor_b) 0)
    )
   (send-super :init)
   (setq _enable_a (round __enable_a))
   (setq _motor_a (round __motor_a))
   (setq _motor_b (round __motor_b))
   self)
  (:enable_a
   (&optional __enable_a)
   (if __enable_a (setq _enable_a __enable_a)) _enable_a)
  (:motor_a
   (&optional __motor_a)
   (if __motor_a (setq _motor_a __motor_a)) _motor_a)
  (:motor_b
   (&optional __motor_b)
   (if __motor_b (setq _motor_b __motor_b)) _motor_b)
  (:serialization-length
   ()
   (+
    ;; int64 _enable_a
    8
    ;; int64 _motor_a
    8
    ;; int64 _motor_b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _enable_a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _enable_a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _enable_a) (= (length (_enable_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_enable_a . bv) 0) 0) s)
              (write-long (ash (elt (_enable_a . bv) 1) -1) s))
             ((and (class _enable_a) (= (length (_enable_a . bv)) 1)) ;; big1
              (write-long (elt (_enable_a . bv) 0) s)
              (write-long (if (>= _enable_a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _enable_a s)(write-long (if (>= _enable_a 0) 0 #xffffffff) s)))
     ;; int64 _motor_a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _motor_a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _motor_a) (= (length (_motor_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_motor_a . bv) 0) 0) s)
              (write-long (ash (elt (_motor_a . bv) 1) -1) s))
             ((and (class _motor_a) (= (length (_motor_a . bv)) 1)) ;; big1
              (write-long (elt (_motor_a . bv) 0) s)
              (write-long (if (>= _motor_a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _motor_a s)(write-long (if (>= _motor_a 0) 0 #xffffffff) s)))
     ;; int64 _motor_b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _motor_b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _motor_b) (= (length (_motor_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_motor_b . bv) 0) 0) s)
              (write-long (ash (elt (_motor_b . bv) 1) -1) s))
             ((and (class _motor_b) (= (length (_motor_b . bv)) 1)) ;; big1
              (write-long (elt (_motor_b . bv) 0) s)
              (write-long (if (>= _motor_b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _motor_b s)(write-long (if (>= _motor_b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _enable_a
#+(or :alpha :irix6 :x86_64)
      (setf _enable_a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _enable_a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _motor_a
#+(or :alpha :irix6 :x86_64)
      (setf _motor_a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _motor_a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _motor_b
#+(or :alpha :irix6 :x86_64)
      (setf _motor_b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _motor_b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get motion_model::motor :md5sum-) "16a4c61e6707493fabc6919adea54f38")
(setf (get motion_model::motor :datatype-) "motion_model/motor")
(setf (get motion_model::motor :definition-)
      "#this message file contains all the variables used for the motor driver. this is for only one motor

int64 enable_a  #enable pin for motor A

# direction pins for motor A

int64 motor_a
int64 motor_b


")



(provide :motion_model/motor "16a4c61e6707493fabc6919adea54f38")


