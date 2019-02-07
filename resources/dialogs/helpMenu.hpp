/*
	Author: Moldisocks
	Last Modified:  Sun Jun 17 14:23:59 2018
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

class helpMenu {
	idd = 7546;
	movingEnable = false;
	class controls {
		class topBar: RscStructuredText
		{
			idc = 1100;

			text = "<t size='1.2' align='center'> </t>"; //--- ToDo: Localize;
			x = 0.303547 * safezoneW + safezoneX;
			y = 0.19002 * safezoneH + safezoneY;
			w = 0.516146 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.808,0.49,0.047,1};
		};
		class textmain: RscStructuredText
		{
			idc = 1102;

			text = "<t size='0.8' > Stuff </t>"; //--- ToDo: Localize;
			x = 0.303541 * safezoneW + safezoneX;
			y = 0.226852 * safezoneH + safezoneY;
			w = 0.516146 * safezoneW;
			h = 0.559148 * safezoneH;
			colorBackground[] = {0,0,0,0.65};
		};
		class middleBar: IGUIBack
		{
			idc = 2200;

			x = 0.296328 * safezoneW + safezoneX;
			y = 0.192 * safezoneH + safezoneY;
			w = 0.00515625 * safezoneW;
			h = 0.55 * safezoneH;
			colorBackground[] = {0.608,0.29,0.027,1};
		};
		class otherHelpListbox: RscListBox
		{
			idc = 1500;

			x = 0.17052 * safezoneW + safezoneX;
			y = 0.226852 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.561 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class moreHelpTitle: RscStructuredText
		{
			idc = 1100;

			text = "<t size='1.2' align='center'> Need more help? </t>"; //--- ToDo: Localize;
			x = 0.170521 * safezoneW + safezoneX;
			y = 0.19002 * safezoneH + safezoneY;
			w = 0.12375 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0.808,0.49,0.047,1};
		};

	};
};