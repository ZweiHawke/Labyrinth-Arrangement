/// @description Init Vars

#region Variables
color = obj_manager.colorSet[0];
turnPass = false;
xPos = 0;
yPos = 0;
walls = [obj_wall,obj_flipWall,obj_lock];
wallCol = false;
spikes = [obj_spike,obj_flipSpike];
spikeCol = false;
obj_manager.resetPoint = [x,y];
#endregion

scr_p_init();