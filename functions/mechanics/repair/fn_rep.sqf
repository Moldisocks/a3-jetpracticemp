/*
	Author: Moldisocks
	Last Modified: 2019.02.09 13.41
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

if (vehicle player == player) exitWith {["Player is not in vehicle, cannot repair",__FILE__,4] call mld_dbug_fnc_log_add;};
if (speed (vehicle player) > 1) exitWith {["Vehicle must not be moving when servicing",__FILE__,4,true] call mld_dbug_fnc_log_add;};
if ((getPos (vehicle player) select 2) > 5) exitWith {["Vehicle must on the ground when servicing",__FILE__,4,true] call mld_dbug_fnc_log_add;};


_veh = vehicle player;
_exitwith_follow_through = false;
_veh engineOn false;
rep_servicing_sw = false;

waitUntil {!isEngineOn (vehicle player)};

_i = 0;
while {_i < 35 } do {
	rep_servicing_sw = true;
 	_i = _i +1;
	[_i] call mld_core_fnc_rep_gui;
 	sleep 1;
 	if (vehicle player == player) exitWith {["You've exited the vehicle",__FILE__,2] call mld_dbug_fnc_log_add; _exitwith_follow_through = true;};
 	if (isEngineOn _veh) exitWith {["You've turned the engine off",__FILE__,2] call mld_dbug_fnc_log_add; _exitwith_follow_through = true;};
 };

[false,"repairLayer","repProgress"] call mld_core_fnc_hedit_createDisplay;

 if (_exitwith_follow_through) then {
 	["Vehicle servicing cancelled",__FILE__,2,true] call mld_dbug_fnc_log_add;
 } else {
	_veh setFuel 1;
	_veh setDamage 0;
	_veh setVehicleAmmo 1;
 	["Finished servicing vehicle",__FILE__,2,true] call mld_dbug_fnc_log_add;
};
rep_servicing_sw = false;