extends Area2D

export(bool) var show_hit = true

const HitEffect = preload("res://Effects/HitEffect.tscn")

func _on_Hurtbox_area_entered(area):
	if show_hit:
		var effect = HitEffect.instance()
		var main = get_tree().current_scene
		effect.global_position = global_position
		main.add_child(effect)
