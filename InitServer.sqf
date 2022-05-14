//Run on the server when it loads the game map.

//Create "logic" faction to allow creation of logic elements. Requires side (faction) "center" (HQ) to already exist.
//LogicSide is the name of the group in which logic elements will reside.
LogicSide = createGroup sideLogic;

//Initialize server side dynamic group framework.
["Initialize"] call BIS_fnc_dynamicGroups;

//Create ticket pool for score.
BluTickets = 300;
PublicVariable "BluTickets";

RedTickets = 300;
PublicVariable "RedTickets";

//Create sector pool for sector ownership comparison.
BluZones = 0;
PublicVariable "BluZones";

RedZones = 0;
PublicVariable "RedZones";

//Create group specific graves for group reinforcement.
[] ExecVM "DeadPool.sqf";

Sleep 2; //Delay appears to allow the server to more easily construct the scenario.

//Utilize headless clients. Appeared to be working. Disabled for development.
/*
Call ASG_FNC_LCE;
RemoteExec ["ASG_FNC_LCE", HC1];
BA11 setGroupOwner owner HC1;
*/

//Run sector script.
[] Spawn ASG_FNC_Sector;
[] Spawn ASG_FNC_TicketBleed;

//Spawn "SOF" (special operations forces (players)) vehicles and "ACE" (Air Combat Elements (AI air support)).
[] Spawn ASG_FNC_SOF;
//Disabled for development. [] Spawn ASG_FNC_BACE;
Sleep 2;

//Spawn AI line companies.
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