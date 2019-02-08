/*
	Author: Moldisocks
	Last Modified:  2019.02.09 02.52
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//Config
hedit_displayNames = ["Earplug symbol"];
hedit_displays = ["earplugsSymbol"];
hedit_layers = ["epMute"];
hedit_displayPositions = profileNamespace getVariable "hedit_displayPositions";
hedit_hudInitFunctions = {
	[true,"epMute","earplugsSymbol"] call mld_core_fnc_hedit_createDisplay; //Earplugs
};
//Declare vars
hedit_posSelected = true;
hedit_disableEdit = false;

if (isNil "hedit_displayPositions") then {
	[false] call mld_core_fnc_hedit_defaults;
};
