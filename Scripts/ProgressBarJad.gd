extends Sprite3D

onready var JadHealerCollider = preload("res://Scenes/JadHealerCollider.tscn")
onready var JadHealerColliderInstance = JadHealerCollider.instance()

func _ready():
	get_tree().get_root().get_child(1).add_child(JadHealerColliderInstance)
	JadHealerColliderInstance.translation = Vector3(-67.445, -42.187, -95.107)

func _process(_x):
	if get_tree().get_root().get_child(1).has_node("Jad"):
		if $"../TextureProgress".value <= 175:
			Globals.spawnHealers = true
			$"/root/Spatial/Jad/SpawnHealers".AddHealers()
	if get_tree().get_root().get_child(1).has_node("Jad"):
		if $"../TextureProgress".value <= 0:
			get_tree().get_root().get_child(1).remove_child(JadHealerColliderInstance)
