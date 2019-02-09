/*
	Author: Moldisocks
	Last Modified: 2019.02.09 13.19
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
#include "..\..\..\resources\colours.hpp"

mec_getIn_action_ID = player addAction [format ["<img size= '1' color ='%1' image='resources\pictures\repairPic.paa'/><t color='%1'> Service Vehicle</t>",HTMLCOLOR_YELLOW],{[] spawn mld_core_fnc_rep;}];