/*
	Author: Moldisocks
	Last Modified: 2019.02.07 23.10
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

params ["_message","_file",["_log_level",2],["_hint",false]];
_doLog = false;
if (_log_level < log_level) exitWith {};

if (log_explicit) then {
	if (_log_level == log_level) then {
		_doLog = true;
	};
} else {
	_doLog = true;
};

if (_doLog) then {
		if (log_systemChat) then {
			systemChat format ["File: %1 | %2",_file, _message];
		};
		if (log_diag_log) then {
			diag_log format ["File: %1 | %2",_file, _message];
		};
		log_arr pushBack (format ["File: %1 | %2",_file, _message]);
};
