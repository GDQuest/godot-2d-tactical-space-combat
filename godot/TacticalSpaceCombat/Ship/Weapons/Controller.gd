class_name Controller
extends Node2D

signal targeting(msg)

onready var weapon: Weapon = $Weapon


func _on_Ship_targeted(msg: Dictionary) -> void:
	match msg:
		{"index": var index, "target_position": var target_position}:
			if index == get_index():
				weapon.target_position = target_position
		{}:
			weapon.targeted = true
