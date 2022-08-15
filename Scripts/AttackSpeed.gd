extends OptionButton

onready var hitLabel = $"../../MaxHit/Label2"

func _ready():
		if Globals.setDefaults:
			select(1)
			$"../../../ViewportContainer2/Viewport2/AnimatedSprite3".animation = "BoFa"
			Globals.selectBF = true
		else:
			$"../../../ViewportContainer2/Viewport2/AnimatedSprite3".animation = Globals.playerAnim
			select(Globals.weaponSelect)
	
func _on_OptionButton2_item_selected(_index):
	if selected == 0:
		Globals.weaponSelect = 0
		Globals.setDefaults = false
		$"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3".animation = "BP"
		Globals.playerAnim = "BP"
		hitLabel.text = str(22)
		Globals.selectBP = true
		Globals.selectBF = false
		Globals.selectRCB = false
		Globals.selectACB = false
		Globals.selectTB = false
	if selected == 1:
		$"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3".animation = "BoFa"
		Globals.weaponSelect = 1
		Globals.setDefaults = false
		Globals.playerAnim = "BoFa"
		hitLabel.text = str(39)
		Globals.selectBP = false
		Globals.selectBF = true
		Globals.selectRCB = false
		Globals.selectACB = false
		Globals.selectTB = false
	if selected == 2:
		Globals.weaponSelect = 2
		Globals.setDefaults = false
		$"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3".animation = "RCB"
		Globals.playerAnim = "RCB"
		hitLabel.text = str(32)
		Globals.selectBP = false
		Globals.selectBF = false
		Globals.selectRCB = true
		Globals.selectACB = false
		Globals.selectTB = false
	if selected == 3:
		Globals.weaponSelect = 3
		Globals.setDefaults = false
		$"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3".animation = "ACB"
		Globals.playerAnim = "ACB"
		hitLabel.text = str(37)
		Globals.selectBP = false
		Globals.selectBF = false
		Globals.selectRCB = false
		Globals.selectACB = true
		Globals.selectTB = false
	if selected == 4:
		Globals.weaponSelect = 4
		Globals.setDefaults = false
		$"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3".animation = "Tbow"
		Globals.playerAnim = "Tbow"
		hitLabel.text = str(62)
		Globals.selectBP = false
		Globals.selectBF = false
		Globals.selectRCB = false
		Globals.selectACB = false
		Globals.selectTB = true
