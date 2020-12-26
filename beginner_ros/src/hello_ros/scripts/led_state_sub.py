#!/usr/bin/env python

import rospy

import RPi.GPIO as GPIO
import time
from hello_ros.msg import led_state

GPIO.setmode(GPIO.BCM)

led_motor1 = 2
led_motor2 = 3

GPIO.setup(led_motor1,GPIO.OUT)
GPIO.setup(led_motor2,GPIO.OUT)



#ledinfo = led_state()



def callback(data):

    ledstate = data.led_state

    if ledstate == 4:

        GPIO.output(led_motor1,True)
        GPIO.output(led_motor2,False)

    elif ledstate == 5:

        GPIO.output(led_motor1,False)
        GPIO.output(led_motor2,True)

    elif ledstate == 6:

         GPIO.output(led_motor1,True)
         GPIO.output(led_motor2,True)
    else:

        pass
        

def led_subscriber():

    rospy.loginfo("recieving...")

    rospy.init_node("ledcontrol",anonymous=False)

    rospy.Subscriber("led_state",led_state,callback)
    
    rospy.spin()




if __name__ == "__main__":

    try:

        led_subscriber()

    except rospy.ROSInterruptException:

        pass

