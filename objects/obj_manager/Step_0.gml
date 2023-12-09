/// @description Game Management
global.delta = delta_time/1000000*scale;

var _indicate = keyboard_check(vk_shift);
indicate = _indicate;

if (prtUpdate >= 1) {
	part_system_update(global.prt_System);
	prtUpdate = 0;
} else {
	prtUpdate += 1*global.delta;
}

if (resetEnabled && !instance_exists(obj_player)) {
	if (resetDelay >= 1) {
		resetDelay = 0;
		pass = passStart;
		with(obj_flip) {
			state = defState;
			part_particles_create(global.prt_System, x+16, y+16, p_hazard_dots, 5);
		}
		with(obj_pickup) {
			reset = true;
		}
		with(obj_lock) {
			state = false;
		}
		with(obj_movingSpike) {
			dir = defDir;
			x = spawnPoint[0];
			y = spawnPoint[1];
			part_particles_create(global.prt_System, x+16, y+16, p_hazard_dots, 5);
		}
		keys[0] += usedKeys[0];
		usedKeys[0] = 0;
		instance_create_layer(resetPoint[0],resetPoint[1],"Objects",obj_player);
	} else {
		resetDelay += 0.01*global.delta;	
	}
}

if (float >= 1) {
	floatSide = -3;
} else if (float <= -1) {
	floatSide = 3;
}
float = lerp(float,floatSide,0.02*global.delta);

#region Steps
switch (obj_manager.currentStep) {
	// Take Player Input
	case turnStep.playerTurn: {

	}
	break;
	// Process Events Before the Players Input
	case turnStep.beforeStep: {
		if (beforeActions <= 0) {
			obj_manager.currentStep = turnStep.inputStep;
		}
	}
	break;
	// Process The Players Input
	case turnStep.inputStep: {
		if (inputActions <= 0) {
			obj_manager.currentStep = turnStep.afterStep;
		}
	}
	break;
	// Process Events After the Players Input
	case turnStep.afterStep: {
		if (afterActions <= 0) {
			obj_manager.currentStep = turnStep.cleanupStep;
		}
	}
	break;
	// Clean up and Reset for the next Turn
	case turnStep.cleanupStep: {
		obj_manager.currentStep = turnStep.playerTurn;
	}
	break;
}
#endregion