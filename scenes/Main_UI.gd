extends Control
@onready var current_date = %current_date
@onready var money_money = %money_money
@onready var convention_name = %convention_name
@onready var company_name = %company_name
@onready var player_name = %player_name


func open_scene(current_player:player, date:Dictionary) -> void: 
	player_name.text = current_player.player_name
	update_money(current_player.money)
	convention_name.text = current_player.convention_base_name
	company_name.text = current_player.company_name
	update_date(date)

func update_date(date:Dictionary) -> void:
	current_date.text = "%d/%d/%d" % [date["day"], date["month"], date["year"]]

func update_money(money:float) -> void:
	money_money.text = str(money).pad_decimals(2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_loans_pressed():
	pass # Replace with function body.
