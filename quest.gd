extends Node

var started = false
var tools_collected = 0
var tools_needed = 3

func add_tool():
	tools_collected += 1
	
	var counter = get_tree().root.find_child("ToolCounter", true, false)

	if tools_collected < tools_needed:
		if counter:
			counter.text = "Tools: " + str(tools_collected) + " / " + str(tools_needed)

	if tools_collected >= tools_needed:
		if counter:
			counter.text = "All tools collected! Head back to the worker."
