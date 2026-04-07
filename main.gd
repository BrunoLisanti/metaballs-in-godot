extends Node2D

@onready var canvas: ColorRect = $Control/Canvas



func _process(delta): 
	var scr_size = get_viewport_rect().size;
	canvas.material.set_shader_parameter("aspect_ratio", scr_size.x / scr_size.y);
	
func _input(event):
	if event is InputEventMouseMotion:
		var local_mouse_pos = canvas.get_global_mouse_position();
		var uv_pos = local_mouse_pos / canvas.size
		var scr_size = get_viewport_rect().size;
		uv_pos.x = uv_pos.x * (scr_size.x / scr_size.y)
		canvas.material.set_shader_parameter("mouse_pos", uv_pos);
	
