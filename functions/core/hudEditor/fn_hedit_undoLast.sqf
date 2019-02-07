/*
	Author: Moldisocks
	Last Modified:  Sun Oct 14 14:45:00 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

disableSerialization;
hedit_posSelected = true;
if (isNil "hedit_lastCtrlPositions") exitWith {};
sleep 0.1;
_layerNumber = -1;
if (isNull (uiNamespace getVariable (hedit_lastCtrlPositions select 1))) then {
	_layerNumber = "undoLayer" cutRsc [(hedit_lastCtrlPositions select 1),"PLAIN"];
};

_hedit_ctrls = allControls (uiNamespace getVariable (hedit_lastCtrlPositions select 1));
{
	private _ctrlXPos = ((hedit_lastCtrlPositions select 0) select _foreachIndex) select 0; 
	private _ctrlyPos = ((hedit_lastCtrlPositions select 0) select _foreachIndex) select 1; 
	_x ctrlSetPosition [_ctrlXPos,_ctrlyPos];
	_x ctrlCommit 0.1;
} forEach _hedit_ctrls;

hedit_displayPositions set[(hedit_displays find (hedit_lastCtrlPositions select 1)),(hedit_lastCtrlPositions select 0)];
profileNamespace setVariable["hedit_displayPositions",hedit_displayPositions];

if (_layerNumber != -1) then {
	"undoLayer" cutText ["","PLAIN",1];
};
hedit_lastCtrlPositions = nil;
