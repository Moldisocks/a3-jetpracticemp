/*
	Author: Moldisocks
	Last Modified:  Sat Jun 30 22:10:12 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class message {
	idd = 245682;
	movingEnable = true;
	onLoad = "uiNamespace setVariable ['message', _this select 0];";
    onUnload = "uiNamespace setVariable ['message', displayNull]";
    duration = 8;
    fadeout=0;

	class controls {
		class topBar: IGUIBack
		{
			idc = 2200;
			x = 0.422656 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.011 * safezoneH;
			colorBackground[] = {0.808,0.49,0.047,1};
		};
		class message: RscStructuredText
		{
			idc = 1100;

			x = 0.422656 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.066 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
	};
};