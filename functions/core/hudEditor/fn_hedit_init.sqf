/*
	Author: Moldisocks
	Last Modified:  Sun Oct 14 15:40:53 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//Config
hedit_displayNames = ["Progression HUD","Minimap HUD","Stats HUD","Earplug symbol"];
hedit_displays = ["progStatsHud","miniMapHud","statsHud","earplugsSymbol"];
hedit_layers = ["progHud","scoreHud","statsHudLayer","epMute"];
hedit_displayPositions = profileNamespace getVariable "hedit_displayPositions";
hedit_hudInitFunctions = {
	call mld_fnc_prog_hudInit;
	call mld_fnc_mm_init;
	call mld_fnc_hud_statsHud;
	call ep_showSymbol; 
};
//Declare vars
hedit_disableEdit = false;

if (isNil "hedit_displayPositions") then {
	[false] call mld_fnc_hedit_defaults;
};
