#!/usr/bin/env python

import rospy  

import RPi.GPIO as GPIO
import time

from motion_model.msg import motor

class run_motor(object):
	
	def __init__(self):
		
		GPIO.setmode(GPIO.BCM)
		self.motorController = motor()

		# motor variables

		self.motorController.enable_a = 8
		self.motorController.motor_a = 13
		self.motorController.motor_b = 20

		#setting up GPIO pins

		GPIO.setup(self.motorController.enable_a, GPIO.OUT)
		GPIO.setup(self.motorController.motor_a, GPIO.OUT)
		GPIO.setup(self.motorController.motor_b, GPIO.OUT)
		self.speed = GPIO.PWM(self.motorController.enable_a, 100)
		self.speed.start(0)

	def __run_HighSpeed(self):

		GPIO.output(self.motorController.motor_a, True)
		GPIO.output(self.motorController.motor_b, False)
		self.speed.ChangeDutyCycle(100)
		

	def __run_LowSpeed(self):

		
		GPIO.output(self.motorController.motor_a, True)
		GPIO.output(self.motorController.motor_b, False)
		self.speed.ChangeDutyCycle(50)

	def __stop_motor(self):

		self.speed.ChangeDutyCycle(0)
		GPIO.output(self.motorController.motor_a, False)
		GPIO.output(self.motorController.motor_b, False)
	
	def run(self):

		self.__run_HighSpeed()
		time.sleep(5)
		self.__run_LowSpeed()
		
		time.sleep(5)
		self.__stop_motor()
		time.sleep(1)
	
	def stop(self):

		self.__stop_motor()


if __name__ == "__main__":

	Motor = run_motor()
	while True:

		Motor.run()


