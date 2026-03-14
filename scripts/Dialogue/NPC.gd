extends CharacterBody2D

@export var dialogue: Dialogue

var player_in_range = false


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		player_in_range = true


func _on_area_2d_body_exited(body):
	if body.name == "Player":
		player_in_range = false


func _process(delta):

	if player_in_range and Input.is_action_just_pressed("interact"):
		talk()


func talk():

	print(dialogue.npc_name)

	for line in dialogue.lines:
		print(line)
