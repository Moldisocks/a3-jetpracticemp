/*
	Author: Moldisocks
	Last Modified: 2018.12.11 01.16
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class settingsMenu {
	movingEnable = false;
	idd = 55555;
	class controls {

		class mainBackground: IGUIBack
		{
			idc = 2200;

			x = 0.298906 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.324844 * safezoneW;
			h = 0.308 * safezoneH;
			colorBackground[] = {0,0,0,0.6};
		};
		class topBar: RscStructuredText
		{
			idc = 1100;

			text = "<t> Settings Menu </t>"; //--- ToDo: Localize;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.324844 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class bottomBar: IGUIBack
		{
			idc = 2201;

			x = 0.298906 * safezoneW + safezoneX;
			y = 0.599 * safezoneH + safezoneY;
			w = 0.324844 * safezoneW;
			h = 0.0055 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class settingsListbox: RscListbox
		{
			idc = 1500;
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.286 * safezoneH;
		};
		class undoButton: RscButton
		{
			idc = 1600;
			text = "Undo Last"; //--- ToDo: Localize;
			x = 0.628906 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class backBtn: RscButton
		{
			idc = 1601;
			text = "Back"; //--- ToDo: Localize;
			x = 0.628906 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
			action = "closeDialog 55555;";
		};
		class defaults: RscButton
		{
			idc = 1602;
			text = "Restore Defaults"; //--- ToDo: Localize;
			x = 0.628906 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
			action = [] spawn mld_core_fnc_pdata_restoreDefaults;
		};
		class helpButton: RscButton
		{
			idc = 1603;
			text = "Need Help?"; //--- ToDo: Localize;
			x = 0.628906 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
			action = ["settingsMenu help"] spawn mld_core_fnc_hmenu_menuInit;
		};
		class description: RscStructuredText
		{
			idc = 1101;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.165 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class minmax: RscStructuredText
		{
			idc = 1102;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class intOrString: RscEdit
		{
			idc = 1400;
			x = 0.484531 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class boolCheckbox: RscCheckbox
		{
			idc = 2800;
			x = 0.525781 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.0103125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class instruction: RscStructuredText
		{
			idc = 1103;
			x = 0.448438 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
	};
};