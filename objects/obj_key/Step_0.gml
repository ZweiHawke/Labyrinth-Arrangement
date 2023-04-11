/// @description ???

if (reset && collected) {
	obj_manager.keys[0] -= 1;
}

event_inherited();

if (collect && !collected) {
	obj_manager.keys[0] += 1;
	part_particles_create(global.prt_System, x+16, y+16, prt_lock_open, 50);
	collected = true;	
}