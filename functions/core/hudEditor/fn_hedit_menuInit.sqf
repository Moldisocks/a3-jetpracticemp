/*
	Author: Moldisocks
	Last Modified:  Sun Oct 14 14:45:12 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
menus_changing = false;
createDialog "hudEditorMenu";

waitUntil {!isNull (findDisplay 44444)};



{
	lbAdd[1500,_x];
} forEach hedit_displayNames;

lbSetCurSel[1500,0];

(findDisplay 44444) displayAddEventHandler ["Unload",{
	if (!menus_changing and !hedit_posSelected) then {
		hedit_posSelected = true;
		hintSilent "HUD positioning cancelled.";
		[] spawn mld_fnc_hedit_undoLast;
	};
}];