class_name bank_loan
extends Resource

@export var bank:String
@export var amount:float
@export var interest:float # AER Interest, so if set to 5% it's not 5% per month, but more like 0.417% per month
@export var amount_remaining:float
@export var active:bool = false
@export var player_level_to_unlock:int = 0 
@export var locked_interest:bool = false # Locked means that the Interest Value will not change while it's locked, otherwise it will update by the BotG (Bank of the Game)
@export var minimum_payment:float = 100

# Void == a Function that doesn't return anything!
func calculate_interest() -> void: 
	var calculate_rate = interest / 12  # So this gives us the actual interest rate for this month. 
	amount_remaining += amount_remaining * calculate_rate

func calculate_minimum_payment() -> void:
	var estimate = (amount_remaining * 0.025) + 100
	if (estimate > amount_remaining):
		minimum_payment = amount_remaining
	else:
		minimum_payment = estimate

func pay_off_amount_remaining(payment_amount:float) -> void:
	if (amount_remaining >= 0):
		amount_remaining -= payment_amount
	else:
		active = false
	calculate_minimum_payment()
	
	
