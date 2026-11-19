extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%左側資訊欄.visible=false
	%右側命令選單.visible=false
	%網格.visible=false
	%開始按鈕.visible=true
	%故事.visible=true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_開始按鈕_pressed() -> void:
	%左側資訊欄.visible=true
	%右側命令選單.visible=true
	%網格.visible=true
	%開始按鈕.visible=false
	%故事.visible=false
