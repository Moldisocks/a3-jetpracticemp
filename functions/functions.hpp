/*
	Author: Moldisocks
	Last Modified: 2019.02.08 21.28
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

//Core systems
class mld_core {
	tag = "mld_core";

	class help {
		file = "functions\core\help";
		class hmenu_displayHelp{};
		class hmenu_menuInit{};
		class misc_welcomeMenu{};
	};

	class hudEditor {
		file = "functions\core\hudEditor";
		class hedit_createDisplay{};
		class hedit_defaults{};
		class hedit_init{};
		class hedit_menuInit{};
		class hedit_moveHud{};
		class hedit_undoLast{};
	};

	class jets {
		file = "functions\core\jets";
		class jets_init{};
		class jets_menuInit{};
		class jets_arm{};
		class jets_spawn{};
	};

	class keybindings {
		file = "functions\core\keybindings";
		class keys_defaults{};
		class keys_displayBinding{};
		class keys_getBinding{};
		class keys_init{};
		class keys_menu{};
		class keys_unbind{};
	};

	class playerMenu {
		file = "functions\core\playerMenu";
		class pmenu_menuInit{};
		class pmenu_viewDistance{};
	};

	class spawnAI {
		file = "functions\core\spawnAI";
		class eai_menu{};
		class eai_spawn{};
	};

	class earplugs {
		file = "functions\mechanics\earplugs";
		class ep_main{};
	};
	class events {
		file = "functions\mechanics\events";
		class keys_downPressHandler{};
		class mec_damageHandler{};
		class mec_killed{};
		class sp_respawn{};
	};
	class movement {
		file = "functions\mechanics\movement";
		class mec_jump{};
		class mec_godMode{};
	};
	// class repair {
	// 	file = "functions\mechanics\repair"

	// }
	class safezone {
		file = "functions\mechanics\safezone";
		class safe_init{};
	};

	class mechanics {
		file = "functions\mechanics";
		class mec_localEventHandlers{};
		class mec_serverEventHandlers{};
	};
	class misc {
		file = "functions\common";
		class misc_msgbox{};
		class misc_spawnVehicle{};
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

	class log {
		file = "functions\common\log";
		class log_add{};
		class log_get{};
		class log_init{};
		class log_setLevel{};
		class log_settings{};
		class log_resolve{};
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