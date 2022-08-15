extends CheckBox

onready var Jad = preload("res://Scenes/Jad.tscn")
onready var jadInstance = Jad.instance()

func _on_CheckBox_pressed():
	Reset()

func Reset():
	get_tree().reload_current_scene()
	Globals.setDefaults = false
	Globals.healerhitDmg = false
	Globals.hitDmg = false
	Globals.attJad = false
	Globals.attJadL = false
	Globals.attJadR = false
	Globals.attHealer1 = false
	Globals.attHealer2 = false
	Globals.attHealer3 = false
	Globals.attHealer4 = false
	Globals.attHealer5 = false
	Globals.attHealer6 = false
	Globals.attHealerL1 = false
	Globals.attHealerL2 = false
	Globals.attHealerL3 = false
	Globals.attHealerL4 = false
	Globals.attHealerL5 = false
	Globals.attHealerL6 = false
	Globals.attHealerR1 = false
	Globals.attHealerR2 = false
	Globals.attHealerR3 = false
	Globals.attHealerR4 = false
	Globals.attHealerR5 = false
	Globals.attHealerR6 = false
	$"../../../ViewportContainer2/Viewport2/HealerHitSplat".hide()
	$"../../Attack Speed/OptionButton2".select(Globals.weaponSelect)
	$"../../PrayNode/CanvasLayer2/Inv/OptionButton".select(Globals.invFkey)
	$"../../PrayNode/CanvasLayer2/PrayerIcon2/OptionButton2".select(Globals.prayerFkey)
	$"../../PrayNode/CanvasLayer/LevelWindow/HpIcon/HpLvl".text = Globals.hpText
	$"../../../ViewportContainer2/Viewport2/AnimatedSprite3".play(Globals.playerAnim)
	Globals.maxHit = Globals.maxHit
	
	Globals.canMoveToPlayer = false
	Globals.canMoveToJad = true
