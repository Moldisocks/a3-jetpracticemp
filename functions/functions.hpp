/*
	Author: Moldisocks
	Last Modified: 2019.02.07 22.21
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//Core systems
class mld_core {
	tag = "mld_core";

	class help {
		file = "functions\core\help"
		class hmenu_displayHelp{};
		class hmenu_menuInit{};
		class misc_welcomeMenu{};
	};

	class hudEditor {
		file = "functions\core\hudEditor"
		class hedit_createDisplay{};
		class hedit_defaults{};
		class hedit_init{};
		class hedit_menuInit{};
		class hedit_moveHud{};
		class hedit_undoLast{};
	};

	class jets {
		file = "functions\core\jets"
		class jets_init{};
		class jets_menuInit{};
	};
};

//Debug functions
class mld_dbug {
	tag = "mld_dbug";

	class playerData {
		file = "functions\core\playerData";

		class pdata_purgePlayer{};
		class pdata_purgeServer{};
	};
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