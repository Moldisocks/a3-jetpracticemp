/*
	Author: Moldisocks
	Last Modified:  2019.02.08 18.41
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params["_create","_layerName","_titleName"];
_layerNmber = -1;
if (_create) then {

	_titleIndex = hedit_displays find _titleName;
	if (_titleIndex == -1) exitWith {["Unknown display name",__FILE__,1] call mld_dbug_fnc_log_add;};
	if (isNil "_layerName") exitWith{["Nil var _layerName",__FILE__,1] call mld_dbug_fnc_log_add;};
	if (isNil "_titleName") exitWith{["Nil var _titleName",__FILE__,1] call mld_dbug_fnc_log_add;};

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
	if (isNil "_titleName") exitWith{["Nil var _layerName",__FILE__,1] call mld_dbug_fnc_log_add;};

	_layerName cutText ["","PLAIN"];
};

_layerNmber;