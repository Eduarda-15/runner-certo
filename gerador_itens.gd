extends Node2D

var cena_itens = preload("res://item.tscn")
var timer = 0
var tempo_spawn = 1.5
func _process(delta):
	timer += delta
	if timer >= tempo_spawn:
		timer = 0.0
		nó_instantiate()
func nó_instantiate():
	var novo_item = cena_itens.nó_instantiate()
	
	randi_range(330, 530)
