/*
	Author: Moldisocks
	Last Modified:  Sun Jun 17 14:23:34 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class welcomeScreen { // Screen to
	idd = 4645;
	movingEnable = false;
	class controls {
		class subTitle: RscStructuredText
		{
			idc = 1101;
			text = "<t size='0.9' align='left'> New to AF3?</t>"; //--- ToDo: Localize;
			x = 0.242708 * safezoneW + safezoneX;
			y = 0.462482 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class topBar: RscStructuredText
		{
			idc = 1100;
			text = "<t size='1.2' align='center'> Welcome to Arma-Field 3 </t>"; //--- ToDo: Localize;
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.197444 * safezoneH + safezoneY;
			w = 0.515104 * safezoneW;
			h = 0.0275556 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class textOne: RscStructuredText
		{
			idc = 1102;
			text = "<t size='0.8' > Stuff </t>"; //--- ToDo: Localize;
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.227778 * safezoneH + safezoneY;
			w = 0.515625 * safezoneW;
			h = 0.231 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class textTwo: RscStructuredText
		{
			idc = 1103;
			text = "<t size='0.8' > Stuff </t>"; //--- ToDo: Localize;
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.515625 * safezoneW;
			h = 0.231 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class playButton: RscButton
		{
			idc = 1600;
			text = "Play"; //--- ToDo: Localize;
			x = 0.680469 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;
			h = 0.033 * safezoneH;
			action = "closeDialog 4645; [] spawn mld_core_fnc_sp_respawn";
			shortcuts[] = {"0x01"};
		};
		class bottomBar: IGUIBack
		{
			idc = 2200;
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.515625 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class guideButton: RscButton
		{
			idc = 1601;
			text = "Guide"; //--- ToDo: Localize;
			x = 0.242187 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			action = "['Quickstart Guide'] spawn mld_core_fnc_hmenu_menuInit";
		};
	};
};