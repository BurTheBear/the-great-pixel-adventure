extends Node2D

@export var pickup_distance := 45.0

func _process(_delta):
	var player = get_tree().root.find_child("Player", true, false)
	if player == null:
		return
	
	if global_position.distance_to(player.global_position) < pickup_distance:
		var quest = get_tree().root.find_child("Quest", true, false)
		if quest:
			quest.add_tool()

		queue_free()
