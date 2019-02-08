/*
	Author: Moldisocks
	Last Modified:  Sun Jun 17 14:24:25 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class editKeysMenu {
	idd = 9885;
	movingEnable=false;
	class controls {
		class helpButton: RscButton
		{
			idc = 1603;
			action = "[""Edit keybindings help""] spawn mld_core_fnc_hmenu_menuInit";

			text = "Need Help?"; //--- ToDo: Localize;
			x = 0.577344 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class topBar: RscStructuredText
		{
			idc = 1100;

			text = "<t size='1.1' align='center'> Editing Keybindings </t>"; //--- ToDo: Localize;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class functionListbox: RscListBox
		{
			idc = 1500;

			x = 0.412344 * safezoneW + safezoneX;
			y = 0.280815 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.242 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class keyFunctionsBar: RscStructuredText
		{
			idc = 1102;

			text = "<t > Actions </t>"; //--- ToDo: Localize;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.258779 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class bindText: RscStructuredText
		{
			idc = 1101;
			onMouseButtonDblClick = "[] spawn mld_core_fnc_keys_getBinding";
			onMouseButtonClick = "call mld_core_fnc_keys_unbind";

			text = "<t>Currently Bound to:  </t>"; //--- ToDo: Localize;
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.224816 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
			tooltip = "Double-Click to re-bind or Shift-Click to un-bind completely"; //--- ToDo: Localize;
		};
		class defaultsBtn: RscButton
		{
			idc = 1601;
			text = "Restore Defaults"; //--- ToDo: Localize;
			action = "[true] spawn mld_core_fnc_keys_defaults;";
			x = 0.577344 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.061875 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};