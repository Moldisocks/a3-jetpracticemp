/*
	Author: Moldisocks
	Last Modified: 2019.02.08 17.23
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params ["_jet"];

if (_jet == objNull) exitWith {["Jet object is null",__FILE__,1] call mld_dbug_fnc_log_add;};

_jet_found = false;
_weapon_arr = [];

{
	if ((_x select 0) == typeOf(_jet)) exitWith {
		_jet_found = true;
		if (count _x > 1) then {
			_weapon_arr = _x select 1;
		};
	};
} forEach jets_defaultLoadouts;

if (_jet_found) then {
	if (!(typeName _weapon_arr == "ARRAY") or (count _weapon_arr <= 0)) exitWith {["Weapon array is empty",__FILE__,1] call mld_dbug_fnc_log_add;};
	{_jet removeWeapon _x} forEach weapons _jet;
	if (typeName (_weapon_arr select 0) == "STRING") then {
			if (count _weapon_arr < 2) then {
				[_jet,_weapon_arr select 0,1] call BIS_fnc_addWeapon;
				["Magazine count not given in jet loadouts.",__FILE__,1] call mld_dbug_fnc_log_add;
			} else {
				[_jet,_weapon_arr select 0,_weapon_arr select 1] call BIS_fnc_addWeapon;
			};
	} else {
		{
			if (count _x < 2) then {
				[_jet,_x select 0,1] call BIS_fnc_addWeapon;
				["Magazine count not given in jet loadouts.",__FILE__,1] call mld_dbug_fnc_log_add;
			} else {
				[_jet,_x select 0,_x select 1] call BIS_fnc_addWeapon;
			};
		} forEach _weapon_arr;
	};

};