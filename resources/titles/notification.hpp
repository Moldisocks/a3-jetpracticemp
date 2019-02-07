class notification {
	idd = 7895;
	movingEnable = false;
	duration = 1500000;
	onLoad = "uiNamespace setVariable ['notification', _this select 0];";
    onUnload = "uiNamespace setVariable ['notification', displayNull]";
	class controls {
		class mainText: RscStructuredText
		{
			idc = 1100;

			text = ""; //--- ToDo: Localize;
			x = 0.371094 * safezoneW + safezoneX;
			y = 0.093 * safezoneH + safezoneY;
			w = 0.257813 * safezoneW;
			h = 0.066 * safezoneH;
			colorBackground[] = {0,0,0,0.6};
		};
};
};