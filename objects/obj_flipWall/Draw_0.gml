/// @description Spikes
if (state) {
	if(instance_place(x,y+32,obj_flipWall)) {
		draw_sprite_ext(spr_wall,1,x,y,1,1,0,color,1);
	} else {
		draw_sprite_ext(spr_wall,0,x,y,1,1,0,color,1);
	}
} else {
	draw_sprite_ext(spr_wall_outline,0,x,y,1,1,0,color,1);
}

if (obj_manager.indicate == true) {
	draw_sprite(spr_indicator,0,x,y);
}