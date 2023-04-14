/// @description Draw Wall
var _fl = obj_manager.float;
switch (dir) {
	case pointDir.left: {
		draw_sprite_ext(spr_arrows,0,x-16+_fl,y+16,1,1,dir*90,c_white,0.5);
		draw_sprite_ext(spr_spike,0,x,y,1,1,0,color,1);
		if (obj_manager.indicate == true) {
			draw_sprite(spr_indicator,2,x,y);
		}
	}
	break;
	case pointDir.up: {
		draw_sprite_ext(spr_arrows,0,x+16,y-16+_fl,1,1,dir*90,c_white,0.5);
		draw_sprite_ext(spr_spike,0,x,y,1,1,0,color,1);
		if (obj_manager.indicate == true) {
			draw_sprite(spr_indicator,1,x,y);
		}
	}
	break;
	case pointDir.right: {
		draw_sprite_ext(spr_arrows,0,x+48+_fl,y+16,1,1,dir*90,c_white,0.5);
		draw_sprite_ext(spr_spike,0,x,y,1,1,0,color,1);
		if (obj_manager.indicate == true) {
			draw_sprite(spr_indicator,2,x,y);
		}
	}
	break;
	case pointDir.down: {
		draw_sprite_ext(spr_arrows,0,x+16,y+48+_fl,1,1,dir*90,c_white,0.5);
		draw_sprite_ext(spr_spike,0,x,y,1,1,0,color,1);
		if (obj_manager.indicate == true) {
			draw_sprite(spr_indicator,1,x,y);
		}
	}
	break;
}
