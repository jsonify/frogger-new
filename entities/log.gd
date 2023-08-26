extends Obstacle

func _physics_process(_delta):
	velocity.x = object_size 
	move_and_slide()
	
	global_position.x = wrapf(global_position.x, -128, screen_size.x + 128)
