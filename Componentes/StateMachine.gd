extends Node
class_name StateMachine

@export var initial_state : State

var current_state : State
var states : Dictionary = {}

func _ready():
	
	#print("ready")
	for child in get_children():
		if child is State:
			#print("child: ",child.name)
			states[child.name.to_lower()]=child
			child.Transitioned.connect(on_child_transition)
	if initial_state:
		initial_state.Enter()
		current_state=initial_state
		
	
	
func _process(delta):
	#print(current_state.name)
	if current_state:
		current_state.Update(delta)

func _physics_process(delta):
	if current_state:
		current_state.Physics_Update(delta)

func _curr_state():
	return current_state

func on_child_transition(state, new_state_name):
	if state != current_state:
		return 
		
	var new_state = states.get(new_state_name.to_lower())
	if !new_state:
		return
	
	new_state.Enter()
	current_state=new_state
