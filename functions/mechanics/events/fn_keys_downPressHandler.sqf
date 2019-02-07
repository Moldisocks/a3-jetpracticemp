/*
	Author: Moldisocks
	Last Modified:  2018.12.04 00.46
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params["_ctrl","_button"];

	keys_currentKeyPressed = _button;
if (keys_mainKeyHandlerOn) then {//Provides ability to temporarily disable this key handler

	_disableButton = false;

   	if (_button == (keys_bindings select 0)) then{[] spawn mld_fnc_ep_main; _disableButton = true;};// Earplugs. DEFAULT: F1

    if (!menus_open) then { // Mini map zooming Default = F2
    	if (_button == (keys_bindings select 1)) then{[] spawn mld_fnc_mm_zoom; _disableButton = true;};
    };
    if (gdgt_gadgetEH) then { // Begin placing gadget Default = 3
        if (_button == (keys_bindings select 2)) then {[] spawn mld_fnc_gdgt_place;};
    };
    if (gadgetPlacement) then { // Accept gadget placement Default = y
    	if (_button == (keys_bindings select 3)) then {objPending = false; call _BD};
    };
    if (gadgetPlacement) then { // Cancel gadget placement Default = DEL
    	if (_button == (keys_bindings select 4)) then {objCanceled = true; call _BD};
    };
    if (touchoff) then { // Touch off explosive Default = Left Windows
        if (_button == (keys_bindings select 5)) then {{_x setDamage 1;} forEach gdgt_c4; _disableButton = true; touchOff = false;};
    };
    if (!menus_open) then {
    	if (_button == (keys_bindings select 6)) then {[] spawn mld_fnc_mec_jump;};//Jump. DEFAULT: Space
    };

    if (!menus_open) then {
	   	if (_button == (keys_bindings select 7)) then {[] spawn mld_fnc_pmenu_menuInit; _disableButton = true;}; //Open player menu. DEFAULT: ` Tilde
	};

    if (hedit_menuOpen) then {
    	if (_button == (keys_bindings select 8)) then {hedit_posSelected = true; _disableButton = true;};//Accept HUD movement. DEFAULT: F3
    };

	_disableButton;
};