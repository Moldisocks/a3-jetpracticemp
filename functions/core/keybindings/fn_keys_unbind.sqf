/*
	Author: Moldisocks
	Last Modified:  Tue Jun 12 23:36:30 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

if (keys_currentKeyPressed == 42) then {
	keys_bindings set[(lbCurSel 1500),0];
	['Nothing',0] call mld_fnc_keys_displayBinding;
	keys_currentKeyPressed = 0;
};