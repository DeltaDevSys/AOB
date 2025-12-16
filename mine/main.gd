extends Node2D

var level1 = preload("res://level.tscn")
var level2 = preload("res://level_2.tscn")
var level3 = preload("res://level_3.tscn")
var level4 = preload("res://level_4.tscn")
var level5 = preload("res://level_5.tscn")
var level6 = preload("res://level_6.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$Camera2D/AnimationPlayer.play("anim")
	#get_tree().change_scene_to_packed(level)


func _on_button_2_pressed() -> void:
	get_tree().quit()


func _on_button_3_pressed() -> void:
	key_kat.ver = 1



func _on_button_4_pressed() -> void:
	key_kat.ver = 0




func _on_level1_pressed() -> void:
	key_kat.stol_dead = 0
	get_tree().change_scene_to_packed(level1)


func _on_level2_pressed() -> void:
	key_kat.stol_dead = 0
	get_tree().change_scene_to_packed(level2)


func _on_level3_pressed() -> void:
	key_kat.stol_dead = 0
	get_tree().change_scene_to_packed(level3)


func _on_level4_pressed() -> void:
	key_kat.stol_dead = 0
	get_tree().change_scene_to_packed(level4)


func _on_level5_pressed() -> void:
	key_kat.stol_dead = 0
	get_tree().change_scene_to_packed(level5)


func _on_level6_pressed() -> void:
	key_kat.stol_dead = 0
	get_tree().change_scene_to_packed(level6)


func _on_poln_pressed() -> void:
	key_kat.stol_dead = 0
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)


func _on_notpoln_pressed() -> void:
	key_kat.stol_dead = 0
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_nazat_pressed() -> void:
	$Camera2D/AnimationPlayer.play("anim_2")
