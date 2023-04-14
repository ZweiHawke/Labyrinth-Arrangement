/// @description ???
switch (obj_manager.currentStep) {
	// Take Player Input
	case turnStep.playerTurn: {
		switch (dir) {
			case pointDir.left: {
				if (instance_position(x-32,y,obj_wall)) {
					dir = pointDir.right;
				}
			}
			break;
			case pointDir.up: {
				if (instance_position(x,y-32,obj_wall)) {
					dir = pointDir.down;
				}
			}
			break;
			case pointDir.right: {
				if (instance_position(x+32,y,obj_wall)) {
					dir = pointDir.left;
				}
			}
			break;
			case pointDir.down: {
				if (instance_position(x,y+32,obj_wall)) {
					dir = pointDir.up;
				}
			}
			break;
		}
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
				x -= 1*gridSize;
			}
			break;
			case pointDir.up: {
				y -= 1*gridSize;
			}
			break;
			case pointDir.right: {
				x += 1*gridSize;
			}
			break;
			case pointDir.down: {
				y += 1*gridSize;
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