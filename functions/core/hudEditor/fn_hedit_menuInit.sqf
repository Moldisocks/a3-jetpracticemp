/*
	Author: Moldisocks
	Last Modified:  2019.02.08 18.44
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
		["HUD positioning cancelled.",__FILE__,2,true] call mld_dbug_fnc_log_add;
		[] spawn mld_core_fnc_hedit_undoLast;
	};
}];