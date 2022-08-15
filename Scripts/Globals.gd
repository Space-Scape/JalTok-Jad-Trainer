extends Node

var tick : int

var setDefaults = true

var clickGround

var attWithMage
var attWithRange
var attWithMelee

var selectBP
var selectBF
var selectRCB
var selectACB
var selectTB

var prayingMage
var prayingRange
var prayingMelee
var prayOff
var prayOn

var hitDmg
var ate
var healerhitDmg

var attJad = false
var attJadL = false
var attJadR = false

var jadMSpawned
var jadLSpawned
var jadRSpawned

var spawnHealers = true
var canMoveToJad
var canMoveToPlayer

var attHealer1
var attHealer2
var attHealer3
var attHealer4
var attHealer5
var attHealer6

var attHealerL1
var attHealerL2
var attHealerL3
var attHealerL4
var attHealerL5
var attHealerL6
 
var attHealerR1
var attHealerR2
var attHealerR3
var attHealerR4
var attHealerR5
var attHealerR6

var prayingRigour

var playerDied

var maxHit : int
var canBoostMaxHit : bool = false
var accuracyAddSub : float = 0

var brewDose : int = 0

var killStreak : int


var hitPoints : int = 99
var maxHitpoints : int = 99
var hpText

var prayerPoints : int = 99
var maxPrayerPoints : int = 99
var prayerText

var prayerFkey : int
var invFkey : int
var weaponSelect : int
var playerAnim

func _ready():
	weaponSelect = $"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".get_selected_id()
	invFkey = $"/root/Spatial/CanvasLayer/PrayNode/CanvasLayer2/Inv/OptionButton".get_selected_id()
	prayerFkey = $"/root/Spatial/CanvasLayer/PrayNode/CanvasLayer2/PrayerIcon2/OptionButton2".get_selected_id()
	playerAnim = $"/root/Spatial/ViewportContainer2/Viewport2/AnimatedSprite3".animation
	maxHit = int($"/root/Spatial/CanvasLayer/MaxHit/Label2".text)
	if Globals.selectBP:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 0
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(22)
	if Globals.selectBF:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 1
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(39)
	if Globals.selectRCB:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 2
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(32)
	if Globals.selectACB:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 3
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(37)
	if Globals.selectTB:
		$"/root/Spatial/CanvasLayer/Attack Speed/OptionButton2".selected = 4
		$"/root/Spatial/CanvasLayer/MaxHit/Label2".text = str(62)
