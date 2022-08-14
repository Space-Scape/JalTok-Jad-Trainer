extends AnimatedSprite3D

func _process(_delta):
	if Globals.attJad == true or Globals.attJadL == true or Globals.attJadR == true:
		playing = true
	else:
		stop()
