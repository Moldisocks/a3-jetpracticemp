/*
	Author: Moldisocks
	Last Modified: 2019.02.07 22.39
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params ["_jetClassname"];

_airmin = "";
_airmax = "";
_groundPoint = "";
_jet = objNull;
_groundSp = cbChecked ((findDisplay 895) displayCtrl 2801);
_jetAlt = 0; // changing this line will not affect the altitude of the spawned in jet, read down further to find the same variable for each team.
_Rotation = 0;
_detectRadius = 15; // value that sets the detection radius for the ground spawning feature.
if (side player == east) then {
// for csat players------------------------------------------------------------------------------------------------------------------
	if (_groundSp) then {
		// for spawning on ground
		_groundPoint = "csatgroundspawn"; // Marker that marks position for the jet to spawn on, rotation of marker is also taken into account.
	} else {
		// for spawning in the air
		_airmin = "csatairspawn_1";
		_airmax = "csatairspawn_2";
		_Rotation = 220; // sets the median direction that the jet spawns in facing ( a random direction that is either 20 degrees left or right is selected base on this variable).
		_jetAlt = 2000; // sets the exact altitude for the jet to spawn in at
	};
} else {
	if (side player == west) then {
// for nato players------------------------------------------------------------------------------------------------------------------
	if (_groundSp) then {
		// for spawning on ground
		_groundPoint = "natogroundspawn"; // Marker that marks position for the jet to spawn on, rotation of marker is also taken into account.
	} else {
		// for spawning in the air
		_airmin = "natoairspawn_1";
		_airmax = "natoairspawn_2";
		_Rotation = 320; // sets the main direction that the jet spawns in facing ( a random direction that is either 20 degrees left or right is selected base on this variable).
		_jetAlt = 2000; // sets the exact altitude for the jet to spawn in at
	};
	} else {
		if (side player == resistance) then {
// for independent players-----------------------------------------------------------------------------------------------------------
			if (_groundSp) then {
			// for spawning on ground
				_groundPoint = "guergroundspawn"; // Marker that marks position for the jet to spawn on, rotation of marker is also taken into account.
			} else {
		// for spawning in the air
			_airmin = "guerairspawn_1";
			_airmax = "guerairspawn_2";
			_Rotation = 45; // sets the main direction that the jet spawns in facing ( a random direction that is either 20 degrees left or right is selected base on this variable).
			_jetAlt = 2000; // sets the exact altitude for the jet to spawn in at
			};
		} else {
//for civillian players---------------------------------------------------------------------------------------------------------------
			if (_groundSp) then {
		// for spawning on ground
				_groundPoint = "civgroundspawn"; // Marker that marks position for the jet to spawn on, rotation of marker is also taken into account.
			} else {
		// for spawning in the air
			_airmin = "civairspawn_1";
			_airmax = "civairspawn_2";
			_Rotation = 45; // sets the main direction that the jet spawns in facing ( a random direction that is either 20 degrees left or right is selected base on this variable).
			_jetAlt = 2000; // sets the exact altitude for the jet to spawn in at
			};
		};
	};
};


if (_groundSp) then {
		// for spawning on ground
	if (getMarkerColor _groundPoint == "") then {
		systemChat format ["--------------------------------********--ERROR--ERROR--*******---------------------------------
		Marker: %1  Have not been placed and/or named correctly. Refer to the JS-Setup.txt file for setup instructions.", _groundPoint];
		hintSilent "ERROR!!";
		sleep (2);
		hintSilent "";
	} else {
		_Dir = markerDir _groundPoint;
		_mpos = getMarkerPos _groundPoint;
		_Xcrd = _mpos select 0;
		_Ycrd = _mpos select 1;
		_objarray = nearestObjects [_mpos,["Plane"],_detectRadius];
		_objstr = _objarray select 0;
		if (isNil "_objstr")then{

			_jet= createVehicle [_jetClassname,[_Xcrd,_Ycrd,0], [], 0, "NONE"];
			_jet setDir _Dir;





			if (_jetClassname == "O_PLANE_FIGHTER_02_F") then {
			_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
			_jet removeWeapon _wep;
			_jet removeWeapon "weapon_KAB250Launcher";
			_jet removeWeapon "Laserdesignator_pilotCamera";
			_jet removeWeapon "weapon_R77Launcher";
			[_jet,"Cannon_30mm_Plane_CAS_02_F",1] call BIS_fnc_addWeapon;
			};

			if (_jetClassname == "B_PLANE_FIGHTER_01_F") then {
			_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
			_jet removeWeapon _wep;
			_jet removeWeapon "weapon_AMRAAMLauncher";
			_jet removeWeapon "weapon_AGM_65Launcher";
			_jet removeWeapon "Laserdesignator_pilotCamera";
			_jet removeWeapon "weapon_GBU12Launcher";
			[_jet,"weapon_Fighter_Gun20mm_AA",1] call BIS_fnc_addWeapon;
			};
			if (_jetClassname == "I_PLANE_FIGHTER_04_F") then {
			_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
			_jet removeWeapon _wep;
			_jet removeWeapon "weapon_AMRAAMLauncher";
			_jet removeWeapon "weapon_AGM_65Launcher";
			_jet removeWeapon "Laserdesignator_pilotCamera";
			_jet removeWeapon "weapon_GBU12Launcher";
			[_jet,"weapon_Fighter_Gun20mm_AA",0] call BIS_fnc_addWeapon;
			_jet addMagazine ["magazine_Fighter04_Gun20mm_AA_x250",250];
			};


			if (_jetClassname == "B_PLANE_CAS_01_F") then {
			_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
			_jet removeWeapon _wep;
			_jet removeWeapon "Rocket_04_AP_Plane_CAS_01_F";
			_jet removeWeapon "Rocket_04_HE_Plane_CAS_01_F";
			_jet removeWeapon "Missile_AGM_02_Plane_CAS_01_F";
			_jet removeWeapon "Laserdesignator_pilotCamera";
			_jet removeWeapon "Bomb_04_Plane_CAS_01_F";
			[_jet,"Gatling_30mm_Plane_CAS_01_F",0] call BIS_fnc_addWeapon;
			};


			if (_jetClassname == "O_PLANE_CAS_02_F") then {
			_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
			_jet removeWeapon _wep;
			_jet removeWeapon "Rocket_03_AP_Plane_CAS_02_F";
			_jet removeWeapon "Rocket_03_HE_Plane_CAS_02_F";
			_jet removeWeapon "Missile_AGM_01_Plane_CAS_02_F";
			_jet removeWeapon "Laserdesignator_pilotCamera";
			_jet removeWeapon "Bomb_03_Plane_CAS_02_F";
			[_jet,"Cannon_30mm_Plane_CAS_02_F",0] call BIS_fnc_addWeapon;
			};


			if (_jetClassname == "I_Plane_Fighter_03_AA_F") then {
			_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
			_jet removeWeapon _wep;
			_jet removeWeapon "missiles_ASRAAM";
			_jet addMagazine "1x 300Rnd_20mm_shells";
			[_jet,"Twin_Cannon_20mm",0] call BIS_fnc_addWeapon;
			};


			if (_jetClassname == "I_Plane_Fighter_03_CAS_F") then {
			_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
			_jet removeWeapon _wep;
			_jet removeWeapon "missiles_SCALPEL";
			_jet removeWeapon "GBU12BombLauncher_Plane_Fighter_03_F";
			_jet removeWeapon "Laserdesignator_pilotCamera";
			_jet addMagazine "1x 300Rnd_20mm_shells";
			[_jet,"Twin_Cannon_20mm",0] call BIS_fnc_addWeapon;
			};

			if (_jetClassname == "C_Plane_Civil_01_racing_F") then {
			[_jet,"weapon_Cannon_Phalanx",5] call BIS_fnc_addWeapon;
			[_jet,"missiles_DAR",5] call BIS_fnc_addWeapon;
			[_jet,"Missile_AA_04_Plane_CAS_01_F",5] call BIS_fnc_addWeapon;
			[_jet,"CMFlareLauncher",15] call BIS_fnc_addWeapon;
			};


			player moveInDriver _jet;
			_jet engineOn true;

		} else {
			hintSilent "Spawn Area is full!";
			systemChat "Ensure that the jet's ground spawn area is kept clear";
			sleep (5);
			hintSilent "";
		};
	};
} else {
		//for spawning in the air
		if (!(getMarkerColor _airmin == "") && !(getMarkerColor _airmax == "")) then {
			_markerPosMin = getMarkerPos _airmin;
			_markerPosMax = getMarkerPos _airmax;
			_minXcrd = _markerPosMin select 0;
			_maxXcrd = _markerPosMax select 0;
			_minYcrd = _markerPosMin select 1;
			_maxYcrd = _markerPosMax select 1;
			_midXcrd = (_minXcrd +_maxXcrd)/2;
			_midYcrd =(_minYcrd +_maxYcrd)/2;
			_Xcrd = random [_minXcrd,_midXcrd ,_maxXcrd];
			_Ycrd = random [_minYcrd,_midYcrd ,_maxYcrd];
			_RanDir = random [_Rotation - 20,_Rotation,_Rotation + 20];
		};
	} else {
		systemChat format ["--------------------------------********--ERROR--ERROR--*******---------------------------------
		Marker: %1 And Marker: %2, Have not been placed and/or named correctly. Refer to the JS-Setup.txt file for setup instructions",_airmin,_airmax];
		hintSilent "ERROR!!";
		sleep (2);
		hintSilent "";
	};
	};

	if (_jetClassname == "C_Plane_Civil_01_racing_F") then {
		systemChat "The Redneck Attack-Jet Cannot be spawned into the air";
	} else {
	_jet= createVehicle [_jetClassname,[_Xcrd,_Ycrd,_jetAlt], [], 0, "NONE"];
	_jet setDir _RanDir;
	_direction = getDir _jet;
	_jet setVelocity [sin _direction * 222.222 ,cos _direction * 222.222,0];


	if (_jetClassname == "O_PLANE_FIGHTER_02_F") then {
	_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
	_jet removeWeapon _wep;
	_jet removeWeapon "weapon_Fighter_Gun_30mm";
	_jet removeWeapon "Laserdesignator_pilotCamera";
	_jet removeWeapon "weapon_KAB250Launcher";
	_jet removeWeapon "weapon_R77Launcher";
	[_jet,"Cannon_30mm_Plane_CAS_02_F",1] call BIS_fnc_addWeapon;
	};

	if (_jetClassname == "B_PLANE_FIGHTER_01_F") then {
	_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
	_jet removeWeapon _wep;
	_jet removeWeapon "weapon_AMRAAMLauncher";
	_jet removeWeapon "Laserdesignator_pilotCamera";
	_jet removeWeapon "weapon_AGM_65Launcher";
	_jet removeWeapon "weapon_GBU12Launcher";
	[_jet,"weapon_Fighter_Gun20mm_AA",1] call BIS_fnc_addWeapon;
	};

	if (_jetClassname == "I_PLANE_FIGHTER_04_F") then {
	_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
	_jet removeWeapon _wep;
	_jet removeWeapon "weapon_AMRAAMLauncher";
	_jet removeWeapon "weapon_AGM_65Launcher";
	_jet removeWeapon "Laserdesignator_pilotCamera";
	_jet removeWeapon "weapon_GBU12Launcher";
	[_jet,"weapon_Fighter_Gun20mm_AA",0] call BIS_fnc_addWeapon;
	_jet addMagazine ["magazine_Fighter04_Gun20mm_AA_x250",250];
	};

	if (_jetClassname == "B_PLANE_CAS_01_F") then {
	_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
	_jet removeWeapon _wep;
	_jet removeWeapon "Rocket_04_AP_Plane_CAS_01_F";
	_jet removeWeapon "Rocket_04_HE_Plane_CAS_01_F";
	_jet removeWeapon "Missile_AGM_02_Plane_CAS_01_F";
	_jet removeWeapon "Laserdesignator_pilotCamera";
	_jet removeWeapon "Bomb_04_Plane_CAS_01_F";
	[_jet,"Gatling_30mm_Plane_CAS_01_F",0] call BIS_fnc_addWeapon;
	};


	if (_jetClassname == "O_PLANE_CAS_02_F") then {
	_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
	_jet removeWeapon _wep;
	_jet removeWeapon "Rocket_03_AP_Plane_CAS_02_F";
	_jet removeWeapon "Rocket_03_HE_Plane_CAS_02_F";
	_jet removeWeapon "Missile_AGM_01_Plane_CAS_02_F";
	_jet removeWeapon "Laserdesignator_pilotCamera";
	_jet removeWeapon "Bomb_03_Plane_CAS_02_F";
	[_jet,"Cannon_30mm_Plane_CAS_02_F",0] call BIS_fnc_addWeapon;
	};


	if (_jetClassname == "I_Plane_Fighter_03_AA_F") then {
	_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
	_jet removeWeapon _wep;
	_jet removeWeapon "missiles_ASRAAM";
	_jet addMagazine "1x 300Rnd_20mm_shells";
	[_jet,"Twin_Cannon_20mm",0] call BIS_fnc_addWeapon;
	};


	if (_jetClassname == "I_Plane_Fighter_03_CAS_F") then {
	_wep = (getArray (configfile >> "CfgVehicles" >> _jetClassname >> "weapons")) select 0;
	_jet removeWeapon _wep;
	_jet removeWeapon "missiles_SCALPEL";
	_jet removeWeapon "GBU12BombLauncher_Plane_Fighter_03_F";
	_jet removeWeapon "Laserdesignator_pilotCamera";
	_jet addMagazine "1x 300Rnd_20mm_shells";
	[_jet,"Twin_Cannon_20mm",0] call BIS_fnc_addWeapon;
};


player moveInDriver _jet;

_jet engineOn true;