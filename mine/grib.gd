extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(_body: Node2D) -> void:
	if _body.is_in_group("players"):  # Предполагается, что игрок в группе "players" 
		key_kat.bad = 1


func _on_body_exited(_body: Node2D) -> void:
	if _body.is_in_group("players"):  # Предполагается, что игрок в группе "players" 
		key_kat.bad = 0
