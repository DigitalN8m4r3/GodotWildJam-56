extends Node3D

@export var rotation_speed = 0.3
var x_rand = 0.0
var z_rand = 0.0
var t = 0 
# Called when the node enters the scene tree for the first time.
func _ready():
	x_rand = randf_range(-20, 20)
	z_rand = randf_range(-20, 20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	t += delta
	rotation_degrees.x = cos(t + (x_rand * rotation_speed))
	rotation_degrees.z = cos(t + (z_rand * rotation_speed))


func _on_area_3d_body_entered(body):
	## TODO: Do da damage 
	pass
	#queue_free()
