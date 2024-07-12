extends Node2D
@onready var day_night_timer = %Day_NightTimer
@onready var main_ui = %MainUi
@onready var mplayer = %player
var total_days = 0 
var date = {"day": 1, "month": 1, "year":2024} 
# Called when the node enters the scene tree for the first time.
func _ready():
	main_ui.open_scene(mplayer, date) 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_day_night_timer_timeout():
	total_days += 1 # Total ingame Days played 
	date.day += 1 # Increment the day by 1 
	if (date.day % 30 == 0  && date.day % (30 * 12) != 0): 
		# This means that a new month has passed, but not a year
		date.month += 1
		date.day = 1 
		mplayer.check_bank_loans()
	if (date.month % 13 == 0): 
		# This means a whole game year has been completed.
		date.year += 1
		date.month = 1
		date.day = 1  
		
	main_ui.update_money(mplayer.money)
	main_ui.update_date(date)
