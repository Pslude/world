extends Control

@onready var TableRow = preload('res://table_row.tscn')
@onready var TableCell = preload('res://table_cell.tscn')

@export var data: Array

func Render():
	for row_data in data:
		var row = TableRow.instantiate()
		$Rows.add_child(row)
		for key in row_data:
			var cell = TableCell.instantiate()
			cell.text = str(row_data[key])
			row.add_child(cell)
