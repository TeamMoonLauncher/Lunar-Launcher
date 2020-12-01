/// @description a_button()
function a_button() {
	if(keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_any))return true; else return false;


}
