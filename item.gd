extends Area2D

@export var velocidade = 200

func _process(delta):
	position.x  -= velocidade * delta
	if position.x < -100: 
		queue_free()  


func _on_body_entered(body: Node2D) -> void:
	if "pontos" in body:
		body.pontos += 1
	queue_free()
