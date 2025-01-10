extends Node2D

@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	Messenger.connect("PLAYER_KILLED", player_killed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func player_killed():
	player.position = Vector2(0,0)
	
	
func _on_the_pit_body_entered(body):
	if body.name == "Player":
		Messenger.PLAYER_KILLED.emit()
