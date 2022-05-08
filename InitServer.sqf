/*
To Do:
	Priority;
		- Type diary entries for in game use.
		- Create ticket bleed logic.

	Eventual;
		- Casualty recovery?
		- Each critical casualty or death costs their side one ticket.
		- Every casualty, corpse, or wreck that is recovered and returned to their home base restores (a) lost ticket(s) to their side.

		- Morale system? Per AI element, casualties, combat, and movement diminish morale.
		- Morale is recovered slowly when units are still and "safe".
		- If morale is too low, AI elements break contact.
*/


//Create "logic" faction to allow creation of logic elements. Requires side (faction) "center" (HQ) to already exist.
_LogicSide = createGroup sideLogic;

//Initialize server side dynamic group framework.
["Initialize"] call BIS_fnc_dynamicGroups;

//Create ticket pool for score.
BluTickets = 120;
PublicVariable "BluTickets";

RedTickets = 120;
PublicVariable "RedTickets";

//Create sector pool for sector ownership comparison.
BluZones = 0;
PublicVariable "BluZones";

RedZones = 0;
PublicVariable "RedZones";

//Create group specific graves for group reinforcement.
[] ExecVM "DeadPool.sqf";

Sleep 2; //Delay appears to allow the server to more easily construct the scenario.

//Utilize headless clients. Appeared to be working. Disabled for testing.
/*
Call ASG_FNC_LCE;
RemoteExec ["ASG_FNC_LCE", HC1];
BA11 setGroupOwner owner HC1;
*/

//Run sector script.
[] Spawn ASG_FNC_Sector;

//Create high command modules.
BHCCA = _LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"];
BHCCA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BHCSA = _LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"];
BHCSA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BHCSA SynchronizeObjectsAdd [BHCCA];
BHCCA SynchronizeObjectsAdd [BFDO];

RHCCA = _LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"];
RHCCA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RHCSA = _LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"];
RHCSA setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RHCSA SynchronizeObjectsAdd [RHCCA];
RHCCA SynchronizeObjectsAdd [RFDO];

//Spawn "SOF" (special operations forces (players)) and "ACE" (Air Combat Elements (AI air support)).
[] Spawn ASG_FNC_SOF;
//Disabled for this test phase. [] Spawn ASG_FNC_BACE;
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
Sleep 12;

//Enable artillery and mortar support and add to support menu for relevant commander.

BA4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
BA4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BA6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
BA6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[BA6R, "Artillery", -1] call BIS_fnc_limitSupport;
[BA6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[BA6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[BA6R, "Drop", -1] call BIS_fnc_limitSupport;
[BA6R, "Transport", -1] call BIS_fnc_limitSupport;
[BA6R, "UAV", -1] call BIS_fnc_limitSupport;
BA4R synchronizeObjectsAdd [BA42MA];

RA4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
RA4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RA6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
RA6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[RA6R, "Artillery", -1] call BIS_fnc_limitSupport;
[RA6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[RA6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[RA6R, "Drop", -1] call BIS_fnc_limitSupport;
[RA6R, "Transport", -1] call BIS_fnc_limitSupport;
[RA6R, "UAV", -1] call BIS_fnc_limitSupport;
RA4R synchronizeObjectsAdd [RA42MA];

Sleep 0.2;

BB4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
BB4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BB6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
BB6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[BB6R, "Artillery", -1] call BIS_fnc_limitSupport;
[BB6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[BB6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[BB6R, "Drop", -1] call BIS_fnc_limitSupport;
[BB6R, "Transport", -1] call BIS_fnc_limitSupport;
[BB6R, "UAV", -1] call BIS_fnc_limitSupport;
BB4R synchronizeObjectsAdd [BB42MA];

RB4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
RB4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RB6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
RB6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[RB6R, "Artillery", -1] call BIS_fnc_limitSupport;
[RB6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[RB6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[RB6R, "Drop", -1] call BIS_fnc_limitSupport;
[RB6R, "Transport", -1] call BIS_fnc_limitSupport;
[RB6R, "UAV", -1] call BIS_fnc_limitSupport;
RB4R synchronizeObjectsAdd [RB42MA];

Sleep 0.2;

BC4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
BC4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BC6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
BC6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[BC6R, "Artillery", -1] call BIS_fnc_limitSupport;
[BC6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[BC6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[BC6R, "Drop", -1] call BIS_fnc_limitSupport;
[BC6R, "Transport", -1] call BIS_fnc_limitSupport;
[BC6R, "UAV", -1] call BIS_fnc_limitSupport;
BC4R synchronizeObjectsAdd [BC42MA];

RC4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
RC4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RC6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
RC6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[RC6R, "Artillery", -1] call BIS_fnc_limitSupport;
[RC6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[RC6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[RC6R, "Drop", -1] call BIS_fnc_limitSupport;
[RC6R, "Transport", -1] call BIS_fnc_limitSupport;
[RC6R, "UAV", -1] call BIS_fnc_limitSupport;
RC4R synchronizeObjectsAdd [RC42MA];

Sleep 0.2;

BD4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
BD4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BD6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
BD6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[BD6R, "Artillery", -1] call BIS_fnc_limitSupport;
[BD6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[BD6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[BD6R, "Drop", -1] call BIS_fnc_limitSupport;
[BD6R, "Transport", -1] call BIS_fnc_limitSupport;
[BD6R, "UAV", -1] call BIS_fnc_limitSupport;
BD4R synchronizeObjectsAdd [BD41VA];
BD4R synchronizeObjectsAdd [BD42VA];

RD4R = _LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"];
RD4R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
RD6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
RD6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[RD6R, "Artillery", -1] call BIS_fnc_limitSupport;
[RD6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[RD6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[RD6R, "Drop", -1] call BIS_fnc_limitSupport;
[RD6R, "Transport", -1] call BIS_fnc_limitSupport;
[RD6R, "UAV", -1] call BIS_fnc_limitSupport;
RD4R synchronizeObjectsAdd [RD41VA];
RD4R synchronizeObjectsAdd [RD42VA];

/*Disabled for this test phase.
Sleep 0.2;

//Create and enable close air support helicopters and allocate to commander. Incomplete.
BACE11R = _LogicSide createUnit ["SupportProvider_CAS_Heli",[0,0,0],[],0,"NONE"];
BACE11R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BACE6R = _LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"];
BACE6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
[BACE6R, "Artillery", -1] call BIS_fnc_limitSupport;
[BACE6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
[BACE6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
[BACE6R, "Drop", -1] call BIS_fnc_limitSupport;
[BACE6R, "Transport", -1] call BIS_fnc_limitSupport;
[BACE6R, "UAV", -1] call BIS_fnc_limitSupport;
BACE11R synchronizeObjectsAdd [BACE11V];