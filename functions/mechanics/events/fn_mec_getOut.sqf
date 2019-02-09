/*
	Author: Moldisocks
	Last Modified: 2019.02.09 13.20
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

if (isNil "mec_getIn_action_ID") exitWith {["mec_getIn_action_ID is nil",__FILE__,4] call mld_dbug_fnc_log_add;};
player removeAction mec_getIn_action_ID;