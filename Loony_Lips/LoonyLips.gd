extends Control

func _ready():
	var prompts = ['Yann', 'Minions', 'greatest', 'two decades']
	var story = 'Once upon a time %s watched %s and thought it was the %s movie of the last %s'
	print(story % prompts)
	prompts = ['Rick', 'Star Wars', 'greatest', 'two centuries']
	print(story % prompts)
	pass
