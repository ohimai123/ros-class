#!/us/bin/env pyhon

import rospy #for c++ import roscpp
import RPi.GPIO as GPIO
import time
#import random
from hello_ros.msg import led_state

led = led_state()

def pub_ledState():
    
    #states =[0,1]

    led_pub = rospy.Publisher("led_state",led_state, queue_size = 10)
    
    rospy.init_node("ledState", anonymous = False)
    
    rate = rospy.Rate(0.5)

    while not rospy.is_shutdown():

        #state_value = random.randint(0,1)

        user = input("enter motor direcion: ")

        led.led_state = user

        rospy.loginfo(user)

        led_pub.publish(led)

        rate.sleep()



if __name__ == "__main__":

        try:

            pub_ledState()

        except rospy.ROSInterruptException:

            pass
