extends CharacterBody2D


@onready var player = get_parent().find_child("player")
@onready var progress_bar = $ProgressBar

var direction = Vector2.RIGHT
var speed  = 25.0
 
func _ready():
	set_physics_process(false)
 
func _process(_delta):
	direction = (player.position - global_position).normalized()

 
func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()
