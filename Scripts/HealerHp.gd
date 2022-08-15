extends ProgressBar

onready var blueTex = load("res://Sprites/hitsplatBlue.png")
onready var redTex = load("res://Sprites/hitsplatRed.png")

onready var backSprite = $"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3"

onready var hitSplat = $"../HealerHitSplat"
onready var hitSplatNum = $"../HealerHitSplat/HitNum"
onready var attTimer = $"../HitTimer"
onready var hpBar = self

var hitNum
var accuracyRange
var accuracyNum = 3

func _ready():
	accuracyRange = rand_range(0,6)
	
	if Globals.attHealer1:
		$"../Healer".play()
		hitSplatNum.show()
		hitSplat.show()
		hpBar.show()
		if accuracyRange >= accuracyNum + Globals.accuracyAddSub:
			hitNum = rand_range(1, Globals.maxHit)
			hitSplat.texture = redTex
		else:
			hitNum = 0
			hitSplat.texture = blueTex
		hitSplatNum.bbcode_text = "[center]" + str(hitNum).pad_decimals(0) + "[/center]"
		hpBar.value -= hitNum

func _process(_delta):
	accuracyRange = rand_range(0,6)
	
	if Globals.attHealerL1 == true:
		backSprite.play()
		hpBar.show()
	else:
		backSprite.stop()
		attTimer.stop()
		hitSplat.hide()
		hitSplatNum.hide()

func _on_HitTimer_timeout():
	if Globals.attHealerL1:
		if Globals.tick == 1:
			yield($"/root/Spatial/Timer", "timeout")
			$"../Healer".play()
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
		
		elif Globals.tick == 2:
			yield($"/root/Spatial/Timer", "timeout")
			$"../Healer".play()
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

