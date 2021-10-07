{// i left this here because i am unbelivably lazy
	
}

{// define module
	function UI_Module() constructor {
		elements = []
		elementsWidth = 0;
		elementsHeight = 0;
		
		width = 0;
		height = 0;
		x = 0;
		y = 0;
		
		show = function(){
			draw_roundrect(x, y, x + width, y + height, 1)
			for (var _x = 0; _x < array_length(elements); _x++) {
				for (var _y = 0; _y < array_length(elements[0]); _y++) {
					var e = elements[_x][_y]
					if e != -1 {
						e.show()
					}
				}
			}
		}

		func_formatElements = function(_width, _height) {
			elements = []
			for (var _x = 0; _x < _width; _x++) {
				elements[_x] = []
				for (var _y = 0; _y < _height; _y++) {
					elements[_x][_y] = -1
				}
			}
			elementsWidth = _width;
			elementsHeight = _height;
		}

		func_addElement = function(_x, _y, _element) {
			elements[_x][_y] = _element
		}
		
		
		func_updateElements = function() {
			for (var _x = 0; _x < array_length(elements); _x++) {
				for (var _y = 0; _y < array_length(elements[0]); _y++) {
					var e = elements[_x][_y]
					if e != -1 {
			
						var _w = (width / elementsWidth)
						var _h = (height / elementsHeight)
			
						e.xPos = x + _x * _w
						e.yPos = y + _y * _h
			
						e.pixelWidth = _w * e.width
						e.pixelHeight = _h * e.height
						
						
						if e.checkHover(mouse_x, mouse_y) {
							e.onHover();
							if mouse_check_button_pressed(mb_left) {
								e.onClick()
							}
				
						} else {
							e.stopHover(mouse_check_button(mb_left));
						}
			
					}
				}
			}
		}
	}
}

modules = [];

function ui_addModule(_mod) {
	array_push(modules, _mod)
}