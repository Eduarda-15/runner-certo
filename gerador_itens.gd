extends Node2D

var cena_itens = preload("res://item.tscn")
var timer = 0.0

func _process(delta):
	timer += delta
	if timer >= 1.5:
		timer = 0
		var item = cena_itens.instantiate()
		item.position.y = randi_range(330, 530)
		item.position = Vector2 (1300, 400)
		add_child(item)
