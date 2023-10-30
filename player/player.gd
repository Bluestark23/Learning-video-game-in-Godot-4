extends CharacterBody2D

@export var speed: int =135 ##esto es una variable global, se puede usar desde el inspecto
@onready var animations = $AnimationPlayer##es una referencia a la aniamcion animationplayer
func handleInput():
	#declaracion de variable local y entrada de datos
	var moveDirection = Input.get_vector("ui_right","ui_left","ui_down","ui_up")
	velocity = moveDirection * speed ##velocidad por direccion de movimiento
func updateAnimation():
	if velocity.length()==0:##longitud del vector
		if animations.is_playing():
			animations.stop()####detiene la animacion si no se esta moviendo
	else:
		var direction ="up"
		if velocity.x < 0: direction = "left"
		elif velocity.x > 0: direction ="right"
		elif velocity.y > 0: direction = "down"

		animations.play("walk" + direction)##se llama a una funcion para llamara correctamente a la animacion
	
func _physics_process(delta): ###Esto es una funcion especificica
	handleInput()##DEBO INVESTIGAR SOBRE ESTA FUNCION
	move_and_slide()
	updateAnimation()
