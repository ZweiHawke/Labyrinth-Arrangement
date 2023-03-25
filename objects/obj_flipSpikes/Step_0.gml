/// @description Process Turns
switch (obj_manager.currentStep) {
	// Take Player Input
	case turnStep.playerTurn: {
		cleanup = false;
	}
	break;
	// Process Events Before the Players Input
	case turnStep.beforeStep: {
		if (state) {
			state = false;
		} else {
			state = true;	
		}
		obj_manager.beforeActions -= 1;
	}
	break;
	// Process The Players Input
	case turnStep.inputStep: {
	}
	break;
	// Process Events After the Players Input
	case turnStep.afterStep: {
	}
	break;
	// Clean up and Reset for the next Turn
	case turnStep.cleanupStep: {
		if(!cleanup){
			obj_manager.beforeActions += 1;
			cleanup = true;
		}
	}
	break;
}