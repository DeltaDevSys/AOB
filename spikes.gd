extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if key_kat.dead == 0:
		if body.is_in_group("players"):  # Предполагается, что игрок в группе "players" 
			key_kat.dead = 1
