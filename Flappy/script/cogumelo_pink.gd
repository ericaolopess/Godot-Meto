extends Area2D


func _on_cogumelo_pink_body_entered(body):
	print(body.name)
	if body.name == "Player":
		queue_free()
	
	
	
	
	
	
	
	
	
