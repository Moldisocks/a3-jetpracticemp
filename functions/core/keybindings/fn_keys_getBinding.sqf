/*
	Author: Moldisocks
	Last Modified:  2019.02.08 18.53
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

if (!keys_menuLoaded) exitWith {["keybinding cancelled",__FILE__,2,true] call mld_dbug_fnc_log_add;};

if ((keys_bindings find keys_currentKeyPressed) != -1) exitWith {//cancel if key is already bound
	["That key is already bound to another function",__FILE__,2,true] call mld_dbug_fnc_log_add;
	((findDisplay 9885) displayCtrl 1101) ctrlSetStructuredText parseText '<t>Already Bound!</t>';
	sleep 3;
	['Nothing',(keys_bindings select (lbCurSel 1500))] call mld_core_fnc_keys_displayBinding;
	hintSilent '';
};

['Nothing',keys_currentKeyPressed,false,false,false,true] call mld_core_fnc_keys_displayBinding;
_newKey = keys_currentKeyPressed;
keys_currentKeyPressed = -1;
waitUntil {//wait for confirmation
	if ((keys_currentKeyPressed == 156) or (keys_currentKeyPressed == 28) or !keys_menuLoaded) then {
		true;
	};
};

if (!keys_menuLoaded) exitWith {["keybinding cancelled",__FILE__,2,true] call mld_dbug_fnc_log_add;};



['Nothing',_newKey,false,false,false,false,true] call mld_core_fnc_keys_displayBinding;
