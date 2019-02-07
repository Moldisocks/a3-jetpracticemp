/*
	Author: Moldisocks
	Last Modified:  2019.01.26 12.43
	Email: moldisocks78@gmail.com

	Notes:

	Description:

	To Do:

*/

keys_bindings = profileNamespace getVariable "keybindings";

if (isNil "keys_bindings") then {// Initialise default keybindings
	[false] call mld_fnc_keys_defaults;
};

//Debug code:  profileNamespace setVariable ["keybindings",nil];

keys_functions = ["Earplugs","Minimap Zoom","Begin Gadget Placement","Accept Gadget Placement","Cancel Gadget Placement","Blowup Explosives","Jump","Open Playermenu","Accept HUD position"];//List of actions that require a custom hardcoded keybinding. Must match indexing of the keyhandler and the var keys_bindings.

keys_DIKcodeArray = [[2,"1"],[3,"2"],[4,"3"],[5,"4"],[6,"5"],[7,"6"],[8,"7"],[9,"8"],[10,"9"],[11,"0"],[12,"Minus(-)"],[13,"Equals(=)"],[14,"Backspace"],[15,"Tab"],[16,"Q"],[17,"W"],[18,"E"],[19,"R"],[20,"T"],[21,"Y"],[22,"U"],[23,"I"],[24,"O"],[25,"P"],[26,"["],[27,"]"],[28,"ENTER"],[29,"L-Ctrl"],[30,"A"],[31,"S"],[32,"D"],[33,"F"],[34,"G"],[35,"H"],[36,"J"],[37,"K"],[38,"L"],[39,"Semicolon(;)"],[40,"Apostrophe(')"],[41,"Grave(`)"],[42,"L-Shift"],[43,"Backslash(\)"],[44,"Z"],[45,"X"],[46,"C"],[47,"V"],[48,"B"],[49,"N"],[50,"M"],[51,"Comma(,)"],[52,"Period(.)"],[53,"Fowardslash(/)"],[54,"R-Shift"],[55,"Multiply(*)"],[56,"L-Alt"],[57,"Space"],[58,"Capslock"],[59,"F1"],[60,"F2"],[61,"F3"],[62,"F4"],[63,"F5"],[64,"F6"],[65,"F7"],[66,"F8"],[67,"F9"],[68,"F10"],[69,"Numlock"],[70,"Scroll Lock"],[71,"Numpad 7"],[72,"Numpad 8"],[73,"Numpad 9"],[74,"Numpad Minus(-)"],[75,"Numpad 4"],[76,"Numpad 5"],[77,"Numpad 6"],[78,"Numpad Plus(+)"],[79,"Numpad 1"],[80,"Numpad 2"],[81,"Numpad 3"],[82,"Numpad 0"],[83,"Numpad DEL"],[87,"F11"],[88,"F12"],[128,"Next Track"],[156,"Numpad ENTER"],[157,"R-Ctrl"],[181,"Numpad Fowardslash(/)"],[184,"R-Alt"],[199,"Home"],[200,"Up Arrow"],[201,"Page UP"],[203,"Left Arrow"],[205,"Right Arrow"],[207,"END"],[208,"Down Arrow"],[209,"Page DOWN"],[210,"Insert"],[211,"DEL"],[219,"L-Windows"],[220,"R-Windows"],[0,"Nothing/Unbound"],["UnKey","Unknown Key"]];