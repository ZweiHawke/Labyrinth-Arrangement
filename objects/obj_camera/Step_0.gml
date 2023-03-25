/// @description Set Camera

#region Player Target
if (instance_exists(obj_player)) {
	targetPointX = obj_player.x+16;
	targetPointY = obj_player.y+16;
}

x = lerp(x,targetPointX,0.5*global.delta);
y = lerp(y,targetPointY,0.5*global.delta);
#endregion