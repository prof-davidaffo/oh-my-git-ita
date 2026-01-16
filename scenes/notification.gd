extends Node2D

var text setget _set_text
var button_texts = ["Capito!", "Interessante!", "Molto utile!", "Figo!", "Bello!", "Grazie!", "Come vuoi...", "Ok!", "Evviva!", "Fantastico!"]

func _ready():
	button_texts.shuffle()
	$Panel/CenterContainer/OK.text = button_texts[0]

#func _gui_input(event):
#	if event is InputEventMouseButton:
#		queue_free()

func _set_text(new_text):
	text = new_text
	$Panel/Label.text = new_text


func confirm():
	queue_free()
