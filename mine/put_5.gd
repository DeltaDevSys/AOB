extends Area2D


var level = preload("res://level_6.tscn")


func _on_body_entered(_body: Node2D) -> void:
	if _body.is_in_group("players"):
		get_tree().change_scene_to_packed(level)
