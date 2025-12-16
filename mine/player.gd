extends CharacterBody2D

var level = preload("res://main.tscn")
@onready var animated_sprite2d = $AnimatedSprite2D

func _ready():
	$Timer.start(1)

func _process(_delta):
	if Input.get_action_strength("Esc"):
			key_kat.sled = false
			get_tree().change_scene_to_file("res://main.tscn")
	if key_kat.sled == false:
		$AnimatedSprite2D.show()
		$Label.hide()
		$Label2.hide()
		$Label4.hide()
		if key_kat.dead == 0:
			var direction = movement_vector().normalized()
			velocity = key_kat.speed * direction
			move_and_slide()
			if direction.x != 0 || direction.y != 0:
				animated_sprite2d.play("run")
			else:
				animated_sprite2d.play("idle")
			var face_sign = sign(direction.x)
		
			if face_sign != 0:
				animated_sprite2d.scale.x = face_sign
		elif key_kat.dead == 1:
			animated_sprite2d.play("hit")
			key_kat.dead = 2
			$Timer_dead.start(0.2)
	if key_kat.sled == true:
		$Timer.stop()
		$AnimatedSprite2D.hide()
		$Label.show()
		$Label.text = "Смерти: " + str(key_kat.stol_dead)
		$Label2.show()
		$Label2.text = "Таймер: " + str(key_kat.Tim)
		$Label4.show()
		if Input.get_action_strength("Enter"):
			key_kat.sled = false
			get_tree().change_scene_to_file("res://main.tscn")

func movement_vector():
	if key_kat.bad == 0:
		var movement_x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
		var movement_y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
		return Vector2(movement_x, movement_y)
	elif  key_kat.bad == 1:
		var movement_x = Input.get_action_strength("move_left") - Input.get_action_strength("move_right")
		var movement_y = Input.get_action_strength("move_up") - Input.get_action_strength("move_down")
		return Vector2(movement_x, movement_y)

func _on_timer_dead_timeout() -> void:
	key_kat.stol_dead += 1
	get_tree().reload_current_scene()
	key_kat.dead = 0
	
func _on_timer_timeout() -> void:
	key_kat.Tim += 1
	$Timer.start(1)
