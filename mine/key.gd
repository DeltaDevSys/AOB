extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	if _body.is_in_group("players"):  # Предполагается, что игрок в группе "players" 
		key_kat.lala = 2
		queue_free()  
