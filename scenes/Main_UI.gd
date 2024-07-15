extends Control
@onready var current_date = %current_date
@onready var money_money = %money_money
@onready var convention_name = %convention_name
@onready var company_name = %company_name
@onready var player_name = %player_name
@onready var loan_ui =  %LoanUI
@onready var current_player:player

func open_scene(c_player:player, date:Dictionary) -> void: 
	current_player = c_player
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
	loan_ui.open(current_player.get_current_bank_loans())
