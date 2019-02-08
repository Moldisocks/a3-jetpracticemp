/*
	Author: Moldisocks
	Last Modified:  2019.02.08 18.53
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
params["_spawnedFromMenu"];

if (_spawnedFromMenu) then {
	["<br /><br />This will reset all keybindings and exit the menu. Are you sure you want to proceed?",true] call mld_core_fnc_misc_msgbox;
	waitUntil {misc_buttonPressed};
	if (misc_msgboxresult) then {
		closeDialog 9885;
		keys_bindings = [59,57,41,60,61];
		profileNamespace setVariable ["keys_bindings",keys_bindings];
		["keybindings set to default",__FILE__,2] call mld_dbug_fnc_log_add;
	};
} else {
	keys_bindings = [59,57,41,60,61];
	profileNamespace setVariable ["keys_bindings",keys_bindings];
		["keybindings set to default",__FILE__,2] call mld_dbug_fnc_log_add;

};
