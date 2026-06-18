extends Node2D

var cena_obstaculo = preload("res://obstaculo.tscn")
var timer = 0.0
var tempo_spawn = 2.0
func _ready() -> void:
	randomize()
func _process(delta):
	timer += delta
	if timer >= tempo_spawn:
		timer = 0.0
	spawn_obstaculo()
func spawn_obstaculo():
	var novo_obstaculo = cena_obstaculo.instantiate()
	
	novo_obstaculo.position.x = 1300
	novo_obstaculo.position.y = randi_range(330,530)
	get_tree().current_scene.add_child(novo_obstaculo)
