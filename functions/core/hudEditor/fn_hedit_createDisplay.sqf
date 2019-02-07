/*
	Author: Moldisocks
	Last Modified:  Thu Oct 04 19:53:45 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params["_create","_layerName","_titleName"];
_layerNmber = -1;
if (_create) then {
	if (isNil "_titleName") exitWith{systemChat "File: fn_hedit_createDisplay.sqf ||| Nil var _titleName"};
	_titleIndex = hedit_displays find _titleName;
	if (_titleIndex == -1) exitWith {systemChat "File: fn_hedit_createDisplay.sqf ||| Unknown display name"};
	if (isNil "_layerName") exitWith{systemChat "File: fn_hedit_createDisplay.sqf ||| Nil var _layerName"};
	
	_layerNmber = _layerName cutRsc [_titleName,"PLAIN"];
	waitUntil {!isNull (uiNamespace getVariable _titleName)};

	_ctrlPosArray = hedit_displayPositions select _titleIndex;
	private _ctrlList = allControls (uiNamespace getVariable _titleName);
	//systemChat format ["Creating display: %1",_ctrlPosArray];
	{
		_x ctrlSetPosition (_ctrlPosArray select _foreachIndex);
		_x ctrlCommit 0;
	} forEach _ctrlList;
} else {
	if (isNil "_layerName") exitWith{systemChat "File: fn_hedit_createDisplay.sqf ||| Nil var _layerName"};

	_layerName cutText ["","PLAIN"];
};

_layerNmber;