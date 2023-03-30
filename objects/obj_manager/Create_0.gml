/// @description Init Vars

#region Essentials
global.delta = delta_time/1000000;
scale=60;
#macro gridSize 32;
global.prt_System = part_system_create_layer("Particles", false);
part_system_automatic_update(global.prt_System, false);
prtUpdate = 0;
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
beforeActions = 0;
inputActions = 0;
afterActions = 0;
#endregion

#region Pallete
/*
PALLETE - 
	0 - Player and Checkpoints
	1 - Static Objects
	2 - Flip Spikes
	3 - Flip Walls
	4 - Moving Spikes/Walls
	5 - Switch Blocks
	6 - Locks and Keys
	7 - Diamonds
*/
colorSet = [
	make_color_rgb(0,0,200),
	make_color_rgb(128,128,128),
	make_color_rgb(200,0,0),
	make_color_rgb(0,200,0),
	make_color_rgb(200,128,0),
	make_color_rgb(128,0,200),
	make_color_rgb(200,200,0),
	make_color_rgb(255,255,255)
];
#endregion

#region Particles

#endregion

#region	Level
levelName = "Entryway"
diamonds = 0;
diamondsMax = 7;
#endregion

