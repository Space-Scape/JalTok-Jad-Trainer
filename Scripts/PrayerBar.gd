extends TextureProgress

onready var prayerText = $"../../CanvasLayer/LevelWindow/PrayerIcon/PrayerLvl".text

func _ready():
	self.max_value = Globals.maxPrayerPoints
	self.value = Globals.prayerPoints
	prayerText = max_value
	Globals.prayerText = str(max_value)
	$"../../CanvasLayer/LevelWindow/PrayerIcon/PrayerLvl".text = Globals.prayerText

func _process(_delta):
	$"../RichTextLabel".bbcode_text = "[center]" + str(value)

func _on_PrayerLvl_text_changed(new_text):
	Globals.maxPrayerPoints = int(new_text)
	Globals.prayerPoints = int(new_text)
	Globals.prayerText = new_text
	max_value = int(new_text)
	value = max_value
