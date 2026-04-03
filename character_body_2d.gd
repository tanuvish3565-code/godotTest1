extends CharacterBody2D

const SPEED = 300.0
var dir = Vector2.ZERO

func _physics_process(delta):
	velocity = dir * SPEED
	move_and_collide(velocity * delta)
			
func _on_left_btn_button_down(): dir.x = -1
func _on_left_btn_button_up(): dir.x = 0
func _on_right_btn_button_down(): dir.x = 1
func _on_right_btn_button_up(): dir.x = 0
func _on_up_btn_button_down(): dir.y = -1
func _on_up_btn_button_up(): dir.y = 0
func _on_down_btn_button_down(): dir.y = 1
func _on_down_btn_button_up(): dir.y = 0
