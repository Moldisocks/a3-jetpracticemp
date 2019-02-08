/*
	Author: Moldisocks
	Last Modified:  2019.02.08 18.54
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


createDialog "editKeysMenu";

waitUntil {!isNull (findDisplay 9885)};
keys_mainKeyHandlerOn = false; //Disables all key down functions whist in menu.
keys_menuLoaded = true;
{lbAdd [1500,_x]} forEach keys_functions;
lbSetCurSel [1500,0];
['Nothing',59] call mld_core_fnc_keys_displayBinding;
((findDisplay 9885) displayCtrl 1500) ctrlAddEventHandler ["LBSelChanged", {['Nothing',nil,false,false,false,false,false,(_this select 1)] call mld_core_fnc_keys_displayBinding}];

(findDisplay 9885) displayAddEventHandler ["Unload",{
	keys_mainKeyHandlerOn = true;
	keys_menuLoaded = false;
	profileNamespace setVariable ["keys_bindings",keys_bindings];
	["keybindings saved successfully",__FILE__,1] call mld_dbug_fnc_log_add;

	}];//Save key bindings when user leaves menu.