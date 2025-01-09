extends Node2D

@onready var player = $Character




# Called when the node enters the scene tree for the first time.
func _ready():
	Messenger.connect("COIN_COLLECTED", coin_collected)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func coin_collected():
	print("Coin Collected")
