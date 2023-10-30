extends StaticBody2D

@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_toggle_cofre")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _toggle_cofre():
	sprite.frame = 1 if sprite.frame == 0 else 0
	print("Hola")

