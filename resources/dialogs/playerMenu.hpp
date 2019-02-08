/*
	Author: Moldisocks
	Last Modified:  2018.12.11 01.21
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class playerMenu {
	idd = 23323;
	movingEnable =false;
	class controls {
		class mainBackground: IGUIBack
		{
			idc = 2200;

			x = 0.402031 * safezoneW + safezoneX;
			y = 0.28638 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.176 * safezoneH;
			colorBackground[] = {0,0,0,0.6};
		};
		class keyBindingsBtn: RscButton
		{
			idc = 1602;
			action = "menus_changing = true; [] spawn mld_core_fnc_keys_menu";

			text = "Key Bindings"; //--- ToDo: Localize;
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class editHudBtn: RscButton
		{
			idc = 1602;
			action = "[] call mld_core_fnc_hedit_menuInit;";

			text = "Edit HUD"; //--- ToDo: Localize;
			x = 0.474734 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.0360937 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class topBar: RscStructuredText
		{
			idc = 1100;

			text = "<t> Player Menu </t>"; //--- ToDo: Localize;
			x = 0.402031 * safezoneW + safezoneX;
			y = 0.2525 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class bottomBar: IGUIBack
		{
			idc = 2201;

			x = 0.402031 * safezoneW + safezoneX;
			y = 0.46194 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class settingsBtn: RscButton
		{
			idc = 1600;
			text = "Settings"; //--- ToDo: Localize;
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.0716667 * safezoneW;
			h = 0.033 * safezoneH;
			action = "menus_changing = true; [] call mld_core_fnc_pdata_menuInit;";
		};
		class sqaudText: RscStructuredText
		{
			idc = 1101;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.0670312 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
			tooltip = "Click to edit open squad menu"; //--- ToDo: Localize;
		};
		class squadMatesList: RscStructuredText
		{
			idc = 1102;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.11 * safezoneH;
		};
		class changeTeamBtn: RscButton
		{
			idc = 1601;
			text = "Change Team"; //--- ToDo: Localize;
			x = 0.515469 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.0567187 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};