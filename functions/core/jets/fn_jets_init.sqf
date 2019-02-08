/*
	Author: Moldisocks
	Last Modified: 2019.02.07 22.45
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/


//List of jets that can be spawned.
jets_classnames = ["B_PLANE_CAS_01_F","O_PLANE_CAS_02_F","I_PLANE_FIGHTER_03_CAS_F","I_PLANE_FIGHTER_03_AA_F","B_PLANE_FIGHTER_01_F","O_PLANE_FIGHTER_02_F","I_PLANE_FIGHTER_04_F","C_Plane_Civil_01_racing_F"];

//Loadout for each jet. On a per jet basis. Each element consists of ["Jet_classname",[["Weapon_classname 1",int_magazine_count],["Weapon_classname 2",int_magazine_count]]]
jets_defaultLoadouts = [
	["B_PLANE_CAS_01_F",["Cannon_30mm_Plane_CAS_02_F",2]],
	["O_PLANE_CAS_02_F",[]],
	["I_PLANE_FIGHTER_03_CAS_F"]
];