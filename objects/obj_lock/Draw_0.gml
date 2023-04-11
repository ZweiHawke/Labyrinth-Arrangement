/// @description Draw Wall
if(instance_place(x,y+32,obj_wall)) {
	draw_sprite_ext(spr_lock,1,x,y,1,1,0,color,1-state);
} else {
	draw_sprite_ext(spr_lock,0,x,y,1,1,0,color,1-state);
}