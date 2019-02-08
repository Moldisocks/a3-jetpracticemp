/*
	Author: Moldisocks
	Last Modified: 2019.02.08 19.28
	Email: moldisocks78@gmail.com

	Notes: Obvious file name.....

	Description:

	To Do:

*/
params[["_enable",true],["_settings",[5,5]]];

if (isNil "misc_godmodeOn") then {misc_godmodeOn = false;};

_enable_godmode = {
	player enableFatigue false;
	player allowDamage false;
	player setAnimSpeedCoef (_this select 0);
	jump_zVel = (_this select 1);
};

_disable_godmode = {
	player enableFatigue true;
	player allowDamage true;
	player setAnimSpeedCoef 1;
	jump_zVel = 4;
};

if (_enable) then {
	["Are you sure you want to enable godmode? With great power comes great responsibility!",true] call mld_fnc_misc_msgbox;
	waitUntil {misc_buttonPressed};
	if (misc_msgboxresult) then {
		if (!misc_godmodeOn) then {
			_settings call _enable_godmode;
			["Godmode enabled",__FILE__,1] call mld_dbug_fnc_log_add;
			misc_godmodeOn = true;
		} else {
			["You're already atop mount Olympus, eating Ferrero Rocher`",__FILE__,2,true] call mld_dbug_fnc_log_add;
		};
	} else {
		["User choose not to accept the responsibility... shame.",__FILE__,2] call mld_dbug_fnc_log_add;
	};
} else {
	["Are you sure you want to disable godmode? You will become a weak, feabile human again.",true] call mld_fnc_misc_msgbox;
	waitUntil {misc_buttonPressed};
	if (misc_msgboxresult) then {
		if (misc_godmodeOn) then {
			["Godmode disabled",__FILE__,1] call mld_dbug_fnc_log_add;
			_settings call _disable_godmode;
			misc_godmodeOn = false;
		} else {
			["You're already a filthy peasant, shouldn't you be cleaning the stables? Go.. shhoo!",__FILE__,2,true] call mld_dbug_fnc_log_add;
		};
	} else {
		["User realised that being a god is harder than that thought.",__FILE__,2] call mld_dbug_fnc_log_add;
	};
};

