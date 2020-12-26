;; Auto-generated. Do not edit!


(when (boundp 'hello_ros::led_state)
  (if (not (find-package "HELLO_ROS"))
    (make-package "HELLO_ROS"))
  (shadow 'led_state (find-package "HELLO_ROS")))
(unless (find-package "HELLO_ROS::LED_STATE")
  (make-package "HELLO_ROS::LED_STATE"))

(in-package "ROS")
;;//! \htmlinclude led_state.msg.html


(defclass hello_ros::led_state
  :super ros::object
  :slots (_led_state ))

(defmethod hello_ros::led_state
  (:init
   (&key
    ((:led_state __led_state) 0)
    )
   (send-super :init)
   (setq _led_state (round __led_state))
   self)
  (:led_state
   (&optional __led_state)
   (if __led_state (setq _led_state __led_state)) _led_state)
  (:serialization-length
   ()
   (+
    ;; int64 _led_state
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _led_state
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _led_state (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _led_state) (= (length (_led_state . bv)) 2)) ;; bignum
              (write-long (ash (elt (_led_state . bv) 0) 0) s)
              (write-long (ash (elt (_led_state . bv) 1) -1) s))
             ((and (class _led_state) (= (length (_led_state . bv)) 1)) ;; big1
              (write-long (elt (_led_state . bv) 0) s)
              (write-long (if (>= _led_state 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _led_state s)(write-long (if (>= _led_state 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _led_state
#+(or :alpha :irix6 :x86_64)
      (setf _led_state (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _led_state (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get hello_ros::led_state :md5sum-) "569a11dc0ada46c5a0c7d383fcce43c4")
(setf (get hello_ros::led_state :datatype-) "hello_ros/led_state")
(setf (get hello_ros::led_state :definition-)
      "int64 led_state

")



(provide :hello_ros/led_state "569a11dc0ada46c5a0c7d383fcce43c4")


