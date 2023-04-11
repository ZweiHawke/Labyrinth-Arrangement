/// @description ???
draw_sprite_ext(spr_key,0,x,y+3,1,1,0,c_black,0.5-collected);
draw_sprite_ext(spr_key,0,x,y+(obj_manager.float),1,1,0,color,1-collected);

if (obj_manager.indicate == true) {
	draw_sprite(spr_indicator,3,x,y);
	draw_sprite(spr_symbols,0,x,y);
}