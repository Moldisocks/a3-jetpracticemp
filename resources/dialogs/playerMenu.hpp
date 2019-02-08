/*
	Author: Moldisocks
	Last Modified:  2019.02.09 02.35
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class playerMenu {
	idd = 23323;
	movingEnable =false;
	class controls {
			class mainBack: IGUIBack
		{
			idc = 2200;
			x = 0.432948 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.139261 * safezoneW;
			h = 0.099 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class keyBindingsBtn: RscButton
		{
			idc = 1602;
			action = "[] spawn mld_core_fnc_keys_menu";

			text = "Key Bindings"; //--- ToDo: Localize;
			x = 0.432948 * safezoneW + safezoneX;
			y = 0.4395 * safezoneH + safezoneY;
			w = 0.0696581 * safezoneW;
			h = 0.0247779 * safezoneH;
		};
		class editHudBtn: RscButton
		{
			idc = 1602;
			action = "[] call mld_core_fnc_hedit_menuInit;";

			text = "Edit HUD"; //--- ToDo: Localize;
			x = 0.502785 * safezoneW + safezoneX;
			y = 0.44016 * safezoneH + safezoneY;
			w = 0.0694546 * safezoneW;
			h = 0.0246666 * safezoneH;
		};
		class topBar: RscStructuredText
		{
			idc = 1100;

			text = "<t size='0.9' align='center'> Player Menu </t>"; //--- ToDo: Localize;
			x = 0.432948 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.139261 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class bottomBar: IGUIBack
		{
			idc = 2201;

			x = 0.432948 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.139261 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class leftVDistance: RscButton
		{
			idc = 1603;
			text = "<"; //--- ToDo: Localize;
			x = 0.463895 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0103157 * safezoneW;
			h = 0.033 * safezoneH;
			action = ["left"] spawn mld_core_fnc_pmenu_viewDistance;
		};
		class rightVDistance: RscButton
		{
			idc = 1604;
			text = ">"; //--- ToDo: Localize;
			x = 0.530947 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0103157 * safezoneW;
			h = 0.033 * safezoneH;
			action = ["right"] spawn mld_core_fnc_pmenu_viewDistance;
		};
		class vDistanceText: RscStructuredText
		{
			idc = 1101;
			text = "";
			x = 0.476763 * safezoneW + safezoneX;
			y = 0.371593 * safezoneH + safezoneY;
			w = 0.0521544 * safezoneW;
			h = 0.0257037 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class viewDTitle: RscStructuredText
		{
			idc = 1102;
			text = "<t size='0.85' align='center'> View Distance </t>"; //--- ToDo: Localize;
			x = 0.46598 * safezoneW + safezoneX;
			y = 0.344148 * safezoneH + safezoneY;
			w = 0.0727309 * safezoneW;
			h = 0.0210741 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};

	};
};