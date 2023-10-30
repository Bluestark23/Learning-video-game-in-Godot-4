extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_on_interact")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_interact():
	print("Hola soy un test")
	sprite.flip_h = interaction_area.get_overlapping_bodies()[0].global_position.x < global_position.x


