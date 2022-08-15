extends Node

onready var Healer1 = load("res://Scenes/Healer1L.tscn")
onready var Healer2 = preload("res://Scenes/Healer2L.tscn")
onready var Healer3 = preload("res://Scenes/Healer3L.tscn")
onready var Healer4 = preload("res://Scenes/Healer4L.tscn")
onready var Healer5 = preload("res://Scenes/Healer5L.tscn")
onready var Healer6 = preload("res://Scenes/Healer6L.tscn")
onready var Healer1Instance = Healer1.instance()
onready var Healer2Instance = Healer2.instance()
onready var Healer3Instance = Healer3.instance()
onready var Healer4Instance = Healer4.instance()
onready var Healer5Instance = Healer5.instance()
onready var Healer6Instance = Healer6.instance()

func AddHealersL():
	if !get_tree().get_root().get_child(1).has_node("Healer1L"):
		get_tree().current_scene.add_child(Healer1Instance)
		Healer1Instance.transform.origin = Vector3(-45.03, -40, -21.63)
	if !get_tree().get_root().get_child(1).has_node("Healer2L"):
		get_tree().current_scene.add_child(Healer2Instance)
		Healer2Instance.transform.origin = Vector3(-23.197, -40, -22.159)
	if !get_tree().get_root().get_child(1).has_node("Healer3L"):
		get_tree().current_scene.add_child(Healer3Instance)
		Healer3Instance.transform.origin = Vector3(-7.399, -40, -41.322)
	if !get_tree().get_root().get_child(1).has_node("Healer4L"):
		get_tree().current_scene.add_child(Healer4Instance)
		Healer4Instance.transform.origin = Vector3(-11.186, -40, -79.8156)
	if !get_tree().get_root().get_child(1).has_node("Healer5L"):
		get_tree().current_scene.add_child(Healer5Instance)
		Healer5Instance.transform.origin = Vector3(-32.647, -40, -97.844)
	if !get_tree().get_root().get_child(1).has_node("Healer6L"):
		get_tree().current_scene.add_child(Healer6Instance)
		Healer6Instance.transform.origin = Vector3(-49.494, -40, -97.297)
