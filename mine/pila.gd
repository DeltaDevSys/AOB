extends Area2D

var speed = 0
var angular_speed = PI


func _process(delta):
	
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
	



func _on_body_entered(_body: Node2D) -> void:
	if key_kat.dead == 0:
		if _body.is_in_group("players"):  # Предполагается, что игрок в группе "players" 
			key_kat.dead = 1
