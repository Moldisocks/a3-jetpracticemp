/*
	Author: Moldisocks
	Last Modified:  2018.12.11 01.26
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//if (isServer) exitWith {diag_log "File: fn_dbug_purgePlayer.sqf ||| Wasn't executed on player"};

params["_purgeItem",["_disableCheck",false]];

if (!_disableCheck) then {
	["<br /><br /><t align='center'>Are you sure you?</t>",true] call mld_fnc_misc_msgbox;
	waitUntil {misc_buttonPressed};
	if (!misc_msgboxresult) exitWith {systemChat "purge cancelled"};
};
switch (_purgeItem) do
{
	case "bindings":
	{
		systemChat "Purged bindings";
		profileNamespace setVariable ["keybindings",nil];
	};

	case "loadout":
	{
		systemChat "Purged loadout";
		profileNamespace setVariable ["kit_loadoutArray",nil];
	};

	case "newPlayer":
	{
		systemChat "Purged newPlayer";
		profileNamespace setVariable ["newPlayer",nil];
	};

	case "primaryPurchases":
	{
		systemChat "Purged primaryPurchases";
		profileNamespace setVariable ["kit_primaryPurchases",nil];
	};
	case "secondaryPurchases":
	{
		systemChat "Purged secondaryPurchases";
		profileNamespace setVariable ["kit_secondaryPurchases",nil];
	};
	case "GadgetPurchases":
	{
		systemChat "Purged GadgetPurchases";
		profileNamespace setVariable ["kit_gadgetPurchases",nil];
	};
	case "PerkPerchases":
	{
		systemChat "Purged PerkPerchases";
		profileNamespace setVariable ["kit_perkPurchases",nil];
	};
	case "XP":
	{
		systemChat "Purged XP";
		profileNamespace setVariable ["prog_XP",nil];
	};
	case "balance":
	{
		systemChat "Purged balance";
		profileNamespace setVariable ["prog_Balance",nil];
	};
	case "HUDPos":
	{
		systemChat "Purged HUD positions";
		profileNamespace setVariable ["hedit_displayPositions",nil];
	};
	case "AttachmentPurchases":
	{
		systemChat "Purged attachment purchases";
		profileNamespace setVariable ["kit_attachmentPurchases",nil];
	};
	case "Settings":{

		systemChat "Purged player settings";
		profileNamespace setVariable ["pdata_settings",nil];
	};
	default
	{
		//profileNamespace setVariable ["",nil];
		systemChat "All Local player data has been purged";
		profileNamespace setVariable ["keybindings",nil];
		profileNamespace setVariable ["kit_loadoutArray",nil];
		profileNamespace setVariable ["newPlayer",nil];
		profileNamespace setVariable ["kit_secondaryPurchases",nil];
	  	profileNamespace setVariable ["kit_primaryPurchases",nil];
	  	profileNamespace setVariable ["kit_gadgetPurchases",nil];
	  	profileNamespace setVariable ["kit_perkPurchases",nil];
	  	profileNamespace setVariable ["prog_XP",nil];
	  	profileNamespace setVariable ["prog_Balance",nil];
	  	profileNamespace setVariable ["hedit_displayPositions",nil];
	  	profileNamespace setVariable ["kit_attachmentPurchases",nil];
		profileNamespace setVariable ["pdata_settings",nil];
	};
};

