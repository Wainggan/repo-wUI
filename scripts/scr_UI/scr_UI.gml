function UI_Element() constructor {
	width = 1;
	height = 1;
	
	pixelWidth = 0;
	pixelHeight = 0;
	xPos = 0;
	yPos = 0;
	
	lockPointer = false; // if true, the module will prevent anything else from being clicked
	
	show = function(){} // displays the element
	
	step = function(){}
	
	checkHover = function(_mouseX, _mouseY) {} // returns true if the mouse is on the element
	onClick = function(){}
	onHover = function(){}
	stopHover = function(_mouseDown){}
	
	
}

function UI_Button() : UI_Element() constructor {
	
	padding = 8
	lightUp = 0;
	
	checkHover = function(_mouseX, _mouseY) {
		return point_in_rectangle(_mouseX, _mouseY, xPos+padding, yPos+padding, xPos + pixelWidth - padding, yPos + pixelHeight - padding)
	}
	onClick = function(){
		show_debug_message("hello")
	}
	show = function() {
		//draw_sprite_stretched(spr_ui_buttonDebug, 0, xPos+padding, yPos+padding, pixelWidth-padding*2, pixelHeight-padding*2)
		draw_set_color(merge_color(c_black, c_white, lightUp))
		draw_roundrect(xPos+padding, yPos+padding, xPos + pixelWidth - padding, yPos + pixelHeight - padding, 0)
		draw_set_color(merge_color(c_white, c_black, lightUp))
		draw_roundrect(xPos+padding, yPos+padding, xPos + pixelWidth - padding, yPos + pixelHeight - padding, 1)
		
		draw_set_color(c_white)
	}
	onHover = function(){
		lightUp = lerp(lightUp, 1, 0.3)
	}
	stopHover = function(_mouseDown){
		lightUp = lerp(lightUp, 0, 0.3)
	}
}