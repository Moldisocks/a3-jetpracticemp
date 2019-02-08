/*
	Author: Moldisocks
	Last Modified:  Fri Oct 12 20:09:44 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class hudEditorMenu {
	idd = 44444;
	movingEnable = false;
	class controls {
		class topBar: RscStructuredText
		{
			idc = 1100;

			text = "<t align='center'>Select a HUD item to edit</t>"; //--- ToDo: Localize;
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class menuListbox: RscListBox
		{
			idc = 1500;

			x = 0.438125 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.134062 * safezoneW;
			h = 0.209 * safezoneH;
		};
		class editButton: RscButton
		{
			idc = 1600;
			action = "[] spawn mld_core_fnc_hedit_moveHud;";

			text = "Edit"; //--- ToDo: Localize;
			x = 0.438125 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class undoButton: RscButton
		{
			idc = 1600;
			action = "[] spawn mld_core_fnc_hedit_undoLast;";

			text = "Undo Last"; //--- ToDo: Localize;
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class helpButton: RscButton
		{
			idc = 1601;
			action = "['HUD Editor'] call mld_core_fnc_hmenu_menuInit;";

			text = "Need help?"; //--- ToDo: Localize;
			x = 0.577344 * safezoneW + safezoneX;
			y = 0.269 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class resetBtn: RscButton
		{
			idc = 1601;
			action = "[true] spawn mld_core_fnc_hedit_defaults;";

			text = "Restore Defaults"; //--- ToDo: Localize;
			x = 0.577344 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class backBtn: RscButton
		{
			idc = 1601;
			action = "menus_changing = true; hedit_posSelected = true; closeDialog 44444;";

			text = "Back"; //--- ToDo: Localize;
			x = 0.577344 * safezoneW + safezoneX;
			y = 0.357 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};