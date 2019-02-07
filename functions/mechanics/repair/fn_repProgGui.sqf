
params ["_counter"];
if (!Servicing) then {
repairGuiLayer = "repairGui" cutRsc ["repProgress","PLAIN"];
};




_ct = _counter/35;
((uiNamespace getVariable "repProgress") displayCtrl 1100) ctrlSetStructuredText parseText "<t color = '#77af3b' size = '1.4' align = 'center'> Servicing Vehicle</t>";
((uiNamespace getVariable "repProgress") displayCtrl 4582) ctrlSetTextColor [0.886,0.773,0.184,1];
((uiNamespace getVariable "repProgress") displayCtrl 4582) progressSetPosition _ct;

