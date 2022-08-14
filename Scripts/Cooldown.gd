extends Node

var time = 0.0
var max_time = 1.2

func _init(max_time):
	self.max_time = 1.2
	self.time = 0

func tick(delta):
	time = max(time - delta, 0)

func is_ready():
	if time > 0:
		return false
	time = max_time
	return true
