extends KinematicBody

export var speed = 12

var target = null
var velocity = Vector3.ZERO
var min_distance

func _physics_process(_delta):
	OnHealerClicked()
	OnHealer2Clicked()
	OnHealer3Clicked()
	OnHealer4Clicked()
	OnHealer5Clicked()
	OnHealer6Clicked()
	
	OnHealerLClicked()
	OnHealerL2Clicked()
	OnHealerL3Clicked()
	OnHealerL4Clicked()
	OnHealerL5Clicked()
	OnHealerL6Clicked()
	
	OnHealerRClicked()
	OnHealerR2Clicked()
	OnHealerR3Clicked()
	OnHealerR4Clicked()
	OnHealerR5Clicked()
	OnHealerR6Clicked()
	
	if Globals.clickGround == true:
		min_distance = .5
		speed = 12
	
	if target:
		look_at(target, Vector3.UP)
		velocity = -transform.basis.z * speed
		if transform.origin.distance_to(target) < min_distance:
			target = null
			velocity = Vector3(0,0,0)
			speed = 0
	velocity = move_and_slide(velocity, Vector3.UP)
	
	$"../CanvasLayer/PrayNode/PrayerIcon".translation = translation
	$"../CanvasLayer/PrayNode/PrayerIcon".translation.y = 10
	$"../Spatial".translation = translation
	$"../Spatial".translation.y = -35
	$"../ViewportContainer2/Viewport2/PlayerHPbarSprite".translation = translation
	$"../ViewportContainer2/Viewport2/PlayerHPbarSprite".translation.y = 7
	$"../ViewportContainer2/Viewport2/AnimatedSprite3".translation = translation
	$"../ViewportContainer2/Viewport2/AnimatedSprite3".translation.y = 3

func OnHealerClicked():
	if get_tree().get_root().get_child(1).has_node("Healer1"):
		var healer1 = get_tree().get_root().get_child(1).get_node("Healer1")
		if Globals.attHealer1 == true:
			target = healer1.transform.origin
			min_distance = 25
func OnHealer2Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer2"):
		var healer2 = get_tree().get_root().get_child(1).get_node("Healer2")
		if Globals.attHealer2 == true:
			target = healer2.transform.origin
			min_distance = 25
func OnHealer3Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer3"):
		var healer3 = get_tree().get_root().get_child(1).get_node("Healer3")
		if Globals.attHealer3 == true:
			target = healer3.transform.origin
			min_distance = 25
func OnHealer4Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer4"):
		var healer4 = get_tree().get_root().get_child(1).get_node("Healer4")
		if Globals.attHealer4 == true:
			target = healer4.transform.origin
			min_distance = 25
func OnHealer5Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer5"):
		var healer5 = get_tree().get_root().get_child(1).get_node("Healer5")
		if Globals.attHealer5 == true:
			target = healer5.transform.origin
			min_distance = 25
func OnHealer6Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer6"):
		var healer6 = get_tree().get_root().get_child(1).get_node("Healer6")
		if Globals.attHealer6 == true:
			target = healer6.transform.origin
			min_distance = 25

func OnHealerLClicked():
	if get_tree().get_root().get_child(1).has_node("Healer1L"):
		var healer1L = get_tree().get_root().get_child(1).get_node("Healer1L")
		if Globals.attHealerL1 == true:
			target = healer1L.transform.origin
			min_distance = 25
func OnHealerL2Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer2L"):
		var healer2L = get_tree().get_root().get_child(1).get_node("Healer2L")
		if Globals.attHealerL2 == true:
			target = healer2L.transform.origin
			min_distance = 25
func OnHealerL3Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer3L"):
		var healer3L = get_tree().get_root().get_child(1).get_node("Healer3L")
		if Globals.attHealerL3 == true:
			target = healer3L.transform.origin
			min_distance = 25
func OnHealerL4Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer4L"):
		var healer4L = get_tree().get_root().get_child(1).get_node("Healer4L")
		if Globals.attHealerL4 == true:
			target = healer4L.transform.origin
			min_distance = 25
func OnHealerL5Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer5L"):
		var healer5L = get_tree().get_root().get_child(1).get_node("Healer5L")
		if Globals.attHealerL5 == true:
			target = healer5L.transform.origin
			min_distance = 25
func OnHealerL6Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer6L"):
		var healer6L = get_tree().get_root().get_child(1).get_node("Healer6L")
		if Globals.attHealerL6 == true:
			target = healer6L.transform.origin
			min_distance = 25

func OnHealerRClicked():
	if get_tree().get_root().get_child(1).has_node("Healer1R"):
		var healer1R = get_tree().get_root().get_child(1).get_node("Healer1R")
		if Globals.attHealerR1 == true:
			target = healer1R.transform.origin
			min_distance = 25
func OnHealerR2Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer2R"):
		var healer2R = get_tree().get_root().get_child(1).get_node("Healer2R")
		if Globals.attHealerR2 == true:
			target = healer2R.transform.origin
			min_distance = 25
func OnHealerR3Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer3R"):
		var healer3R = get_tree().get_root().get_child(1).get_node("Healer3R")
		if Globals.attHealerR3 == true:
			target = healer3R.transform.origin
			min_distance = 25
func OnHealerR4Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer4R"):
		var healer4R = get_tree().get_root().get_child(1).get_node("Healer4R")
		if Globals.attHealerR4 == true:
			target = healer4R.transform.origin
			min_distance = 25
func OnHealerR5Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer5R"):
		var healer5R = get_tree().get_root().get_child(1).get_node("Healer5R")
		if Globals.attHealerR5 == true:
			target = healer5R.transform.origin
			min_distance = 25
func OnHealerR6Clicked():
	if get_tree().get_root().get_child(1).has_node("Healer6R"):
		var healer6R = get_tree().get_root().get_child(1).get_node("Healer6R")
		if Globals.attHealerR6 == true:
			target = healer6R.transform.origin
			min_distance = 25

func _on_StaticBody_input_event(_camera, event, click_position, _click_normal, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			Globals.clickGround = true
			min_distance = .5
			target = click_position
			Globals.attJad = false
			Globals.attJadL = false
			Globals.attJadR = false
			if get_tree().get_root().get_child(1).has_node("Jad"):
				$"/root/Spatial/Jad/ViewportContainer/Viewport/ProgressBarSprite2/Timer".stop()
			if get_tree().get_root().get_child(1).has_node("JadL"):
				$"/root/Spatial/JadL/ViewportContainer/Viewport/ProgressBarSprite2/Timer".stop()
			if get_tree().get_root().get_child(1).has_node("JadR"):
				$"/root/Spatial/JadR/ViewportContainer/Viewport/ProgressBarSprite2/Timer".stop()
			Globals.attHealer1 = false
			Globals.attHealer2 = false
			Globals.attHealer3 = false
			Globals.attHealer4 = false
			Globals.attHealer5 = false
			Globals.attHealer6 = false
			
			Globals.attHealerR1 = false
			Globals.attHealerR2 = false
			Globals.attHealerR3 = false
			Globals.attHealerR4 = false
			Globals.attHealerR5 = false
			Globals.attHealerR6 = false
			
			Globals.attHealerL1 = false
			Globals.attHealerL2 = false
			Globals.attHealerL3 = false
			Globals.attHealerL4 = false
			Globals.attHealerL5 = false
			Globals.attHealerL6 = false
			
			$"../ViewportContainer2/Viewport2/AnimatedSprite3".frame = 0

