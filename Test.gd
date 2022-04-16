extends RigidBody

var gravity_direction = Vector3()

func _ready():
	pass
	gravity_direction = (get_node("StaticBody").global_transform.origin - global_transform.origin).normalized()

func _integrate_forces(state):
	#aligns character rotation to planet
	state.transform.basis.y = -gravity_direction.normalized()
