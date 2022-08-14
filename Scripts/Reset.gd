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
	Globals.attHealer1 = false
	Globals.attHealer2 = false
	Globals.attHealer3 = false
	Globals.attHealer4 = false
	$"../../../ViewportContainer2/Viewport2/HealerHitSplat".hide()
	$"../../Attack Speed/OptionButton2".select(Save.weaponSelect)
	$"../../PrayNode/CanvasLayer2/Inv/OptionButton".select(Save.invFkey)
	$"../../PrayNode/CanvasLayer2/PrayerIcon2/OptionButton2".select(Save.prayerFkey)
	$"../../PrayNode/CanvasLayer/LevelWindow/HpIcon/HpLvl".text = Save.hpText
	$"../../../ViewportContainer2/Viewport2/AnimatedSprite3".play(Save.playerAnim)
	Globals.maxHit = Save.maxHit
	
	Globals.canMoveToPlayer = false
	Globals.canMoveToJad = true
