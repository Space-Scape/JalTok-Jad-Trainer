extends KinematicBody

onready var blueTex = load("res://Sprites/hitsplatBlue.png")
onready var redTex = load("res://Sprites/hitsplatRed.png")

onready var backSprite = $"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3"

onready var hitSplat = $"../ViewportContainer/Viewport/HitSplat2"
onready var hitSplatNum = $"../ViewportContainer/Viewport/HitsplatNum2"
onready var attTimer = $"../ViewportContainer/Viewport/ProgressBarSprite2/Timer"
onready var hpBar = $"../ViewportContainer/Viewport/TextureProgress"

var hitNum
var accuracyRange
var accuracyNum = 4.5

func _process(_delta):
	accuracyRange = rand_range(0,6)
	
	if Globals.selectBF:
		accuracyNum = 3.5
	if Globals.selectTB:
		accuracyNum = 2.5
	
	if Globals.attJadL == true:
		backSprite.play()
		Globals.attJad = false
		Globals.attJadR = false
	else:
		hitSplatNum.hide()
		hitSplat.hide()
	
	if hpBar.value <= 0:
		attTimer.stop()
		Globals.attJadL = false
		get_parent().queue_free()

func _on_KinematicBody_input_event(_camera, event, _click_position, _click_normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			attTimer.start()
			Globals.attJadR = false
			Globals.attJadL = true
			Globals.attJad = false
			Globals.attHealer1 = false
			Globals.attHealer2 = false
			Globals.attHealer3 = false
			Globals.attHealer4 = false

func _on_Timer_timeout():
	if get_tree().get_root().get_child(1).has_node("JadL"):
		if Globals.tick == 1:
			if Globals.attJadL == true:
				yield($"/root/Spatial/Timer", "timeout")
				$"../JadHit".play()
				hitSplatNum.show()
				hitSplat.show()
				if accuracyRange >= accuracyNum + Globals.accuracyAddSub:
					hitNum = rand_range(1, Globals.maxHit)
					hitSplat.texture = redTex
				else:
					hitNum = 0
					hitSplat.texture = blueTex
				hitSplatNum.bbcode_text = "[center]" + str(hitNum).pad_decimals(0) + "[/center]"
				hpBar.value -= hitNum
				yield($"/root/Spatial/Timer2", "timeout")
		if Globals.tick == 2:
			if Globals.attJadL == true:
				yield($"/root/Spatial/Timer2", "timeout")
				$"../JadHit".play()
				hitSplatNum.show()
				hitSplat.show()
				if accuracyRange >= accuracyNum + Globals.accuracyAddSub:
					hitNum = rand_range(1, Globals.maxHit)
					hitSplat.texture = redTex
				else:
					hitNum = 0
					hitSplat.texture = blueTex
				
				hitSplatNum.bbcode_text = "[center]" + str(hitNum).pad_decimals(0) + "[/center]"
				hpBar.value -= hitNum
				yield($"/root/Spatial/Timer", "timeout")
