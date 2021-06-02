class_name ControllerPlayerLaser
extends ControllerPlayer


func _on_Ship_targeted(msg: Dictionary) -> void:
	._on_Ship_targeted(msg)
	_ui_weapon_button.pressed = false


func _on_UIWeaponButton_toggled(is_pressed: bool) -> void:
	._on_UIWeaponButton_toggled(is_pressed)
	weapon.targeted = not is_pressed
	emit_signal(
		"targeting", {"type": Type.LASER, "is_targeting": is_pressed, "targeting_length": weapon.targeting_length}
	)
