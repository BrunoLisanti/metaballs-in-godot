extends Node2D

@onready var canvas: ColorRect = $Canvas
	
func _input(event):
	if event is InputEventMouseMotion:
		var local_mouse_pos = canvas.get_global_mouse_position();
		var uv_pos = local_mouse_pos / canvas.size
		canvas.material.set_shader_parameter("mouse_pos", uv_pos);
	
