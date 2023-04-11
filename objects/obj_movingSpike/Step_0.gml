/// @description ???
switch (obj_manager.currentStep) {
	// Take Player Input
	case turnStep.playerTurn: {
		cleanup = false;
	}
	break;
	// Process Events Before the Players Input
	case turnStep.beforeStep: {
	}
	break;
	// Process The Players Input
	case turnStep.inputStep: {
	}
	break;
	// Process Events After the Players Input
	case turnStep.afterStep: {
		switch (dir) {
			case pointDir.left: {
				x += 1*gridSize;
			}
			break;
			case pointDir.up: {
				x -= 1*gridSize;
			}
			break;
			case pointDir.right: {
				x -= 1*gridSize;
			}
			break;
			case pointDir.down: {
				x += 1*gridSize;
			}
			break;
		}
		obj_manager.afterActions -= 1;
	}
	break;
	// Clean up and Reset for the next Turn
	case turnStep.cleanupStep: {
		if(!cleanup){
			obj_manager.afterActions += 1;
			cleanup = true;
		}
	}
	break;
}