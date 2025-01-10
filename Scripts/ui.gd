extends Control

var score: int = 0
var deaths: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Messenger.connect("COIN_COLLECTED", coin_collected)
	Messenger.connect("PLAYER_KILLED", player_killed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func coin_collected():
	print("COIN")
	score += 1
	$Score.text = str(score)
	
func player_killed():
	print("DEAD")
	deaths += 1
	$Deaths.text = str(deaths)
