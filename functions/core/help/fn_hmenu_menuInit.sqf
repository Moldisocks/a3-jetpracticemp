/*
	Author: Moldisocks
	Last Modified:  Sun Sep 30 22:18:03 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params ["_menu"];

hMenu_helpElements = ["Quickstart Guide"];


//------------------Main function
if (isNull (findDisplay 7546)) then {
	createDialog "helpMenu";

	waitUntil {!isNull (findDisplay 7546)};

	{
		((findDisplay 7546) displayCtrl 1500) lbAdd _x;
	} forEach hMenu_helpElements;
};

if (!isNil '_menu') then {
	_index = hMenu_helpElements find _menu;
	if (_index == -1) then {
		((findDisplay 7546) displayCtrl 1102) ctrlSetStructuredText parseText "<br/><t size='0.8'>Nothing has been writen for this help item yet. Coming soon...</t>";
	} else {
		lbSetCurSel [1500,_index];
		[_index] call mld_fnc_hmenu_displayHelp;
	};
};

((findDisplay 7546) displayCtrl 1500) ctrlAddEventHandler ["LBselChanged", {
	[_this select 1] call mld_fnc_hmenu_displayHelp;
}];