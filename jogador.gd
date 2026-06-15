extends CharacterBody2D

var velocidade_pulo = -600
var vida = 5
var pontos = 0
func _physics_process(delta: float) -> void:
	
	velocity += get_gravity()*delta
	
	if is_on_floor():
		$Imagem.play("default")
		if Input.is_action_pressed("ui_select"):
			velocity.y = velocidade_pulo
	else:
		$Imagem.play("pular")
	move_and_slide()
