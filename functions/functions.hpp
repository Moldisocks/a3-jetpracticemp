/*
	Author: Moldisocks
	Last Modified: 2019.02.07 21.31
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//Core systems
class mld_core {
	tag = "mld_core";
};

//Debug functions
class mld_dbug {
	tag = "mld_dbug";
};

//For VVS
class VVS
{
	tag = "VVS";
	class functions
	{
		file = "external\VVS\functions";
		class openVVS {};
		class mainInit {postInit = 1;};
		class buildCfg {};
		class cfgInfo {};
		class mainDisplay {};
		class filterList {};
		class filterType {};
		class spawnVehicle {};
		class checkBox {};
	};

};