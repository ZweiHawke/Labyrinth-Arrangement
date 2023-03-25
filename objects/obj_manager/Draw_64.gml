/// @description Draw HUD

#region Debug HUD

//Initialize Style Sheet
draw_set_font(font_ibm_12);

//Debug Menus
if (debug_mode) {
	draw_set_color(c_white);
	draw_text_ext_transformed_color(16,16+(16*0),"FPS: "+string(fps),0,320000,1,1,0,c_white,c_white,c_white,c_white,1);
	draw_text_ext_transformed_color(16,16+(16*1),"FPS Real: "+string(fps_real),0,320000,1,1,0,c_white,c_white,c_white,c_white,1);
	draw_text_ext_transformed_color(16,16+(16*2),"Turn Step: "+string(currentStep),0,320000,1,1,0,c_white,c_white,c_white,c_white,1);
}

#endregion