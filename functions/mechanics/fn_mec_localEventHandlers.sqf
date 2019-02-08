/*
	Author: Moldisocks
	Last Modified: 2019.02.08 18.13
	Email: moldisocks78@gmail.com

	Notes:

	Description: Initalises all event handlers, except UI specific event handlers

	To Do:

*/

player addEventHandler ["Respawn",{[] spawn mld_core_fnc_sp_respawn}];
player addEventHandler ["Killed",{call mld_core_fnc_mec_killed}];
(findDisplay 46) displayAddEventHandler ["KeyDown", {call mld_core_fnc_keys_downPressHandler}];
//player addEventHandler ["HandleDamage",{call mld_core_fnc_mec_damageHandler}];