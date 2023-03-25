/// @description Process Turns

var _lr = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
var _ud = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);


switch (obj_manager.currentStep) {
	// Take Player Input
	case turnStep.playerTurn: {
		if (_lr != 0 || _ud != 0) {
			if (!instance_place(x+(_lr*32),y+(_ud*32),obj_wall)) {
				xPos = _lr*gridSize;
				yPos = _ud*gridSize;
				obj_manager.currentStep = turnStep.beforeStep;
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
		if (!instance_place(x+(xPos),y+(yPos),obj_wall)) {
			x += xPos;
			y += yPos;
			//obj_manager.currentStep = turnStep.afterStep;
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