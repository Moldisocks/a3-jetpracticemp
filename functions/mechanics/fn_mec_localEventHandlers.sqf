/*
	Author: Moldisocks
	Last Modified: 2019.01.26 12.42
	Email: moldisocks78@gmail.com

	Notes:

	Description: Initalises all event handlers, except UI specific event handlers

	To Do:

*/

player addEventHandler ["Respawn",{[] spawn mld_fnc_sp_respawn}];
player addEventHandler ["Killed",{call mld_fnc_mec_killed}];
(findDisplay 46) displayAddEventHandler ["KeyDown", {call mld_fnc_keys_downPressHandler}];
//player addEventHandler ["HandleDamage",{call mld_fnc_mec_damageHandler}];