extends PanelContainer

@onready var bank_name = %bank_name
@onready var loan_amount = %loan_amount
@onready var amount_remaining = %amount_remaining
@onready var interest_label = %interest_label
@onready var minimum_payment_label = %minimum_payment_label

func display(loan:bank_loan)-> void:
	bank_name = loan.bank
	loan_amount = str(loan.amount)
	amount_remaining = str(loan.amount_remaining)
	interest_label = str(loan.interest)
	minimum_payment_label = str(loan.minimum_payment)
