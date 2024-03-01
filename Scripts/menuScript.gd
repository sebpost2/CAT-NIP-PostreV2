extends Node2D


@onready var soundPlay = $AudioPlay

func _ready():
	#MusicaFondo.button_click()
	$VBoxContainer/botonStart.grab_focus()
	


func _on_boton_start_pressed():
	soundPlay.playing=true
	await get_tree().create_timer(2.05).timeout
	get_parent().find_child("GameStateMachine").find_child("MainMenu").Exit()

	#get_tree().change_scene_to_file("res://Scenes/World.tscn")
	
	
	pass
	# Poner la escena del juego
	#get_tree().change_scene_to_file("res://Scenes/mundo.tscn")
func _on_boton_quit_pressed():
	get_tree().quit()
	
