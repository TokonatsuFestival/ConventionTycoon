class_name convention
extends Node
enum location_type {Hotel, Campsite, Convention_Centre}

@export var convention_name:String 
@export var convention_cost:int #This is going to be the main tracker for the overall cost of the convention
@export var convention_gains:int #Ticket Sales, Vendor Fees, etc 
@export var convention_type:location_type
@export var convention_staff:Array[personal] #Staff, Volunteers, Other People
@export var convention_vendors:Array[vendor] # All the Vendors! 
@export var convention_activites:Array[activity]
@export var convention_tickets:Array[ticket]
@export var concention_dates:Dictionary #Start and End Dates
