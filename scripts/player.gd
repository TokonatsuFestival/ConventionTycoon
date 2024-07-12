class_name player
extends Node

@export var player_name:String = "New Player"
# A player may make a new company whenever, but they lose the old company! This Old Company then becomes owned by the Game AI 
@export var company_name:String = "New Company"
@export var convention_base_name:String = "New Convention"
@export var money:float = 50000.00
@export var overdraft_allowance:float = 0.00
@export var bank_loans:Array[bank_loan]
@export var conventions:Array[convention]   
@export var player_level:int = 1
@export var player_exp:int = 0 

func get_current_funds() -> float:
	return money
	
func get_current_bank_loans() -> Array:
	return bank_loans; 

func check_bank_loans() -> void:
	for loan in bank_loans:
		loan.pay_off_amount_remaining(loan.minimum_payment)
		money -= loan.minimum_payment
		loan.calculate_interest()
		print(loan.amount_remaining)
		if (!loan.active):
			bank_loans.remove_at(bank_loans.find(loan))
