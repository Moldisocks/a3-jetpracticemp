/*
	Author: Moldisocks
	Last Modified:  Sat Jun 09 20:19:15 2018
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
['Nothing',59] call mld_fnc_keys_displayBinding;
((findDisplay 9885) displayCtrl 1500) ctrlAddEventHandler ["LBSelChanged", {['Nothing',nil,false,false,false,false,false,(_this select 1)] call mld_fnc_keys_displayBinding}];

(findDisplay 9885) displayAddEventHandler ["Unload",{
	keys_mainKeyHandlerOn = true;
	keys_menuLoaded = false;
	profileNamespace setVariable ["keybindings",keys_bindings];
	}];//Save key bindings when user leaves menu.