//A personal notepad for commands and experiments.
//Sector control ticket bleed psuedo code.

//Win Triggers
//Red Victory
If (BluTickets < 1) then {
	'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
};

//Blue Victory
If (RedTickets < 1) then {
	'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
};

//Grave Addition
{
	{
		_x addEventHandler ["Killed", {
			RA11Grave pushback (_this select 0);
			PublicVariable "RA11Grave";
		}];
	} foreach units _x;
} foreach [RA11];

//Count zones.
BluZones = 0;
RedZones = 0;

//Count captured zones.
If Zone Caputred then BluZones = BluZones + 1;

//Compare zones/Bleed tickets.
If BluZones < 0.4*(RedZones); Bleed Blu Tickets;
If RedZones < 0.4*(BluZones); Bleed Red Tickets;

HighCommand
HighCommandSubordinate
SupportRequester
SupportProvider_Artillery
BIS_fnc_initModules_disableAutoActivation

B_T_MBT_01_arty_F
O_MBT_02_arty_F
B_T_APC_Tracked_01_AA_F
O_APC_Tracked_02_AA_F
VirtualReammoBox_small_F
Box_NATO_AmmoVeh_F
Box_IND_AmmoVeh_F
Box_East_AmmoVeh_F
FlexibleTank_01_forest_F
FlexibleTank_01_sand_F
B_Slingload_01_Fuel_F
Land_Pod_Heli_Transport_04_fuel_F
B_Slingload_01_Repair_F
Land_Pod_Heli_Transport_04_repair_F
Land_RepairDepot_01_green_F
B_Slingload_01_Medevac_F
Land_Pod_Heli_Transport_04_ammo_F
B_Slingload_01_Ammo_F


setVehicleAmmo

BA32VB = "B_T_APC_Tracked_01_AA_F" createVehicle _BRPA32B;
BA32VB setDir (direction BRPA);

BA32 = [_BRPA32A, INDEPENDENT, [
		"B_G_Soldier_F","B_G_officer_F","B_G_Soldier_TL_F",
		"B_G_Soldier_F","B_G_Soldier_SL_F","B_G_Soldier_TL_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
BA32 setGroupIDGlobal ["A 3 2"];
BA32 addVehicle BA32VA;
BA32 addVehicle BA32VB;
Sleep 0.2;

BIS_fnc_addSupportLink

{
	GM HCSetGroup [_x,""];
} foreach [BA11, BA12, BA13];

{
	_Leader = leader _x;
	_Leader moveInDriver BA11V;
	{
		_x moveInAny BA11V;
	} foreach units _x;
} foreach [BA11];

SupportRequester - BA6R
CustomHQ - BFDO
SupportProvider - BA42R
Mk6 Mortar - BA42MA

SR_Module = "SupportRequester" createVehicle _RP1;
SP_Module = "SupportProvider" createVehicle _RP2;
SR_Module SynchronizeObjectsAdd [MortarMan];
[HQ, SR_Module, SP_Module] call BIS_fnc_addSupportLink;

BA6R = "SupportRequester" createVehicle _RPBA42;
BA42R = "SupportProvider" createVehicle _RPBA42;
BA42R SynchronizeObjectsAdd [BA42MA];
[GM, BA6R, BA42R] call BIS_fnc_addSupportLink;

BA42R SynchronizeObjectsAdd [BA42MA];

[GM, BA6R, BA42R] call BIS_fnc_addSupportLink;

_LogicSide = createGroup sideLogic;
BHCC = _LogicSide createUnit ["HighCommand",_RPBB11,[],0,"NONE"];
BHCC setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BHCS = _LogicSide createUnit ["HighCommandSubordinate",_RPBB11,[],0,"NONE"];
BHCS setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BA42R = _LogicSide createUnit ["SupportProvider",_RPBA42,[],0,"NONE"];
BA42R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BA6R = _LogicSide createUnit ["SupportRequester",_RPBA42,[],0,"NONE"];
BA6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BA42R SynchronizeObjectsAdd [BA42MA];
[GM, BA6R, BA42R] call BIS_fnc_addSupportLink;

_LogicSide = createCenter sideLogic;
_LogicSide = createGroup _LogicSide;
_RPBA41 = [0,0,0];
_RPBA42 = [0,0,0];

BA42R = _LogicSide createUnit ["SupportProvider_Artillery",_RPBA42,[],0,"NONE"]; 
BA42R setVariable ['BIS_fnc_initModules_disableAutoActivation', false]; 
BA6R = _LogicSide createUnit ["SupportRequester",_RPBA41,[],0,"NONE"]; 
BA6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false]; 
_type = "Artillery"; 
BA6R setVariable [(format ["BIS_SUPP_limit_%1", _type]), 10];
GM synchronizeObjectsAdd [BA6R]; 
BA6R synchronizeObjectsAdd [BA42R]; 
BA42R synchronizeObjectsAdd [BA42MA]; 
[GM, BA6R, BA42R] call BIS_fnc_addSupportLink;

BA42R = _LogicSide createUnit ["SupportProvider_Artillery",_RPBA42,[],0,"NONE"];
BA42R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BA6R = _LogicSide createUnit ["SupportRequester",_RPBA41,[],0,"NONE"];
BA6R setVariable ['BIS_fnc_initModules_disableAutoActivation', false];
BA6R setVariable [(format ["BIS_SUPP_limit_%1", "Artillery"]), 10];
GM synchronizeObjectsAdd [BA6R];
BA6R synchronizeObjectsAdd [BA42R];
BA42R synchronizeObjectsAdd [BA42MA];
[GM, BA6R, BA42R] call BIS_fnc_addSupportLink;


/* Extra Scratchwork

BA6R setVariable ["BIS_SUPP_limit_Artillery", 1];
{
	BA6R setVariable [format ["BIS_SUPP_limit_%1", _x], 0];
} forEach [
        "CAS_Heli",
        "CAS_Bombing",
        "UAV",
        "Drop",
        "Transport"
];


BA6R setVariable ["BIS_SUPP_limit_Artillery", 0];
BA6R setVariable ["BIS_SUPP_limit_CAS_Bombing", 0];
BA6R setVariable ["BIS_SUPP_limit_CAS_Heli", 0];
BA6R setVariable ["BIS_SUPP_limit_Drop", 0];
BA6R setVariable ["BIS_SUPP_limit_Transport", 0];
BA6R setVariable ["BIS_SUPP_limit_UAV", 0];

SupportProvider_Artillery

mat ["BIS_SUPP_limit_%1_total", _type], _total]
} forEach [
"Artillery",

_logic = _this param [0,objNull,[objNull]];

_this execVM "A3\modules_f\supports\init_provider.sqf";

_logic = _this param [0,objNull,[objNull]];

_this execVM "A3\modules_f\supports\init_requester.sqf";

BA42MA - Mortar.
BA42R - Mortar radio.
BA6R - HQ radio.
GM - Game Master.

BA42MAG = units BA42 select 10;
BA42MAGM = vehicle BA42MAG;

_type = "Artillery";
support_requester setVariable [(format ["BIS_SUPP_limit_%1", _type]), 10];

//Deprecated sector experiments.
//Sector Control Modules
/*
1. Sectors are created in editor designated zones.
2. Sectors are neutral and visible to players only on the map, and marked with a neutral symbol.
3. A sector is captured by occupying the sector with at least x units and maintaining 0.7 majority.
4. When a sector is captured, it displays the occupying force's flag to only the occupying force.
5. When a force holds over .7 of the sectors, the other side will bleed tickets.
6. When a force reaches 0 tickets, their forces will stop respawning.
*/

/* Notes
ModuleSector_F
SideOPFOR_F
ModuleBleedTickets_F
ModuleRespawnTickets_F
SideResistance_F
SideBLUFOR_F
ModuleMPTypeSectorControl_F
*/



/* Notes
ModuleSector_F
SideOPFOR_F
ModuleBleedTickets_F
ModuleRespawnTickets_F
SideResistance_F
SideBLUFOR_F
ModuleMPTypeSectorControl_F

/* Control Sector
A zone which can be captured,
contributes and deducts tickets from appropriate pools,
and marks the map appropriately without gamey notification.

To do:
Remove redundancy for multiple zones.
Multiple zones should be generated based on map features and size.
Have zones trigger respawn waves when captured or lost.
Have zones bleed tickets based on ownership ratio,
rather than direct ticket addition and subtraction.
*/

/*Script ScratchWork
  https://community.bistudio.com/wiki/Function
  https://community.bistudio.com/wiki/Arma_3:_Writing_a_Function
  https://community.bistudio.com/wiki/Control_Structures
  https://community.bistudio.com/wiki/sleep
  https://community.bistudio.com/wiki/while
  https://community.bistudio.com/wiki/Operators
  https://community.bistudio.com/wiki/and
  https://community.bistudio.com/wiki/if
  https://community.bistudio.com/wiki/or
*/

//PassToHCs.SQF
/*
 * passToHCs.sqf
 *
 * In the mission editor, name the Headless Clients "HC", "HC2", "HC3" without the quotes
 *
 * In the mission init.sqf, call passToHCs.sqf with:
 * execVM "passToHCs.sqf";
 *
 * It seems that the dedicated server and headless client processes never use more than 20-22% CPU each.
 * With a dedicated server and 3 headless clients, that's about 88% CPU with 10-12% left over.  Far more efficient use of your processing power.
 *
 */

 /*

if (!isServer) exitWith {};

diag_log "passToHCs: Started";

waitUntil {!isNil "HC"};
waitUntil {!isNull HC};

_HC_ID = -1; // Will become the Client ID of HC
_HC2_ID = -1; // Will become the Client ID of HC2
_HC3_ID = -1; // Will become the Client ID of HC3
rebalanceTimer = 60;  // Rebalance sleep timer in seconds
cleanUpThreshold = 50; // Threshold of number of dead bodies + destroyed vehicles before forcing a clean up

diag_log format["passToHCs: First pass will begin in %1 seconds", rebalanceTimer];

while {true} do {
  // Rebalance every rebalanceTimer seconds to avoid hammering the server
  sleep rebalanceTimer;

  // Do not enable load balancing unless more than one HC is present
  // Leave this variable false, we'll enable it automatically under the right conditions  
  _loadBalance = false;

   // Get HC Client ID else set variables to null
   try {
    _HC_ID = owner HC;

    if (_HC_ID > 2) then {
      diag_log format ["passToHCs: Found HC with Client ID %1", _HC_ID];
    } else { 
      diag_log "passToHCs: [WARN] HC disconnected";

      HC = objNull;
      _HC_ID = -1;
    };
  } catch { diag_log format ["passToHCs: [ERROR] [HC] %1", _exception]; HC = objNull; _HC_ID = -1; };

  // Get HC2 Client ID else set variables to null
  if (!isNil "HC2") then {
    try {
      _HC2_ID = owner HC2;

      if (_HC2_ID > 2) then {
        diag_log format ["passToHCs: Found HC2 with Client ID %1", _HC2_ID];
      } else { 
        diag_log "passToHCs: [WARN] HC2 disconnected";

        HC2 = objNull;
        _HC2_ID = -1;
      };
    } catch { diag_log format ["passToHCs: [ERROR] [HC2] %1", _exception]; HC2 = objNull; _HC2_ID = -1; };
  };

  // Get HC3 Client ID else set variables to null
  if (!isNil "HC3") then {
    try {
      _HC3_ID = owner HC3;

      if (_HC3_ID > 2) then {
        diag_log format ["passToHCs: Found HC2 with Client ID %1", _HC3_ID];
      } else { 
        diag_log "passToHCs: [WARN] HC3 disconnected";

        HC3 = objNull;
        _HC3_ID = -1;
      };
    } catch { diag_log format ["passToHCs: [ERROR] [HC3] %1", _exception]; HC3 = objNull; _HC3_ID = -1; };
  };

  // If no HCs present, wait for HC to rejoin
  if ( (isNull HC) && (isNull HC2) && (isNull HC3) ) then { waitUntil {!isNull HC}; };  

  // Check to auto enable Round-Robin load balancing strategy
  if ( (!isNull HC && !isNull HC2) || (!isNull HC && !isNull HC3) || (!isNull HC2 && !isNull HC3) ) then { _loadBalance = true; };

  if ( _loadBalance ) then {
    diag_log "passToHCs: Starting load-balanced transfer of AI groups to HCs";
  } else {
    // No load balancing
    diag_log "passToHCs: Starting transfer of AI groups to HC";
  };

  // Determine first HC to start with
  _currentHC = 0;

  if (!isNull HC) then { _currentHC = 1; } else { 
    if (!isNull HC2) then { _currentHC = 2; } else { _currentHC = 3; };
  };

  // Pass the AI
  _numTransfered = 0;
  {
    _swap = true;

    // If a player is in this group, don't swap to an HC
    { if (isPlayer _x) then { _swap = false; }; } forEach (units _x);

    // If load balance enabled, round robin between the HCs - else pass all to HC
    if ( _swap ) then {
      _rc = false;

      if ( _loadBalance ) then {
        switch (_currentHC) do {
          case 1: { _rc = _x setGroupOwner _HC_ID; if (!isNull HC2) then { _currentHC = 2; } else { _currentHC = 3; }; };
          case 2: { _rc = _x setGroupOwner _HC2_ID; if (!isNull HC3) then { _currentHC = 3; } else { _currentHC = 1; }; };
          case 3: { _rc = _x setGroupOwner _HC3_ID; if (!isNull HC) then { _currentHC = 1; } else { _currentHC = 2; }; };
          default { diag_log format["passToHCs: [ERROR] No Valid HC to pass to.  _currentHC = %1", _currentHC]; };
        };
      } else {
        switch (_currentHC) do {
          case 1: { _rc = _x setGroupOwner _HC_ID; };
          case 2: { _rc = _x setGroupOwner _HC2_ID; };
          case 3: { _rc = _x setGroupOwner _HC3_ID; };
          default { diag_log format["passToHCs: [ERROR] No Valid HC to pass to.  _currentHC = %1", _currentHC]; };
        };
      };

      // If the transfer was successful, count it for accounting and diagnostic information
      if ( _rc ) then { _numTransfered = _numTransfered + 1; };
    };
  } forEach (allGroups);

  if (_numTransfered > 0) then {
    // More accounting and diagnostic information

    diag_log format ["passToHCs: Transfered %1 AI groups to HC(s)", _numTransfered];

    _numHC = 0;
    _numHC2 = 0;
    _numHC3 = 0;

    {
      switch (owner ((units _x) select 0)) do {
        case _HC_ID: { _numHC = _numHC + 1; };
        case _HC2_ID: { _numHC2 = _numHC2 + 1; };
        case _HC3_ID: { _numHC3 = _numHC3+ 1; };
      };
    } forEach (allGroups);

    if (_numHC > 0) then { diag_log format ["passToHCs: %1 AI groups currently on HC", _numHC]; };
    if (_numHC2 > 0) then { diag_log format ["passToHCs: %1 AI groups currently on HC2", _numHC2]; };
    if (_numHC3 > 0) then { diag_log format ["passToHCs: %1 AI groups currently on HC3", _numHC3]; };

    diag_log format ["passToHCs: %1 AI groups total across all HC(s)", (_numHC + _numHC2 + _numHC3)];
  } else {
    diag_log "passToHCs: No rebalance or transfers required this round";
  };

  // Force clean up dead bodies and destroyed vehicles
  if (count allDead > cleanUpThreshold) then {
    _numDeleted = 0;
    {
      deleteVehicle _x;

      _numDeleted = _numDeleted + 1;
    } forEach allDead;

    diag_log format ["passToHCs: Cleaned up %1 dead bodies/destroyed vehicles", _numDeleted];
  };
};

/*
//Migrate to Headless Clients
//Null = [this, HC#] execvm "Migrate.sqf";

If (!isserver) exitwith {};
If (!ismultiplayer) exitwith {};
Waituntil {time > 2};

_unit = _this select 0;
_HC = _this select 1;

If (isnull _HC) exitwith {};

_HCid = owner _HC;
_unitgroup = group _unit;

_unitgroup setgroupowner _HCid;
© 2022 GitHub, Inc.
Terms
Privacy
Sec