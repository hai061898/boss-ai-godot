extends State2


@onready var collision = %CollisionShape2D
 
var player_entered : bool = false:
	set(value):
		player_entered = value
		collision.set_deferred("disabled",value)
		
func transition():
	if player_entered:
		get_parent().change_state("5Leaf")

 
func _on_player_entered(body):
	player_entered = true
 
 

