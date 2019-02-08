/*
	Author: Moldisocks
	Last Modified:  2019.02.08 19.27
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params["_ctrl","_button"];

	keys_currentKeyPressed = _button;
if (keys_mainKeyHandlerOn) then {//Provides ability to temporarily disable this key handler

	_disableButton = false;

   	if (_button == (keys_bindings select 0)) then{[] spawn mld_core_fnc_ep_main; _disableButton = true;};// Earplugs. DEFAULT: F1

    if (!menus_open) then {
    	if (_button == (keys_bindings select 1)) then {[] spawn mld_core_fnc_mec_jump;}; //Jump. DEFAULT: Space
	   	if (_button == (keys_bindings select 2)) then {[] spawn mld_core_fnc_pmenu_menuInit; _disableButton = true;}; //Open player menu. DEFAULT: ` Tilde
        if (_button == (keys_bindings select 3)) then {[] spawn mld_core_fnc_eai_menu; _disableButton = true;}; //Open Enemy AI Spawn menu. DEFAULT: F2
    };
    if (_button == (keys_bindings select 4)) then {hedit_posSelected = true; _disableButton = true;}; //Confirm HUD placement. DEFAULT: F3


	_disableButton;
};