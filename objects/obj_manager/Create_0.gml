/// @description Init Vars

#region framerate
global.delta = delta_time/1000000;
scale=60;
#endregion

#region Pausing
pause = false;
#endregion

#region Turn Steps
/*
TURN STEPS -
	playerTurn - Get the Input from the player and let them interact with the world.
	beforeStep - Process all swaps and things before the movement.
	inputStep - Process the player input and its consequences.
	afterStep - Process all things that happen after the movement.
	cleanupStep - Clean up all objects and perform remaining options.
*/
enum turnStep {
	playerTurn,
	beforeStep,
	inputStep,
	afterStep,
	cleanupStep
}
currentStep = turnStep.playerTurn;
#endregion
