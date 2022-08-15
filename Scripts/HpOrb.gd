extends TextureProgress

onready var hpText = $"../../OrbContainer2/RichTextLabel".text

func _ready():
	self.max_value = Globals.maxHitpoints
	self.value = Globals.hitPoints
	hpText = max_value
	Globals.hpText = str(max_value)
	$"../../CanvasLayer/LevelWindow/HpIcon/HpLvl".text = Globals.hpText

func _process(_delta):
	$"../RichTextLabel".bbcode_text = "[center]" + str(value)

func _on_HpLvl_text_changed(new_text):
	Globals.maxHitpoints = int(new_text)
	Globals.hitPoints = int(new_text)
	Globals.hpText = new_text
	$"../../../../ViewportContainer2/Viewport2/ProgressBar".max_value = int(new_text)
	$"../../../../ViewportContainer2/Viewport2/ProgressBar".value = int(new_text)
	max_value = int(new_text)
	value = max_value

func _on_HpBar_gui_input(_event):
	pass # Replace with function body.
