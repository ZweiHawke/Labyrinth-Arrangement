/// @description Process Turns

var _lr = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
var _ud = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);

#region Process Turns
	switch (obj_manager.currentStep) {
		// Take Player Input
		case turnStep.playerTurn: {
			if (_lr != 0 || _ud != 0) {
				for (i = 0; i < array_length(walls); i++) {
					if (!wallCol) {
						wallCol = place_meeting(x+(_lr*32),y+(_ud*32),walls[i]);
						if(walls[i] == obj_flipWall) {
							var _obj = instance_place(x+(_lr*32),y+(_ud*32),walls[i])
							if(_obj) {
								if(_obj.state == true) {
									wallCol = false;
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
					part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, prt_hazard, 1);
				}
			}
			
		for (i = 0; i < array_length(spikes); i++) {
			if(instance_place(x,y,spikes[i])) {
				part_particles_create(global.prt_System, x+16+xPos, y+16+yPos, prt_player_death, 500);
			}
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
						if(walls[i] == obj_flipWall) {
							var _obj = instance_place(x+(_lr*32),y+(_ud*32),walls[i])
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
			//obj_manager.currentStep = turnStep.playerTurn;
		}
		break;
	}
#endregion