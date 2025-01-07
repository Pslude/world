extends Control

@onready var TableRow = preload('res://table_row.tscn')
@onready var TableCell = preload('res://table_cell.tscn')
@onready var TableHeaderCell = preload('res://table_header_cell.tscn')
@onready var TableRowButton = preload('res://table_row_button.tscn')

@export var data: Array

func Render():
	if data:
		#var cols_row = TableRow.instantiate()
		#for col in column_headers:
			#var cell = TableHeaderCell.instantiate()
			#cell.text = col
			#cols_row.add_child(cell)
		#$Rows.add_child(cols_row)
		
		for row_data in data:
			var row = TableRow.instantiate()
			$Rows.add_child(row)
			
			#for key in row_data:
				#var cell = TableCell.instantiate()
				#cell.text = str(row_data[key])
				#row.add_child(cell)
				#
			#for col_key in column_keys:
				#var cell = TableCell.instantiate()
				#cell.text = str(row_data[col_key])
				#row.add_child(cell)

func _on_header_clicked(col: String):
	print("ColClik: ", col)
