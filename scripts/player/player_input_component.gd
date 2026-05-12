extends Node
class_name PlayerInputController

var direction: Vector2 = Vector2.ZERO

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.is_action_pressed("grenade"):
			print("Press Grenade")
		if event.is_action_pressed("blink"):
			print("Pressed Jump")

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	

func get_direction() -> Vector2:
	return direction
