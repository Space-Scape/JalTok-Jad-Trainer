extends Sprite3D

func _process(_x):
	if get_tree().get_root().get_child(2).has_node("Jad"):
		if $"../TextureProgress".value <= 175:
			Globals.spawnHealers = true
			$"/root/Spatial/Jad/SpawnHealers".AddHealers()
