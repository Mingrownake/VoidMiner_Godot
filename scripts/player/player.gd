extends CharacterBody3D
class_name Player

@onready var player_input_component: PlayerInputController = $PlayerInputComponent
@onready var player_move_component: PlayerMoveComponent = $PlayerMoveComponent

@export var move_speed = 5.0

func _physics_process(delta: float) -> void:
	var direction = player_input_component.get_direction()
	player_move_component.move(self, direction, move_speed)
