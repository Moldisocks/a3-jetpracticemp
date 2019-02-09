/*
	Author: Moldisocks
	Last Modified: 2019.02.09 13.48
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/
class repProgress {
	idd = 45625;
	movingEnable = false;
	duration = 1500000;
	onLoad = "uiNamespace setVariable ['repProgress', _this select 0];";
    onUnload = "uiNamespace setVariable ['repProgress', displayNull]";
	class controls {
		class progTextTitle: RscStructuredText
		{
			idc = 1100;
			text = "<t size='0.8' align='center'> Servicing your vehicle </t>"; //--- ToDo: Localize;
			x = 0.443264 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.11863 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {0,0,0,0};
		};
		class progBar: RscProgress
		{
			idc = 4582;
			x = 0.443264 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.11863 * safezoneW;
			h = 0.011 * safezoneH;
			colorBackground[] = {0.039,0.42,0.078,1};
		};
	};
};