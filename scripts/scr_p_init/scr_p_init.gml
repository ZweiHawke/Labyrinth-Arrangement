// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_p_init(){
	
#region Echo Particle
p_echo = part_type_create();
part_type_sprite(p_echo, spr_blank, false, true, false)
part_type_size(p_echo, 1, 1, 0, 0);
part_type_scale(p_echo, 1, 1);
part_type_speed(p_echo, 0, 0, 0, 0);
part_type_direction(p_echo, 80, 100, 0, 0);
part_type_gravity(p_echo, 0, 270);
part_type_orientation(p_echo, 0, 0, 0, 0, false);
part_type_colour3(p_echo, $FF0000, $FF0000, $FF0000);
part_type_alpha3(p_echo, 0.125, 0.125, 0);
part_type_blend(p_echo, false);
part_type_life(p_echo, 80, 80);
#endregion

#region Hazard Particle
p_hazard = part_type_create();
part_type_sprite(p_hazard, spr_hazard, false, true, false)
part_type_size(p_hazard, 1, 1, 0, 0);
part_type_scale(p_hazard, 1, 1);
part_type_speed(p_hazard, 0, 0, 0, 0);
part_type_direction(p_hazard, 0, 0, 0, 0);
part_type_gravity(p_hazard, 0, 270);
part_type_orientation(p_hazard, 0, 0, 0, 0, false);
part_type_colour3(p_hazard, $FF0000, $FFFFFF, $FFFFFF);
part_type_alpha3(p_hazard, 1, 1, 0);
part_type_blend(p_hazard, false);
part_type_life(p_hazard, 30, 30);

p_hazard_dots = part_type_create();
part_type_sprite(p_hazard_dots, spr_particle, false, true, false)
part_type_size(p_hazard_dots, 1, 1, 0, 0);
part_type_scale(p_hazard_dots, 1, 1);
part_type_speed(p_hazard_dots, 0, 1, 0, 0);
part_type_direction(p_hazard_dots, 0, 360, 0, 0);
part_type_gravity(p_hazard_dots, 0, 270);
part_type_orientation(p_hazard_dots, 0, 0, 0, 0, false);
part_type_colour3(p_hazard_dots, $FFFFFF, $FFFFFF, $000000);
part_type_alpha3(p_hazard_dots, 1, 0, 0);
part_type_blend(p_hazard_dots, false);
part_type_life(p_hazard_dots, 10, 50);
#endregion

#region Death Particle
p_death = part_type_create();
part_type_sprite(p_death, spr_particle, false, true, false)
part_type_size(p_death, 1, 1, 0, 0);
part_type_scale(p_death, 1, 1);
part_type_speed(p_death, 0, 1, 0, 0);
part_type_direction(p_death, 0, 360, 0, 0);
part_type_gravity(p_death, 0, 270);
part_type_orientation(p_death, 0, 0, 0, 0, false);
part_type_colour3(p_death, $FFFFFF, $FF0000, $000000);
part_type_alpha3(p_death, 1, 1, 0);
part_type_blend(p_death, false);
part_type_life(p_death, 10, 50);
#endregion

#region Lock Particle
p_lock_open = part_type_create();
part_type_sprite(p_lock_open, spr_particle, false, true, false)
part_type_size(p_lock_open, 1, 1, 0, 0);
part_type_scale(p_lock_open, 1, 1);
part_type_speed(p_lock_open, 0, 1, 0, 0);
part_type_direction(p_lock_open, 0, 360, 0, 0);
part_type_gravity(p_lock_open, 0, 270);
part_type_orientation(p_lock_open, 0, 0, 0, 0, false);
part_type_colour3(p_lock_open, $FFFFFF, $00FFFF, $000000);
part_type_alpha3(p_lock_open, 1, 1, 0);
part_type_blend(p_lock_open, false);
part_type_life(p_lock_open, 10, 50);
#endregion

}