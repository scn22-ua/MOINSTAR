
class_name Boss
extends Node2D
@onready var animation_player = $CharacterSquareRed/CharacterHandRed/AnimationPlayer
const ESCENA_BARRIL = preload("res://EscenasJuegoMOINSTAR/barril.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

	
	
	
func launch_barrel():
	var instancia_barril = ESCENA_BARRIL.instantiate()
	instancia_barril.position = $CharacterSquareRed/CharacterHandRed.position
	add_child(instancia_barril)
	animation_player.play("reposo")


func _on_timer_timeout() -> void:
	animation_player.play("lanzar_barril")
