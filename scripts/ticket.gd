class_name ticket
extends Resource

enum type {single, multi_day, weekend, early_access, vip}

@export var ticketName:String
@export var ticketType:type = "single"
@export var ticketPrice:float = 00.00
@export var numberSold:int = 0 
@export var numberRefund:int = 0 

func set_ticket_price(price:float) -> void:
	ticketPrice = price
	
func get_ticket_price() -> float:
	return ticketPrice
	
	
