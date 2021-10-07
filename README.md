# repo-wUI
 A UI system for Gamemaker Studio 2

WIP

It would work like this:
First you make a module struct, which would contain a bunch of elements
Then you make an element(can be a button, a slider, idc), and configure that element to your liking, then give that element to the module
The module would deal with rendering the elements, and ask the elements if they are being selected and whatever


Basically like this:

```javascript

var module = new UI_module();
with (module) {
	func_formatElements(4, 4);
	
	x = 256;
	y = 256;
	width = 512;
	height = 320;
	
	
	var element = new UI_button();
	with (element) {
		width = 2;
		onClick = function() {
			show_debug_message("AAAAAAAAAAAA");
		}
	}
	func_addElement(0, 0, element);
	
	var element = new UI_slider();
	with (element) {
		width = 4;
	}
	func_addElement(1, 0, element);
}
ui_addModule(module);

```

idk