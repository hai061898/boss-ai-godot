extends Node2D

var current_state: State2
var previous_state: State2
 
func _ready():
	current_state = get_child(0) as State2
	previous_state = current_state
	current_state.enter()
 
func change_state(state):
	if state == previous_state.name:
		return
 
	current_state = find_child(state) as State2
	current_state.enter()
 
 
	previous_state.exit()
	previous_state = current_state
