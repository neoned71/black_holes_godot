extends ColorRect

var position = Vector3(1.25,-0.05,-8.0)
var lr=0
var ud=0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _input(event):
	if event is InputEventScreenDrag:
		#print(event.relative)
		rotate(event.relative)
	if event.is_action("rotate_left"):
		rotate_left()
	if event.is_action("rotate_right"):
		rotate_right()
	if event.is_action("move_ahead"):
		move_ahead()
	if event.is_action("move_back"):
		move_back()
	if event.is_action("home"):
		get_tree().change_scene("res://main_menu.tscn")

func rotate_left():
		lr+=0.03
		print("rotating left")
		material.set_shader_param("lr",lr)
		
func rotate_right():
		lr-=0.03
		print("rotating right")
		material.set_shader_param("lr",lr)
		
		
func rotate(vec):
	lr+=0.001*vec.x
	ud-=0.001*vec.y
	material.set_shader_param("lr",lr)
	material.set_shader_param("ud",ud)


func move_ahead():
	position-=0.05*position
	material.set_shader_param("positionVector",position)
	
func move_back():
	position+=0.05*position
	material.set_shader_param("positionVector",position)

# Called when the node enters the scene tree for the first time.
func _ready():
	position=material.get_shader_param("positionVector")
	material.set_shader_param("positionVector",position) # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
