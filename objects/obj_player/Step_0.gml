/// @description Process Turns

var _lr = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
var _ud = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
var _pass = keyboard_check_pressed(vk_space);
var _reset = keyboard_check_pressed(ord("R"));


#region Process Turns
	switch (obj_manager.currentStep) {
		// Take Player Input
		case turnStep.playerTurn: {
			if (_lr != 0 || _ud != 0) {
				for (i = 0; i < array_length(walls); i++) {
					if (!wallCol) {
						wallCol = place_meeting(x+(_lr*32),y+(_ud*32),walls[i]);
						if(walls[i] == obj_flipWall || walls[i] == obj_lock) {
							var _obj = instance_place(x+(_lr*32),y+(_ud*32),walls[i])
							if(_obj) {
								if(_obj.state == true) {
									wallCol = false;
								}
							}
							var _objK = instance_place(x+(_lr*32),y+(_ud*32),obj_lock)
							if(_objK) {
								if (obj_manager.keys[0] && !_objK.state) {
									_objK.state = true;
									part_particles_create(global.prt_System, x+16+(_lr*32), y+16+(_ud*32), p_lock_open, 500);
									obj_manager.keys[0] -= 1;
									obj_manager.usedKeys[0] += 1;
								}
							}
						}
					}
				}
				if (!wallCol) {
					xPos = _lr*gridSize;
					yPos = _ud*gridSize;
					obj_manager.currentStep = turnStep.beforeStep;
				} else {
					wallCol = false;
					xPos = _lr*gridSize;
					yPos = _ud*gridSize;
					part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_hazard, 1);
					part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_hazard_dots, 50);
				}
			} else if (_pass && obj_manager.pass > 0) {
				if (instance_place(x,y,obj_flipWall)) {
					part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_hazard, 1);
					part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_hazard_dots, 50);	
				} else {
					xPos = 0;
					yPos = 0;
					part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_death, 50);
					obj_manager.currentStep = turnStep.beforeStep;
					obj_manager.pass -= 1;
				}
			} else if (_pass) {
				part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_hazard, 1);
				part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_hazard_dots, 50);	
			} else if (_reset) {
				instance_destroy(self);
			}
			
		for (i = 0; i < array_length(spikes); i++) {
			if(instance_place(x,y,spikes[i])) {
				var _obj = instance_place(x,y,spikes[i]);
				if(_obj.state == true) {
					instance_destroy(self);
				}
			}
		}
		
		if (instance_place(x+xPos,y+yPos,obj_movingSpike)) {
				var _obj = instance_place(x+xPos,y+yPos,obj_movingSpike);
				switch (_obj.dir) {
					case pointDir.left: {
						if(xPos > 0) {
							xPos = 0;
							yPos = 0;
							instance_destroy(self);
						}
					}
					break;
					case pointDir.up: {
						if(yPos > 0) {
							xPos = 0;
							yPos = 0;
							instance_destroy(self);
						}
					}
					break;
					case pointDir.right: {
						if(xPos < 0) {
							xPos = 0;
							yPos = 0;
							instance_destroy(self);
						}
					}
					break;
					case pointDir.down: {
						if(yPos < 0) {
							xPos = 0;
							yPos = 0;
							instance_destroy(self);
						}
					}
					break;
				}
			}
		
		if(instance_place(x,y,obj_pickup)) {
			var _obj = instance_place(x,y,obj_pickup);
			if (!_obj.collect) {
				part_particles_create(global.prt_System, x+16, y+16, p_hazard_dots, 500);
			}
			_obj.collect = true;
		}
		
		if(instance_place(x,y,obj_wall)) {
			part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, p_death, 500);
			instance_destroy(self);
		}
		
		}
		break;
		// Process Events Before the Players Input
		case turnStep.beforeStep: {
			//obj_manager.currentStep = turnStep.inputStep;
		}
		break;
		// Process The Players Input
		case turnStep.inputStep: {
			for (i = 0; i < array_length(walls); i++) {
					if (!wallCol) {
						wallCol = place_meeting(x+(_lr*32),y+(_ud*32),walls[i]);
						if(walls[i] == obj_flipWall || walls[i] == obj_lock) {
							var _obj = instance_place(x+(_lr*32),y+(_ud*32),walls[i]);
							if(_obj) {
								if(_obj.state == true) {
									wallCol = false;
								}
							}
						}
					}
				}
			if (!wallCol) {
				x += xPos;
				y += yPos;
				//part_system_depth(global.prt_System, 100);
				part_particles_create(global.prt_System, x-(xPos*0.8), y-(yPos*0.8), p_echo, 1);
				part_particles_create(global.prt_System, x-(xPos*0.6), y-(yPos*0.6), p_echo, 1);
				part_particles_create(global.prt_System, x-(xPos*0.4), y-(yPos*0.4), p_echo, 1);
				part_particles_create(global.prt_System, x-(xPos*0.2), y-(yPos*0.2), p_echo, 1);
				part_particles_create(global.prt_System, x, y, p_echo, 1);
				//obj_manager.currentStep = turnStep.afterStep;
			} else {
				wallCol = false;	
			}
		}
		break;
		// Process Events After the Players Input
		case turnStep.afterStep: {
			//obj_manager.currentStep = turnStep.cleanupStep;
		}
		break;
		// Clean up and Reset for the next Turn
		case turnStep.cleanupStep: {
			xPos = 0;
			yPos = 0;
			turnPass = false;
			//obj_manager.currentStep = turnStep.playerTurn;
		}
		break;
	}
#endregion