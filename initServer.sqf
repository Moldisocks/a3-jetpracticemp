/*
	Author: Moldisocks
	Last Modified:  2019.01.26 12.46
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


[] call mld_dbug_fnc_log_init;
if (isNil "cusRadio") then {
	cusRadio = radioChannelCreate [[0.92,0.92,0.92,1],"","SAFEZONE",allUnits,false];
};
publicVariable "cusRadio";