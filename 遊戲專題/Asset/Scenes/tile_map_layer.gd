extends TileMapLayer

func _unhandled_input(event: InputEvent) -> void:
	# 判斷是否按下滑鼠左鍵
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		# 1. 取得滑鼠的全域位置並轉為此節點的區域位置
		var local_mouse_pos = to_local(get_global_mouse_position())
		
		# 2. 轉換為網格座標 (Vector2i)
		var grid_pos: Vector2i = local_to_map(local_mouse_pos)
		
		print("點擊的網格座標：", grid_pos)
		
		# 3. 判斷該位置是否有圖塊或讀取 Tile 資料
		var tile_data = get_cell_tile_data(grid_pos)
		if tile_data != null:
			print("點擊了有效的圖塊！")
