extends Node
var finish=false
var day=1
var max_day=30
var money=10
var money_per_day=1
var lighthouse_progress=0
var lighthouse_build_time=10


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%左側資訊欄.visible=false
	%右側命令選單.visible=false
	%網格.visible=false
	%開始按鈕.visible=true
	%故事.visible=true
	update()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_開始按鈕_pressed() -> void:
	%左側資訊欄.visible=true
	%右側命令選單.visible=true
	%網格.visible=true
	%開始按鈕.visible=false
	%故事.visible=false


func _on_下一回合按鈕_pressed() -> void:
	if finish==false: 
		computer_phase()
		%左側資訊欄.visible=true
		day+=1
		money+=money_per_day
		update()
		
		
	
	
func computer_phase() -> void:
	%左側資訊欄.visible=false
	
func update()->void:
	%日期.text="日期:1/"+str(day)
	%資源數量顯示.text="金錢:"+str(money)
	%剩餘天數.text="剩餘天數:"+str(max_day-day)
