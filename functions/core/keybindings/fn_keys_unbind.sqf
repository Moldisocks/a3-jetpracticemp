/*
	Author: Moldisocks
	Last Modified:  2019.02.08 19.01
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

if (keys_currentKeyPressed == 42) then {
	keys_bindings set[(lbCurSel 1500),0];
	['Nothing',0] call mld_core_fnc_keys_displayBinding;
	keys_currentKeyPressed = 0;
};