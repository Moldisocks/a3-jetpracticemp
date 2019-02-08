/*
	Author: Moldisocks
	Last Modified: 2019.02.07 23.10
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params ["_message","_file",["_log_level",2],["_hint",false]];

_scope = "";
_doLog = false;

if ((_file select [(count _file) - 4,4]) == ".sqf") then {
	_dir_file_arr = _file splitString "\";
	_scope = _dir_file_arr select (count _dir_file_arr - 1);
} else { //Allow for plain text to be passed in as the scope, rather than just file.
	_scope = _file;
};


if (_log_level < log_level) exitWith {};

if (log_explicit) then {
	if (_log_level == log_level) then {
		_doLog = true;
	};
} else {
	_doLog = true;
};

if (_doLog) then {
		_log_level_str = [_log_level] call mld_dbug_fnc_log_resolve;

		if (log_systemChat) then {
			if (_log_level == 2) then {
				systemChat format ["%1", _message];
			} else {
				systemChat format ["%1 - File: %2 - %3",_log_level_str,_scope, _message];
			};
		};
		if (log_diag_log) then {
			diag_log format ["%1 - File: %2 - %3",_log_level_str,_scope, _message];
		};
		if (_log_level != 0) then {
			log_arr pushBack (format ["%1 - File: %2 - %3",_log_level_str,_scope, _message]);
		};
};
