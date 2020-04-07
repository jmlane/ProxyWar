waitUntil {time > 1};
[player] execVM "Gear.sqf";
_SetChannel = SetCurrentChannel 5;

/*
This addAction ["Deploy", "BDeploy1.sqf",[],1.5,true,true,"","true",1,true,"",""];

This disableAI "RADIOPROTOCOL";

TARGET
AUTOTARGET 
WEAPONAIM 
SUPPRESSION 
CHECKVISIBLE
COVER

PATH - stops movement, but not target alignment...
RADIOPROTOCOL - Stops AI from talking and texting. Can still issue orders.