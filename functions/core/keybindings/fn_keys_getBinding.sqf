/*
	Author: Moldisocks
	Last Modified:  Thu Jun 14 20:51:48 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


((findDisplay 9885) displayCtrl 1101) ctrlSetStructuredText parseText '<t> Enter new keybinding</t>';
	keys_currentKeyPressed = -1;


waitUntil {// Get next key press
	if (keys_currentKeyPressed != -1 or !keys_menuLoaded) then {
		true;
	};
};

if (!keys_menuLoaded) exitWith {hint "Key binding cancelled"; diag_log "EXITWITH: File: fn_keys_getBinding.sqf  |  User cancelled keybinding";};

if ((keys_bindings find keys_currentKeyPressed) != -1) exitWith {//cancel if key is already bound
	hint 'That key has already been mapped to another action';
	((findDisplay 9885) displayCtrl 1101) ctrlSetStructuredText parseText '<t>Already Bound!</t>';
	sleep 3;
	['Nothing',(keys_bindings select (lbCurSel 1500))] call mld_fnc_keys_displayBinding;
	hintSilent '';
};

['Nothing',keys_currentKeyPressed,false,false,false,true] call mld_fnc_keys_displayBinding;
_newKey = keys_currentKeyPressed;
keys_currentKeyPressed = -1;
waitUntil {//wait for confirmation
	if ((keys_currentKeyPressed == 156) or (keys_currentKeyPressed == 28) or !keys_menuLoaded) then {
		true;
	};
};

if (!keys_menuLoaded) exitWith {hint "Key binding cancelled"; diag_log "EXITWITH: File: fn_keys_getBinding.sqf  |  User cancelled keybinding";};



['Nothing',_newKey,false,false,false,false,true] call mld_fnc_keys_displayBinding;
