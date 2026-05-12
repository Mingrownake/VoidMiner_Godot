extends Node
class_name PlayerMoveComponent


func move(body: CharacterBody3D, direction: Vector2, speed: float) -> void:
	body.velocity.x = direction.x * speed
	body.velocity.z = direction.y * speed
	body.move_and_slide()
