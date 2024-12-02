extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_s_1_pressed() -> void:
	print("Clicked Hand Waver")
	_load_level("res://S1 - Hand Waver/S1 Hand Waver.tscn")
	pass # Replace with function body.

# Helper function to load a level
func _load_level(level_path: String):
	var level_scene = load(level_path)
	if level_scene:
		get_tree().change_scene_to_packed(level_scene)  # Correct method for Godot 6
	else:
		print("Error loading scene: " + level_path)
