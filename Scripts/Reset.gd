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
	$"../../ViewportContainer2/Viewport2/HealerHitSplat".hide()
	$"../../Attack Speed/OptionButton2".select(Save.weaponSelect)
	$"../../PrayNode/CanvasLayer2/Inv/OptionButton".select(Save.invFkey)
	$"../../PrayNode/CanvasLayer2/PrayerIcon2/OptionButton2".select(Save.prayerFkey)
	$"../../PrayNode/CanvasLayer/LevelWindow/HpIcon/HpLvl".text = Save.hpText
	$"../../ViewportContainer2/Viewport2/AnimatedSprite3".play(Save.playerAnim)
	Globals.maxHit = Save.maxHit

func _on_CheckBox_button_down():
	Globals.spawnHealers = true
	Globals.attHealer1 = false
	Globals.attHealer2 = false
	Globals.attHealer3 = false
	Globals.attHealer4 = false
	Globals.attHealer5 = false
	Globals.attHealer6 = false
	
	if get_tree().get_root().get_child(2).has_node("Healer"):
		$"/root/Spatial/Healer/ViewportContainer/Viewport/HpBar".value = 60
		$"/root/Spatial/Healer".canMoveToPlayer = false
		$"/root/Spatial/Healer".canMoveToJad = true
		$"/root/Spatial/Healer".show()
		$"/root/Spatial/Healer".translation = Vector3(-112.47, -40, -96.504)
	
	if get_tree().get_root().get_child(2).has_node("Healer2"):
		$"/root/Spatial/Healer2/ViewportContainer/Viewport/HpBar".value = 60
		$"/root/Spatial/Healer2".canMoveToPlayer = false
		$"/root/Spatial/Healer2".canMoveToJad = true
		$"/root/Spatial/Healer2".show()
		$"/root/Spatial/Healer2".translation = Vector3(-24.07, -40, -95.719)
	
	if get_tree().get_root().get_child(2).has_node("Healer3"):
		$"/root/Spatial/Healer3/ViewportContainer/Viewport/HpBar".value = 60
		$"/root/Spatial/Healer3".canMoveToPlayer = false
		$"/root/Spatial/Healer3".canMoveToJad = true
		$"/root/Spatial/Healer3".show()
		$"/root/Spatial/Healer3".translation = Vector3(-107.823, -40, -127.299)
	
	if get_tree().get_root().get_child(2).has_node("Healer4"):
		$"/root/Spatial/Healer4/ViewportContainer/Viewport/HpBar".value = 60
		$"/root/Spatial/Healer4".canMoveToPlayer = false
		$"/root/Spatial/Healer4".canMoveToJad = true
		$"/root/Spatial/Healer4".show()
		$"/root/Spatial/Healer4".translation = Vector3(-23.068, -40, -118.506)
	
	if get_tree().get_root().get_child(2).has_node("Healer5"):
		$"/root/Spatial/Healer5/ViewportContainer/Viewport/HpBar".value = 60
		$"/root/Spatial/Healer5".canMoveToPlayer = false
		$"/root/Spatial/Healer5".canMoveToJad = true
		$"/root/Spatial/Healer5".show()
		$"/root/Spatial/Healer5".translation = Vector3(-86.845, -40, -138.98)
	
	if get_tree().get_root().get_child(2).has_node("Healer6"):
		$"/root/Spatial/Healer6/ViewportContainer/Viewport/HpBar".value = 60
		$"/root/Spatial/Healer6".canMoveToPlayer = false
		$"/root/Spatial/Healer6".canMoveToJad = true
		$"/root/Spatial/Healer6".show()
		$"/root/Spatial/Healer6".translation = Vector3(-43.109, -40, -134.851)
	
	Globals.canMoveToPlayer = false
	Globals.canMoveToJad = true
