extends Node2D

var lives = 3
var coins = 0

const TARGET_NUMBER_OF_COINS = 10

func _ready():
    add_to_group("Gamestate")
    update_GUI()

func hurt():
    lives -= 1
    update_GUI()
    $Player.hurt()
    if lives < 0:
        end_game()

func update_GUI():
    get_tree().call_group("GUI", "update_GUI", lives, coins)

func coin_up():
    coins += 1
    update_GUI()
    if coins % TARGET_NUMBER_OF_COINS == 0:
        live_up()

func live_up():
    lives += 1
    update_GUI()

func end_game():
    get_tree().change_scene("res://Levels/EndGame.tscn")

func win_game():
    get_tree().change_scene("res://Levels/Victory.tscn")