extends Node

var citizens_talked := 0
var citizens_needed := 3
var mexico_quest_complete := false
var mexico_quest_started := false


func start_mexico_quest():
	mexico_quest_started = true
	citizens_talked = 0
	mexico_quest_complete = false


func talk_to_citizen():
	if !mexico_quest_started:
		return

	citizens_talked += 1

	if citizens_talked >= citizens_needed:
		mexico_quest_complete = true
		print("Mexico quest complete!")
