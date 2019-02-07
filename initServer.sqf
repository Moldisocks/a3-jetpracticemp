/*
	Author: Moldisocks
	Last Modified:  2019.01.26 12.46
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


//Structured text to be used in creation of the miniMapHud's capture point symbols
cap_flagString = "<t color = '#868B93'>      A  </t><t color = '#868B93'>  B  </t><t color = '#868B93'>  C  </t><t color = '#868B93'>  D  </t><t color = '#868B93'>  E  </t><t color = '#868B93'>  F  </t><t color = '#868B93'>  G  </t>";

/*  All below cap_**Ct variables are used by capCounter,capGuiAct to calculate the state of capture for each capture point.
*	A Value of: -40 = Nato captured , 40 = Csat capture and 0 = Neutral state
*
*	All cap_*Nato's and cap_*Csat's below are varaibles used capCounter and capInit to determine the number of csat and nato units in a capture point.
*	All *FlagCapped variables below are used by alot of capSystem functions to determine each flag's state of capture.
*	A Value of: 0 = Neutral state, 1 = Nato captured and 2 = Csat captured
*/
cap_aflagCt = 0;
cap_ACsat = 0;
cap_ANato = 0;
cap_aFlagCapped = 0;

cap_bflagCt = 0;
cap_BNato = 0;
cap_BCsat = 0;
cap_bFlagCapped = 0;

cap_cflagCt = 0;
cap_CNato = 0;
cap_CCsat = 0;
cap_cFlagCapped = 0;

cap_dflagCt = 0;
cap_DNato = 0;
cap_DCsat = 0;
cap_dFlagCapped = 0;

cap_eflagCt = 0;
cap_ENato = 0;
cap_ECsat = 0;
cap_eFlagCapped = 0;

cap_fflagCt = 0;
cap_FNato = 0;
cap_FCsat = 0;
cap_fFlagCapped = 0;

cap_gflagCt = 0;
cap_GNato = 0;
cap_GCsat = 0;
cap_gFlagCapped = 0;

medKitArray = []; //Array to store all placed medkit objects. Will be used in garbage collection to delete the first placed medkit after a ceratin amount of time.
ammoPackArray = [];//Array to store all placed ammo pack objects. Will be used in garbage collection to delete the frist placed ammo pack after a certain amount of time.

// Spawn all server looping roles.
[] spawn mld_fnc_cap_counter;
[] spawn mld_fnc_cap_scoreLoop;
