/*
	Author: Moldisocks
	Last Modified:  Sun Oct 14 17:42:02 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
params["_spawnedFromMenu"];

if (_spawnedFromMenu) then {
	["<br /><br />This will reset all keybindings and exit the menu. Are you sure you want to proceed?",true] call mld_fnc_misc_msgbox;
	waitUntil {misc_buttonPressed};
	if (misc_msgboxresult) then {
		closeDialog 9885;
		keys_bindings = [59,60,4,21,211,219,57,41,61];
		profileNamespace setVariable ["keybindings",keys_bindings];
	};
} else {
	keys_bindings = [59,60,4,21,211,219,57,41,61];
	profileNamespace setVariable ["keybindings",keys_bindings];
};
