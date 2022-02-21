extends ColorRect


var last_position=null
var drag=Vector2(0,0)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _input(event):
	#print("inside event")
	if event.is_action("basic_black_hole"):
		print("going to basic black hole")
		get_tree().change_scene("res://Spatial.tscn")
		
	if event.is_action("oscillating_gravity"):
		print("going to oscillating")
		get_tree().change_scene("res://oscillating.tscn")
		
	if event.is_action("repulsive_gravity"):
		print("going to repulsive")
		get_tree().change_scene("res://repulsive.tscn")
		
	
		
	
		
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
