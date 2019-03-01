/*
	Author: Moldisocks
	Last Modified:  2019.03.01 20.40
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
params["_spawnedFromMenu"];

_setDefaults = {
	hedit_displayPositions = [];
	_closedCtrls = [];
	_closeAllHuds = {
		//--------------------------------CLOSE all HUD---------------------------------------------------//
		{
			if (!isNull (uiNamespace getVariable (hedit_displays select _foreachIndex))) then {
				_x cutText ["","PLAIN"];
			} else {
				_closedCtrls pushBack _x;
			};
		} forEach hedit_layers;
	};

	[] call _closeAllHuds;

	//--------------------------------REOPEN HUDs at default POSITIONS----------------------------------//
	{
		(hedit_layers select _foreachIndex) cutRsc [_x,"PLAIN"];
	} forEach hedit_displays;


	//--------------------------------Gather Default positions-----------------------------------//

	{
		_ctrlsList = allControls (uiNamespace getVariable _x);
		_defaultCtrlPostiions = [];
		{
			_defaultCtrlPostiions pushBack (ctrlPosition _x);
		} forEach _ctrlsList;
		hedit_displayPositions pushback _defaultCtrlPostiions;
	} forEach hedit_displays;

	profileNamespace setVariable["jp_hedit_displayPositions",hedit_displayPositions];

	[] call _closeAllHuds;

	if (_this select 0) then {
		[] call hedit_hudInitFunctions;
		if (count _closedCtrls > 0)  then {
			{
				_x cutText ["","PLAIN"];
			} forEach _closedCtrls;
		};
	};


};

if (_spawnedFromMenu) then {
	["<br /><br />This will reset the positions of all HUD elements. Are you sure you want to proceed?",true] call mld_core_fnc_misc_msgbox;
	waitUntil {misc_buttonPressed};
	if (misc_msgboxresult) then {
		[_spawnedFromMenu] spawn _setDefaults;
	};
} else {
	[] spawn _setDefaults;
};
