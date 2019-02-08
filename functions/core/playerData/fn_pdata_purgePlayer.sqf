/*
	Author: Moldisocks
	Last Modified:  2019.02.08 19.00
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//if (isServer) exitWith {diag_log "File: fn_dbug_purgePlayer.sqf ||| Wasn't executed on player"};

params["_purgeItem",["_disableCheck",false]];
_exitwith_follow_through = false;
if (!_disableCheck) then {
	["<br /><br /><t align='center'>Are you sure you?</t>",true] call mld_core_fnc_misc_msgbox;
	waitUntil {misc_buttonPressed};
	if (!misc_msgboxresult) exitWith {["Purge cancelled",__FILE__,2] call mld_dbug_fnc_log_add; _exitwith_follow_through = true;};
};
if (_exitwith_follow_through) exitWith {};
switch (_purgeItem) do
{
	case "bindings":
	{
		["Purged keys_bindings",__FILE__,2] call mld_dbug_fnc_log_add;
		profileNamespace setVariable ["keys_bindings",nil];
	};

	case "newPlayer":
	{
		["Purged newPlayer",__FILE__,2] call mld_dbug_fnc_log_add;
		profileNamespace setVariable ["newPlayer",nil];
	};
	case "XP":
	{
		["Purged XP",__FILE__,2] call mld_dbug_fnc_log_add;
		profileNamespace setVariable ["prog_XP",nil];
	};
	case "balance":
	{
		["Purged balance",__FILE__,2] call mld_dbug_fnc_log_add;
		profileNamespace setVariable ["prog_Balance",nil];
	};
	case "HUDPos":
	{
		["Purged HUD position",__FILE__,2] call mld_dbug_fnc_log_add;
		profileNamespace setVariable ["hedit_displayPositions",nil];
	};
	case "viewDistance":
	{
		["Purged pmenu_vDistance",__FILE__,2] call mld_dbug_fnc_log_add;
		profileNamespace setVariable ["pmenu_vDistance",pmenu_vDistance];
	};
	default
	{
		//profileNamespace setVariable ["",nil];
		["Purged ALL private data",__FILE__,2] call mld_dbug_fnc_log_add;
		profileNamespace setVariable ["keys_bindings",nil];
		profileNamespace setVariable ["newPlayer",nil];
	  	//profileNamespace setVariable ["prog_XP",nil];
	  	//profileNamespace setVariable ["prog_Balance",nil];
	  	profileNamespace setVariable ["hedit_displayPositions",nil];
	  	profileNamespace setVariable ["pmenu_vDistance",nil];
	};
};

