var module = new UI_Module();
with module {
	width = 256;
	height = 256;
	x = 128;
	y = 128;
	
	func_formatElements(4, 4);
	
	var elem = new UI_Button();
	with elem {
		width = 2;
	}
	func_addElement(0, 0, elem);
	
	var elem = new UI_Button();
	with elem {
		width = 4;
	}
	func_addElement(0, 2, elem);
	
	
}

ui_addModule(module);