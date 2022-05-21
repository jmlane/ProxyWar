//Run on the server when it loads the game map.

//Create "logic" faction to allow creation of logic elements. Requires side (faction) "center" (HQ) to already exist.
//LogicSide is the name of the group in which logic elements will reside.
LogicSide = createGroup sideLogic;

//Initialize server side dynamic group framework.
["Initialize"] call BIS_fnc_dynamicGroups;

//Create ticket pool for score.
BluTickets = 1200;
PublicVariable "BluTickets";

RedTickets = 1200;
PublicVariable "RedTickets";

//Create sector pool for sector ownership comparison.
BluZones = 0;
PublicVariable "BluZones";

RedZones = 0;
PublicVariable "RedZones";

//Create group specific graves for group reinforcement.
[] ExecVM "DeadPool.sqf";

Sleep 2; //Delay appears to allow the server to more easily construct the scenario.

//Run sector script.
[] Spawn ASG_FNC_Sector;
[] Spawn ASG_FNC_TicketBleed;

//Spawn "SOF" (special operations forces (players)) vehicles and "ACE" (Air Combat Elements (AI air support)).
[] Spawn ASG_FNC_SOF;
//Disabled for development. [] Spawn ASG_FNC_BACE;
Sleep 2;

//Spawn AI. Stall spawns to not shock client frames.
[] Spawn ASG_FNC_LCEBA;
[] Spawn ASG_FNC_LCERA;
Sleep 12;

[] Spawn ASG_FNC_LCEBB;
[] Spawn ASG_FNC_LCERB;
Sleep 12;

[] Spawn ASG_FNC_LCEBC;
[] Spawn ASG_FNC_LCERC;
Sleep 12;

[] Spawn ASG_FNC_LCEBD;
[] Spawn ASG_FNC_LCERD;

/*Spawn AI. Spawn redfor on HC2, if it exists, else spawn both forces on HC1 if it exists, else spawn forces on the server.
If (!isNil "HC1") then {RemoteExec ["ASG_FNC_LCEBA", HC1];} else {[] Spawn ASG_FNC_LCEBA;};
If (!isNil "HC1") then {If (!isNil "HC2") then {RemoteExec ["ASG_FNC_LCERA", HC2];} else {RemoteExec ["ASG_FNC_LCERA", HC1];};} else {[] Spawn ASG_FNC_LCERA;};
Sleep 12;

If (!isNil "HC1") then {RemoteExec ["ASG_FNC_LCEBB", HC1];} else {[] Spawn ASG_FNC_LCEBB;};
If (!isNil "HC1") then {If (!isNil "HC2") then {RemoteExec ["ASG_FNC_LCERB", HC2];} else {RemoteExec ["ASG_FNC_LCERB", HC1];};} else {[] Spawn ASG_FNC_LCERB;};
Sleep 12;

If (!isNil "HC1") then {RemoteExec ["ASG_FNC_LCEBC", HC1];} else {[] Spawn ASG_FNC_LCEBC;};
If (!isNil "HC1") then {If (!isNil "HC2") then {RemoteExec ["ASG_FNC_LCERC", HC2];} else {RemoteExec ["ASG_FNC_LCERC", HC1];};} else {[] Spawn ASG_FNC_LCERC;};
Sleep 12;

If (!isNil "HC1") then {RemoteExec ["ASG_FNC_LCEBD", HC1];} else {[] Spawn ASG_FNC_LCEBD;};
If (!isNil "HC1") then {If (!isNil "HC2") then {RemoteExec ["ASG_FNC_LCERD", HC2];} else {RemoteExec ["ASG_FNC_LCERD", HC1];};} else {[] Spawn ASG_FNC_LCERD;};