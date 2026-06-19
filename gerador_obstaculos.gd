extends Node2D

var cena_obstaculo = preload("res://obstaculo.tscn")
var timer = 0.0
var tempo_spawn = 1.2
var max_obstaculos = 8
func _ready() -> void:
	randomize()
func _process(delta):
	timer += delta
	if timer >= tempo_spawn and get_child_count() < max_obstaculos:
		timer = 0.0
	spawn_obstaculo()
func spawn_obstaculo():
	var novo_obstaculo = cena_obstaculo.instantiate()
	
	novo_obstaculo.position.x = 1300
	novo_obstaculo.position.y = randi_range(330,530)
	add_child(novo_obstaculo)
