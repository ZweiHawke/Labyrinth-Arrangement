/// @description Spikes
if (state) {
	draw_sprite_ext(spr_spike,0,x,y,1,1,0,color,1);
} else {
	draw_sprite_ext(spr_spike_outline,0,x,y,1,1,0,color,1);
}
draw_text(x,y-32,cool);