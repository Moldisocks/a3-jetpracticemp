/*
	Author: Moldisocks
	Last Modified:  Sat Sep 08 21:33:26 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class messagebox {
	idd = 12534;
	movingEnable = true;
	class controls {
		class topBar: IGUIBack
		{
			idc = 2200;

			x = 0.422656 * safezoneW + safezoneX;
			y = 0.423 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.011 * safezoneH;
			colorBackground[] = COLOR_JETGREEN;
		};
		class msg: RscStructuredText
		{
			idc = 1100;

			x = 0.422656 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.187 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class yesButton: RscButton
		{
			idc = 1600;
			text = "Yes";
			x = 0.469062 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class noButton: RscButton
		{
			idc = 1601;
			text = "No";
			x = 0.510312 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};