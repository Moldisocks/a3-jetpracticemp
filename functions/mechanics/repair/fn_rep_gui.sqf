/*
	Author: Moldisocks
	Last Modified: 2019.02.09 13.41
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
#include "..\..\..\resources\colours.hpp"

params ["_counter"];
if (isNull (uiNamespace getVariable "repProgress")) then {
	[true,"repairLayer","repProgress"] call mld_core_fnc_hedit_createDisplay;
};

_ct = _counter/35;
((uiNamespace getVariable "repProgress") displayCtrl 4582) ctrlSetTextColor COLOR_JETGREEN_ARR;
((uiNamespace getVariable "repProgress") displayCtrl 4582) progressSetPosition _ct;

