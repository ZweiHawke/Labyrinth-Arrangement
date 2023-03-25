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

#region Pallete
/*
PALLETE - 
	0 - Player and Checkpoints
	1 - Static Objects
*/
colorSet = [
	make_color_rgb(0,0,200),
	make_color_rgb(128,128,128)
];
#endregion