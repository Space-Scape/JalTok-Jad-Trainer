extends Node

onready var Healer1 = load("res://Scenes/Healer1R.tscn")
onready var Healer2 = preload("res://Scenes/Healer2R.tscn")
onready var Healer3 = preload("res://Scenes/Healer3R.tscn")
onready var Healer4 = preload("res://Scenes/Healer4R.tscn")
onready var Healer5 = preload("res://Scenes/Healer5R.tscn")
onready var Healer6 = preload("res://Scenes/Healer6R.tscn")
onready var Healer1Instance = Healer1.instance()
onready var Healer2Instance = Healer2.instance()
onready var Healer3Instance = Healer3.instance()
onready var Healer4Instance = Healer4.instance()
onready var Healer5Instance = Healer5.instance()
onready var Healer6Instance = Healer6.instance()

func AddHealersR():
	if !get_tree().get_root().get_child(2).has_node("HealerR"):
		get_tree().current_scene.add_child(Healer1Instance)
		Healer1Instance.transform.origin = Vector3(-94.013, -40, -102.071)
	if !get_tree().get_root().get_child(2).has_node("Healer2R"):
		get_tree().current_scene.add_child(Healer2Instance)
		Healer2Instance.transform.origin = Vector3(-118.036, -40, -101.611)
	if !get_tree().get_root().get_child(2).has_node("Healer3R"):
		get_tree().current_scene.add_child(Healer3Instance)
		Healer3Instance.transform.origin = Vector3(-138.055, -40, -76.747)
	if !get_tree().get_root().get_child(2).has_node("Healer4R"):
		get_tree().current_scene.add_child(Healer4Instance)
		Healer4Instance.transform.origin = Vector3(-134.184, -40, -44.355)
	if !get_tree().get_root().get_child(2).has_node("Healer5R"):
		get_tree().current_scene.add_child(Healer5Instance)
		Healer5Instance.transform.origin = Vector3(-103.829, -40, -23.468)
	if !get_tree().get_root().get_child(2).has_node("Healer6R"):
		get_tree().current_scene.add_child(Healer6Instance)
		Healer6Instance.transform.origin = Vector3(-81.569, -40, -22.501)
