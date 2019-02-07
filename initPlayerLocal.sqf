/*
	Author: Moldisocks
	Last Modified: 2019.01.26 12.43
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


//Varible Declaration
misc_loading = true;
sp_switch = false;
keys_mainKeyHandlerOn = true;
mec_jumping = false;
menus_changing = false;
menus_open = false;
mm_zooming = false;
menus_shopCatergory = 0;
gdgt_beaconPlaced = false;
cap_cappingpoint = false;
kits_weaponSelectArray = [0,0,0,0];
kits_attachmentSelectArray = [0,0,0,0];
hud_scoreItems = [];
hud_scoreItemBackgroundColors = [];
gdgt_c4 = [];




///COMMENT OUT NEXT LINE IF YOU WANT PLAYER DATA TO PERSIST.
["randomWord",true] spawn mld_fnc_dbug_purgePlayer;

onPreloadFinished { // Begins all initalisation functions for menu, kit and earplugs once preload has finished loading.
	if (misc_loading) then {
		_newPlayer = profileNamespace getVariable "newPlayer";
		if (isNil "_newPlayer") then {
	 		profileNamespace setVariable ["newPlayer",false];
			[] call mld_fnc_misc_welcomeMenu;
		} else {
			[] spawn mld_fnc_sp_respawn;
		};
		misc_loading = false;
	};
};
waitUntil {!isNull (findDisplay 46)};
waitUntil {vehicle player == player};

[] call mld_fnc_pdata_settingsInit;
[] call mld_fnc_ep_Init;
[] call mld_fnc_shop_purchasesInit;
[] call mld_fnc_prog_init;
[] call mld_fnc_kit_loadoutInit;
[] call mld_fnc_keys_init;
[] call mld_fnc_hedit_init;
[] call mld_fnc_shop_setupDB;
[] call mld_fnc_mec_localEventHandlers;


//3D marker setup
MISSION_ROOT = call {
	private "_arr";
    _arr = toArray __FILE__;
    _arr resize (count _arr - 19);
    toString _arr
};


//=--------------------------------------GUI EH for drawing 3D flag markers--------------------------------//
icon_aflag_color = [0.525,0.545,0.576,1];
icon_bflag_color = [0.525,0.545,0.576,1];
icon_cflag_color = [0.525,0.545,0.576,1];
icon_dflag_color = [0.525,0.545,0.576,1];
icon_eflag_color = [0.525,0.545,0.576,1];
icon_fflag_color = [0.525,0.545,0.576,1];
icon_gflag_color = [0.525,0.545,0.576,1];

addMissionEventHandler ["Draw3D", {//Icon color states are dictated by capUpadateState
	drawIcon3D [(MISSION_ROOT + "resources\pictures\AFlag.paa"),icon_aflag_color,[14216,18291.8,15.064],1.21,1.21,0,"A-Petrol Station",0,0.04,"PuristaMedium","center",true];//A flag
	drawIcon3D [(MISSION_ROOT + "resources\pictures\BFlag.paa"),icon_bflag_color,[13967.5,18471.2,15.95],1.21,1.21,0,"B-School",0,0.04,"PuristaMedium","center",true];//B flag
	drawIcon3D [(MISSION_ROOT + "resources\pictures\CFlag.paa"),icon_cflag_color,[13992,18649.9,14.5936],1.21,1.21,0,"C-Market",0,0.04,"PuristaMedium","center",true];//c flag
	drawIcon3D [(MISSION_ROOT + "resources\pictures\DFlag.paa"),icon_dflag_color,[14007,18901.5,15.872],1.21,1.21,0,"D-Construction Site",0,0.04,"PuristaMedium","center",true];//d flag
	drawIcon3D [(MISSION_ROOT + "resources\pictures\EFlag.paa"),icon_eflag_color,[14349.8,18913.2,15.471],1.21,1.21,0,"E-Industrial Complex",0,0.04,"PuristaMedium","center",true];//e flag
	drawIcon3D [(MISSION_ROOT + "resources\pictures\FFlag.paa"),icon_fflag_color,[14163.4,18671.2,15.66],1.21,1.21,0,"F-Slums",0,0.04,"PuristaMedium","center",true];//f flag
	drawIcon3D [(MISSION_ROOT + "resources\pictures\GFlag.paa"),icon_gflag_color,[14427.7,18670.3,15.762],1.21,1.21,0,"G-Cemetery",0,0.04,"PuristaMedium","center",true];//g flag
}];
