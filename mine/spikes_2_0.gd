extends Area2D

var player_in_area: bool = false
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if time == 1 and player_in_area == true:
		key_kat.dead = 1
		time = 2
	if time == 0:
		$Timer.start(1)
		time = 1
		$AnimatedSprite2D.play("full")
	elif time == 2:
		$Timer.start(1)
		time = 3
		$AnimatedSprite2D.play("lite")


func _on_body_entered(_body: Node2D) -> void:
	if key_kat.dead == 0:
		if _body.is_in_group("players"):  # Предполагается, что игрок в группе "players" 
			player_in_area = true


func _on_timer_timeout() -> void:
	if time == 1:
		time = 2
	elif time == 3:
		time = 0


func _on_body_exited(_body: Node2D) -> void:
	if key_kat.dead == 0:
		if _body.is_in_group("players"):  # Предполагается, что игрок в группе "players" 
			player_in_area = false
