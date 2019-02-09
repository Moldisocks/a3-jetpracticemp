/*
	Author: Moldisocks
	Last Modified:  2019.02.09 13.40
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//Config
hedit_displayNames = ["Earplug symbol","Vehicle service progress bar"];
hedit_displays = ["earplugsSymbol","repProgress"];
hedit_layers = ["epMute","repairLayer"];
hedit_displayPositions = profileNamespace getVariable "hedit_displayPositions";
hedit_hudInitFunctions = {
	[true,"epMute","earplugsSymbol"] call mld_core_fnc_hedit_createDisplay; //Earplugs
	[true,"repairLayer","repProgress"] call mld_core_fnc_hedit_createDisplay;
};
//Declare vars
hedit_posSelected = true;
hedit_disableEdit = false;

if (isNil "hedit_displayPositions") then {
	[false] call mld_core_fnc_hedit_defaults;
};
