extends Spatial

onready var Jad = preload("res://Scenes/Jad.tscn")
onready var JadR = preload("res://Scenes/JadR.tscn")
onready var JadL = preload("res://Scenes/JadL.tscn")
onready var jadInstance = Jad.instance()
onready var jadInstanceL = JadL.instance()
onready var jadInstanceR = JadR.instance()


func _ready():
	Globals.jadMSpawned = true
	add_child(jadInstance)
	jadInstance.transform.origin = Vector3(-67.445, -42.187, -96.662)
	$"JadLTimer".start()

func _on_JadLTimer_timeout():
	add_child(jadInstanceL)
	$"JadRTimer".start()
	Globals.jadLSpawned = true
	jadInstanceL.rotation_degrees.y = 90
	jadInstanceL.transform.origin = Vector3(-40.82, -42.187, -61.366)

func _on_JadRTimer_timeout():
	Globals.jadRSpawned = true
	add_child(jadInstanceR)
	jadInstanceR.rotation_degrees.y = -90
	jadInstanceR.transform.origin = Vector3(-94.95, -42.187, -61.366)
