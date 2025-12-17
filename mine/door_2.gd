extends StaticBody2D

func _process(_delta: float) -> void:
	pass


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	key_kat.lala = 0
	queue_free()  


func _on_area_2d_body_entered(_body: Node2D) -> void:
	if key_kat.lala == 3:
		if _body.is_in_group("players"):
			$Sprite2D/AnimationPlayer.play("open")
			key_kat.lala = 4
			key_kat.lala = 0
