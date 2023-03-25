/// @description Game Management
global.delta = delta_time/1000000*scale;

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