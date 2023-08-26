extends CharacterBody2D
class_name Obstacle

@onready var screen_size = get_viewport_rect().size
@export_range(-3.0, 3.0) var speed_factor = 1.0

var object_size := 64


func _physics_process(_delta):
	velocity.x = object_size * speed_factor
	move_and_slide()
	
	global_position.x = wrapf(global_position.x, -128, screen_size.x + 128)
