/*
	Author: Moldisocks
	Last Modified:  Fri Oct 05 18:40:24 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params ["_localPlayer", "_killer", "_instigator", "_useEffects"];

sp_spawned = false;
"miniMap_ScoreHud" cutText ["","PLAIN"];
"statsHudLayer" cutText ["","PLAIN"];
mm_hudOpen = false;
menus_open = true;
"progHud" cutText ["","PLAIN"];

if (!isNil "gdgt_c4") then {
	{deleteVehicle _x} forEach gdgt_c4;
	gdgt_c4 = [];  //**IMPORTANT** Doing this disables player's ability to blow up c4 when after being killed
};

if (isNull _instigator) then {
	systemChat "You killed yourself";
	/*sp_followCam = true;
	[_localPlayer] spawn mld_fnc_sp_followingCam;
	sleep 10;
	sp_followCam = false;*/
} else {
	systemChat format ["You were killed by: %1", name _instigator];
	[str _killer] remoteExec ["systemChat",_instigator];
	//sp_followCam = true;
	[[200,100],format ["<t size='1.1'>You've Killed <t color='#c40101' size='1.2'>%1</t></t>", name _localPlayer]] remoteExec ["mld_fnc_prog_add",_instigator];
/*	[_instigator] spawn mld_fnc_sp_followingCam;
	sleep 10;
	sp_followCam = false;*/
};