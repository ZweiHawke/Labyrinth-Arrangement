/// @description Draw Wall
if(instance_place(x,y+32,obj_wall)) {
	draw_sprite_ext(spr_wall,1,x,y,1,1,0,color,1);
} else {
	draw_sprite_ext(spr_wall,0,x,y,1,1,0,color,1);
}