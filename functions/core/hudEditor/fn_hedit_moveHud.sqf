/*
	Author: Moldisocks
	Last Modified: Fri Oct 05 18:29:10 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

if (hedit_disableEdit) exitWith{};
hedit_disableEdit = true;
disableSerialization;
hedit_posSelected = true;
hedit_menuOpen = true;
hedit_currentDisplay = nil;
_lbCurSelection = lbCurSel 1500;
_display = (hedit_displays select _lbCurSelection);
if (isNull (uiNamespace getVariable _display)) then {
	hedit_currentDisplay = _display;
	"currentDisplay" cutRsc [_display,"PLAIN"];
};

_hedit_ctrls = allControls (uiNamespace getVariable _display);
hedit_posSelected = false;

_lastCtrlPos = [];
_hedit_ctrlPositions = [];
_topLeftMostCtrl = controlNull;
{
	private _ctrlPos = ctrlPosition _x;
	_hedit_ctrlPositions pushBack _ctrlPos;
	if (count _lastCtrlPos == 0) then {
		_topLeftMostCtrl = _x;
	} else {
		if ((_ctrlPos select 0 < _lastCtrlPos select 0) and (_ctrlPos select 1 < _lastCtrlPos select 1)) then {
			_topLeftMostCtrl = _x;
		};
	};
	_lastCtrlPos = _ctrlPos;
} forEach _hedit_ctrls;

hedit_lastCtrlPositions = [_hedit_ctrlPositions,_display];

private _mainCtrlPos = ctrlPosition _topLeftMostCtrl;

while {!hedit_posSelected} do 
{
	_hedit_ctrlPositions = [];
	_mousePos = getMousePosition;
	{
		private _mainCtrlPos = ctrlPosition _topLeftMostCtrl;
		private _ctrlPos = ctrlPosition _x;
		private _ctrlXPos = (_mousePos select 0) + ((_ctrlPos select 0) - (_mainCtrlPos select 0));
		private _ctrlYPos = (_mousePos select 1) + ((_ctrlPos select 1) - (_mainCtrlPos select 1));
		_ctrlPos set[0,_ctrlXPos];
		_ctrlPos set[1,_ctrlYPos];

		_x ctrlSetPosition _ctrlPos;
		_x ctrlCommit 0.2;
		_hedit_ctrlPositions pushBack _ctrlPos;
	} forEach _hedit_ctrls;
	sleep 0.2;
};
hedit_displayPositions set[_lbCurSelection,_hedit_ctrlPositions];
profileNamespace setVariable["hedit_displayPositions",hedit_displayPositions];
if (!isNil "hedit_currentDisplay") then {
	"currentDisplay" cutText ["","PLAIN"];
	hedit_currentDisplay = nil;
};

sleep 1;
hedit_disableEdit = false;
hedit_menuOpen = false;