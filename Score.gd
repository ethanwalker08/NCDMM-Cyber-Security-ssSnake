extends Node2D

onready var screen_size = get_viewport().size

func _ready():
	pass
	
func update_score(snake_length):
	
	$ScoreText.text = str(snake_length - 2)


func _draw():
	var score_width = $Apple.get_rect().size.x + $ScoreText.get_rect().size.x - 16
	var bg_rect = Rect2($Apple.position.x -20,$Apple.position.y - 20,score_width,40)
	draw_rect(bg_rect,Color8(7,64,116))
	draw_rect(bg_rect,Color8(8,25,41),false)
