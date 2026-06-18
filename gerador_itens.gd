extends Node2D

var cena_itens = preload("res://item.tscn")
var timer = 0.0
var tempo_spawn = 1.5
func _ready() -> void:
	randomize()
func _process(delta):
	timer += delta
	if timer >= tempo_spawn:
		timer = 0.0
	spawn_item()
func spawn_item():
	var novo_item = cena_itens.instantiate()
	novo_item.position.x = 1152
	novo_item.position.y = randi_range(330, 530)
	get_tree().current_scene.add_child(novo_item)
