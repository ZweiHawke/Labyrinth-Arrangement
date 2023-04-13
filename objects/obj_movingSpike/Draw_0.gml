/// @description Draw Wall
var _fl = obj_manager.float;
switch (dir) {
	case pointDir.left: {
		draw_sprite_ext(spr_arrows,0,x-16+_fl,y+16,1,1,dir*90,color,0.5);
	}
	break;
	case pointDir.up: {
		draw_sprite_ext(spr_arrows,0,x+16,y-16+_fl,1,1,dir*90,color,0.5);
	}
	break;
	case pointDir.right: {
		draw_sprite_ext(spr_arrows,0,x+48+_fl,y+16,1,1,dir*90,color,0.5);
	}
	break;
	case pointDir.down: {
		draw_sprite_ext(spr_arrows,0,x+16,y+48+_fl,1,1,dir*90,color,0.5);
	}
	break;
}

draw_sprite_ext(spr_spike,0,x,y,1,1,0,color,1);