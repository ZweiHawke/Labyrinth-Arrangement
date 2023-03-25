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
	draw_text_ext_transformed_color(16,16+(16*3),"Player Color: "+string(colour_get_red(colorSet[0]))+","+string(colour_get_green(colorSet[0]))+","+string(colour_get_blue(colorSet[0])),0,320000,1,1,0,colorSet[0],colorSet[0],colorSet[0],colorSet[0],1);
	draw_text_ext_transformed_color(16,16+(16*4),"Statics Color: "+string(colour_get_red(colorSet[1]))+","+string(colour_get_green(colorSet[1]))+","+string(colour_get_blue(colorSet[1])),0,320000,1,1,0,colorSet[1],colorSet[1],colorSet[1],colorSet[1],1);
	draw_text_ext_transformed_color(16,16+(16*5),"FSpike Color: "+string(colour_get_red(colorSet[2]))+","+string(colour_get_green(colorSet[2]))+","+string(colour_get_blue(colorSet[2])),0,320000,1,1,0,colorSet[2],colorSet[2],colorSet[2],colorSet[2],1);
	draw_text_ext_transformed_color(16,16+(16*6),"FWall Color: "+string(colour_get_red(colorSet[3]))+","+string(colour_get_green(colorSet[3]))+","+string(colour_get_blue(colorSet[3])),0,320000,1,1,0,colorSet[3],colorSet[3],colorSet[3],colorSet[3],1);
	draw_text_ext_transformed_color(16,16+(16*7),"Moving Color: "+string(colour_get_red(colorSet[4]))+","+string(colour_get_green(colorSet[4]))+","+string(colour_get_blue(colorSet[4])),0,320000,1,1,0,colorSet[4],colorSet[4],colorSet[4],colorSet[4],1);
	draw_text_ext_transformed_color(16,16+(16*8),"Switch Color: "+string(colour_get_red(colorSet[5]))+","+string(colour_get_green(colorSet[5]))+","+string(colour_get_blue(colorSet[5])),0,320000,1,1,0,colorSet[5],colorSet[5],colorSet[5],colorSet[5],1);
	draw_text_ext_transformed_color(16,16+(16*9),"Keys Color: "+string(colour_get_red(colorSet[6]))+","+string(colour_get_green(colorSet[6]))+","+string(colour_get_blue(colorSet[6])),0,320000,1,1,0,colorSet[6],colorSet[6],colorSet[6],colorSet[6],1);
	draw_text_ext_transformed_color(16,16+(16*10),"Diamond Color: "+string(colour_get_red(colorSet[7]))+","+string(colour_get_green(colorSet[7]))+","+string(colour_get_blue(colorSet[7])),0,320000,1,1,0,colorSet[7],colorSet[7],colorSet[7],colorSet[7],1);
}

#endregion