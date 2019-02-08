/*
	Author: Moldisocks
	Last Modified:  2019.02.08 18.46
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//Config
hedit_displayNames = ["Progression HUD","Earplug symbol"];
hedit_displays = ["progStatsHud","earplugsSymbol"];
hedit_layers = ["progHud","epMute"];
hedit_displayPositions = profileNamespace getVariable "hedit_displayPositions";
hedit_hudInitFunctions = {
	//call mld_core_fnc_prog_hudInit;
	call ep_showSymbol;
};
//Declare vars
hedit_disableEdit = false;

if (isNil "hedit_displayPositions") then {
	[false] call mld_core_fnc_hedit_defaults;
};
