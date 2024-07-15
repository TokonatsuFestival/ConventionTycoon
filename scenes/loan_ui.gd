class_name LoanUI
extends PanelContainer
@onready var loan_list = %Loan_list
@export var loan_slot:PackedScene

func open(loans) -> void:
	show()
	for child in loan_list.get_children():
		child.queue_free()
	for loan in loans:
		var l_slot = loan_slot.instantiate()
		loan_list.add_child(l_slot)
		l_slot.display(loan)


func _on_button_pressed():
	hide()
