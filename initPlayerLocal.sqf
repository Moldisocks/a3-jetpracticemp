/*
	Author: Moldisocks
	Last Modified: 2019.02.08 19.27
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


//Varible Declaration
misc_loading = true;
menus_open = false;
pmenu_vDistanceButton = false;
mec_jumping = false;
ep_switch = false;
jump_zVel = 4;

///COMMENT OUT NEXT LINE IF YOU WANT PLAYER DATA TO PERSIST.
["purge",true] spawn mld_dbug_fnc_pdata_purgePlayer;

onPreloadFinished {
	if (misc_loading) then {
		_newPlayer = profileNamespace getVariable "newPlayer";
		if (isNil "_newPlayer") then {
	 		profileNamespace setVariable ["newPlayer",false];
			[] call mld_core_fnc_misc_welcomeMenu;
		};
		misc_loading = false;
	};
};
waitUntil {!isNull (findDisplay 46)};
waitUntil {vehicle player == player};

[] call mld_core_fnc_keys_init;
[] call mld_dbug_fnc_log_init;
[] call mld_core_fnc_jets_init;
[] call mld_core_fnc_hedit_init;
[] call mld_core_fnc_mec_localEventHandlers;

