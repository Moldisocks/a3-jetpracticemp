
_veh = vehicle player;
_cancelled = false;
disableSerialization;
_spd = speed _veh;
 _veh engineOn false;
 Servicing = false;
 waitUntil {!isEngineOn _veh};

 _i = 0;
 while {_i < 35 } do {

 	_i = _i +1;
[_i] call mld_fnc_repProgGui;
 	Servicing = true;
 	_engOn = isEngineOn _veh;
 	sleep 1;
 	if (vehicle player == player) exitWith {_cancelled = true;};
 	if (_engOn) exitWith {_cancelled = true;};

 };
Servicing = false;
"repairGui" cutText ["","PLAIN"];
 if (_cancelled) then {
 	hintSilent "Servicing was cancelled";
 } else {
 hint "GO GO GO!!";

_veh setFuel 1;

_veh setDamage 0;

_veh setVehicleAmmo 1;
};

