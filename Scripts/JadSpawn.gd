extends Spatial

onready var Jad = preload("res://Scenes/Jad.tscn")
onready var JadR = preload("res://Scenes/JadR.tscn")
onready var JadL = preload("res://Scenes/JadL.tscn")
onready var jadInstance = Jad.instance()
onready var jadInstanceL = JadL.instance()
onready var jadInstanceR = JadR.instance()

onready var JadHealerCollider = preload("res://Scenes/JadHealerCollider.tscn")
onready var JadHealerColliderInstance = JadHealerCollider.instance()

onready var JadHealerColliderL = preload("res://Scenes/JadHealerColliderL.tscn")
onready var JadHealerColliderInstanceL = JadHealerColliderL.instance()

onready var JadHealerColliderR = preload("res://Scenes/JadHealerColliderR.tscn")
onready var JadHealerColliderInstanceR = JadHealerColliderR.instance()

func _ready():
	Globals.jadMSpawned = true
	add_child(jadInstance)
	jadInstance.transform.origin = Vector3(-67.445, -42.187, -96.662)
	$"JadLTimer".start()
	add_child(JadHealerColliderInstance)
	JadHealerColliderInstance.translation = Vector3(-67.445, -42.187, -95.107)

func _on_JadLTimer_timeout():
	add_child(jadInstanceL)
	$"JadRTimer".start()
	Globals.jadLSpawned = true
	jadInstanceL.rotation_degrees.y = 90
	jadInstanceL.transform.origin = Vector3(-40.82, -42.187, -61.366)
	add_child(JadHealerColliderInstanceL)
	JadHealerColliderInstanceL.translation = Vector3(-40.82, -42.187, -61.366)
	JadHealerColliderInstanceL.rotation_degrees.y = -90

func _on_JadRTimer_timeout():
	Globals.jadRSpawned = true
	add_child(jadInstanceR)
	jadInstanceR.rotation_degrees.y = -90
	jadInstanceR.transform.origin = Vector3(-94.95, -42.187, -61.366)
	add_child(JadHealerColliderInstanceR)
	JadHealerColliderInstanceR.translation = Vector3(-94.95, -42.187, -61.366)
	JadHealerColliderInstanceR.rotation_degrees.y = -90
