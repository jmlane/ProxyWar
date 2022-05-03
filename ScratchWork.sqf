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

//Sectors
//Ticket Build Method (Ghetto)
If (isServer) then {

	//Sector_1
	If (!isNil "Sector_1") then {
		_Flag_1 = createMarker ['Objective_1', markerPos 'Sector_1'];
		_Flag_1 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
		_SectorAAF_1 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_1 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_1 setTriggerInterval 5;
		_SectorAAF_1 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_1';
				_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
		_SectorFIA_1 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_1 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_1 setTriggerInterval 5;
		_SectorFIA_1 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_1';
				_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_2
	If (!isNil "Sector_2") then {
		_Flag_2 = createMarker ['Objective_2', markerPos 'Sector_2'];
		_Flag_2 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
		_SectorAAF_2 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_2 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_2 setTriggerInterval 5;
		_SectorAAF_2 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_2';
				_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
		_SectorFIA_2 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_2 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_2 setTriggerInterval 5;
		_SectorFIA_2 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_2';
				_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_3
	If (!isNil "Sector_3") then {
		_Flag_3 = createMarker ['Objective_3', markerPos 'Sector_3'];
		_Flag_3 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
		_SectorAAF_3 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_3 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_3 setTriggerInterval 5;
		_SectorAAF_3 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_3';
				_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
		_SectorFIA_3 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_3 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_3 setTriggerInterval 5;
		_SectorFIA_3 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_3';
				_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_4
	If (!isNil "Sector_4") then {
		_Flag_4 = createMarker ['Objective_4', markerPos 'Sector_4'];
		_Flag_4 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
		_SectorAAF_4 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_4 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_4 setTriggerInterval 5;
		_SectorAAF_4 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_4';
				_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
		_SectorFIA_4 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_4 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_4 setTriggerInterval 5;
		_SectorFIA_4 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_4';
				_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_5
	If (!isNil "Sector_5") then {
		_Flag_5 = createMarker ['Objective_5', markerPos 'Sector_5'];
		_Flag_5 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
		_SectorAAF_5 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_5 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_5 setTriggerInterval 5;
		_SectorAAF_5 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_5';
				_Flag = createMarker ['Objective_5', markerPos 'Sector_5'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
		_SectorFIA_5 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_5 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_5 setTriggerInterval 5;
		_SectorFIA_5 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_5';
				_Flag = createMarker ['Objective_5', markerPos 'Sector_5'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_6
	If (!isNil "Sector_6") then {
		_Flag_6 = createMarker ['Objective_6', markerPos 'Sector_6'];
		_Flag_6 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
		_SectorAAF_6 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_6 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_6 setTriggerInterval 5;
		_SectorAAF_6 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_6';
				_Flag = createMarker ['Objective_6', markerPos 'Sector_6'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
		_SectorFIA_6 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_6 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_6 setTriggerInterval 5;
		_SectorFIA_6 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_6';
				_Flag = createMarker ['Objective_6', markerPos 'Sector_6'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_7
	If (!isNil "Sector_7") then {
		_Flag_7 = createMarker ['Objective_7', markerPos 'Sector_7'];
		_Flag_7 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
		_SectorAAF_7 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_7 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_7 setTriggerInterval 5;
		_SectorAAF_7 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_7';
				_Flag = createMarker ['Objective_7', markerPos 'Sector_7'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
		_SectorFIA_7 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_7 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_7 setTriggerInterval 5;
		_SectorFIA_7 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_7';
				_Flag = createMarker ['Objective_7', markerPos 'Sector_7'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_8
	If (!isNil "Sector_8") then {
		_Flag_8 = createMarker ['Objective_8', markerPos 'Sector_8'];
		_Flag_8 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
		_SectorAAF_8 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_8 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_8 setTriggerInterval 5;
		_SectorAAF_8 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_8';
				_Flag = createMarker ['Objective_8', markerPos 'Sector_8'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
		_SectorFIA_8 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_8 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_8 setTriggerInterval 5;
		_SectorFIA_8 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_8';
				_Flag = createMarker ['Objective_8', markerPos 'Sector_8'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_9
	If (!isNil "Sector_9") then {
		_Flag_9 = createMarker ['Objective_9', markerPos 'Sector_9'];
		_Flag_9 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
		_SectorAAF_9 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_9 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_9 setTriggerInterval 5;
		_SectorAAF_9 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_9';
				_Flag = createMarker ['Objective_9', markerPos 'Sector_9'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
		_SectorFIA_9 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_9 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_9 setTriggerInterval 5;
		_SectorFIA_9 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_9';
				_Flag = createMarker ['Objective_9', markerPos 'Sector_9'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_10
	If (!isNil "Sector_10") then {
		_Flag_10 = createMarker ['Objective_10', markerPos 'Sector_10'];
		_Flag_10 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
		_SectorAAF_10 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_10 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_10 setTriggerInterval 5;
		_SectorAAF_10 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_10';
				_Flag = createMarker ['Objective_10', markerPos 'Sector_10'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
		_SectorFIA_10 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_10 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_10 setTriggerInterval 5;
		_SectorFIA_10 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_10';
				_Flag = createMarker ['Objective_10', markerPos 'Sector_10'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_11
	If (!isNil "Sector_11") then {
		_Flag_11 = createMarker ['Objective_11', markerPos 'Sector_11'];
		_Flag_11 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
		_SectorAAF_11 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_11 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_11 setTriggerInterval 5;
		_SectorAAF_11 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_11';
				_Flag = createMarker ['Objective_11', markerPos 'Sector_11'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
		_SectorFIA_11 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_11 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_11 setTriggerInterval 5;
		_SectorFIA_11 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_11';
				_Flag = createMarker ['Objective_11', markerPos 'Sector_11'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_12
	If (!isNil "Sector_12") then {
		_Flag_12 = createMarker ['Objective_12', markerPos 'Sector_12'];
		_Flag_12 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
		_SectorAAF_12 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_12 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_12 setTriggerInterval 5;
		_SectorAAF_12 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_12';
				_Flag = createMarker ['Objective_12', markerPos 'Sector_12'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
		_SectorFIA_12 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_12 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_12 setTriggerInterval 5;
		_SectorFIA_12 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_12';
				_Flag = createMarker ['Objective_12', markerPos 'Sector_12'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_13
	If (!isNil "Sector_13") then {
		_Flag_13 = createMarker ['Objective_13', markerPos 'Sector_13'];
		_Flag_13 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
		_SectorAAF_13 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_13 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_13 setTriggerInterval 5;
		_SectorAAF_13 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_13';
				_Flag = createMarker ['Objective_13', markerPos 'Sector_13'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
		_SectorFIA_13 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_13 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_13 setTriggerInterval 5;
		_SectorFIA_13 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_13';
				_Flag = createMarker ['Objective_13', markerPos 'Sector_13'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_14
	If (!isNil "Sector_14") then {
		_Flag_14 = createMarker ['Objective_14', markerPos 'Sector_14'];
		_Flag_14 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
		_SectorAAF_14 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_14 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_14 setTriggerInterval 5;
		_SectorAAF_14 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_14';
				_Flag = createMarker ['Objective_14', markerPos 'Sector_14'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
		_SectorFIA_14 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_14 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_14 setTriggerInterval 5;
		_SectorFIA_14 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_14';
				_Flag = createMarker ['Objective_14', markerPos 'Sector_14'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_15
	If (!isNil "Sector_15") then {
		_Flag_15 = createMarker ['Objective_15', markerPos 'Sector_15'];
		_Flag_15 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
		_SectorAAF_15 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_15 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_15 setTriggerInterval 5;
		_SectorAAF_15 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_15';
				_Flag = createMarker ['Objective_15', markerPos 'Sector_15'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
		_SectorFIA_15 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_15 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_15 setTriggerInterval 5;
		_SectorFIA_15 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_15';
				_Flag = createMarker ['Objective_15', markerPos 'Sector_15'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_16
	If (!isNil "Sector_16") then {
		_Flag_16 = createMarker ['Objective_16', markerPos 'Sector_16'];
		_Flag_16 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
		_SectorAAF_16 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_16 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_16 setTriggerInterval 5;
		_SectorAAF_16 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_16';
				_Flag = createMarker ['Objective_16', markerPos 'Sector_16'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
		_SectorFIA_16 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_16 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_16 setTriggerInterval 5;
		_SectorFIA_16 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_16';
				_Flag = createMarker ['Objective_16', markerPos 'Sector_16'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_17
	If (!isNil "Sector_17") then {
		_Flag_17 = createMarker ['Objective_17', markerPos 'Sector_17'];
		_Flag_17 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
		_SectorAAF_17 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_17 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_17 setTriggerInterval 5;
		_SectorAAF_17 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_17';
				_Flag = createMarker ['Objective_17', markerPos 'Sector_17'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
		_SectorFIA_17 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_17 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_17 setTriggerInterval 5;
		_SectorFIA_17 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_17';
				_Flag = createMarker ['Objective_17', markerPos 'Sector_17'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_18
	If (!isNil "Sector_18") then {
		_Flag_18 = createMarker ['Objective_18', markerPos 'Sector_18'];
		_Flag_18 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
		_SectorAAF_18 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_18 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_18 setTriggerInterval 5;
		_SectorAAF_18 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_18';
				_Flag = createMarker ['Objective_18', markerPos 'Sector_18'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
		_SectorFIA_18 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_18 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_18 setTriggerInterval 5;
		_SectorFIA_18 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_18';
				_Flag = createMarker ['Objective_18', markerPos 'Sector_18'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_19
	If (!isNil "Sector_19") then {
		_Flag_19 = createMarker ['Objective_19', markerPos 'Sector_19'];
		_Flag_19 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
		_SectorAAF_19 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_19 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_19 setTriggerInterval 5;
		_SectorAAF_19 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_19';
				_Flag = createMarker ['Objective_19', markerPos 'Sector_19'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
		_SectorFIA_19 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_19 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_19 setTriggerInterval 5;
		_SectorFIA_19 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_19';
				_Flag = createMarker ['Objective_19', markerPos 'Sector_19'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_20
	If (!isNil "Sector_20") then {
		_Flag_20 = createMarker ['Objective_20', markerPos 'Sector_20'];
		_Flag_20 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
		_SectorAAF_20 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_20 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_20 setTriggerInterval 5;
		_SectorAAF_20 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_20';
				_Flag = createMarker ['Objective_20', markerPos 'Sector_20'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
		_SectorFIA_20 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_20 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_20 setTriggerInterval 5;
		_SectorFIA_20 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_20';
				_Flag = createMarker ['Objective_20', markerPos 'Sector_20'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_21
	If (!isNil "Sector_21") then {
		_Flag_21 = createMarker ['Objective_21', markerPos 'Sector_21'];
		_Flag_21 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
		_SectorAAF_21 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_21 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_21 setTriggerInterval 5;
		_SectorAAF_21 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_21';
				_Flag = createMarker ['Objective_21', markerPos 'Sector_21'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
		_SectorFIA_21 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_21 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_21 setTriggerInterval 5;
		_SectorFIA_21 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_21';
				_Flag = createMarker ['Objective_21', markerPos 'Sector_21'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_22
	If (!isNil "Sector_22") then {
		_Flag_22 = createMarker ['Objective_22', markerPos 'Sector_22'];
		_Flag_22 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
		_SectorAAF_22 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_22 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_22 setTriggerInterval 5;
		_SectorAAF_22 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_22';
				_Flag = createMarker ['Objective_22', markerPos 'Sector_22'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
		_SectorFIA_22 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_22 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_22 setTriggerInterval 5;
		_SectorFIA_22 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_22';
				_Flag = createMarker ['Objective_22', markerPos 'Sector_22'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_23
	If (!isNil "Sector_23") then {
		_Flag_23 = createMarker ['Objective_23', markerPos 'Sector_23'];
		_Flag_23 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
		_SectorAAF_23 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_23 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_23 setTriggerInterval 5;
		_SectorAAF_23 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_23';
				_Flag = createMarker ['Objective_23', markerPos 'Sector_23'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
		_SectorFIA_23 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_23 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_23 setTriggerInterval 5;
		_SectorFIA_23 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_23';
				_Flag = createMarker ['Objective_23', markerPos 'Sector_23'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};

	//Sector_24
	If (!isNil "Sector_24") then {
		_Flag_24 = createMarker ['Objective_24', markerPos 'Sector_24'];
		_Flag_24 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
		_SectorAAF_24 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_24 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_24 setTriggerInterval 5;
		_SectorAAF_24 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_24';
				_Flag = createMarker ['Objective_24', markerPos 'Sector_24'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +120;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
		_SectorFIA_24 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_24 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_24 setTriggerInterval 5;
		_SectorFIA_24 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_24';
				_Flag = createMarker ['Objective_24', markerPos 'Sector_24'];
				_Flag setMarkerType 'Flag_Altis';
				BluTickets = BluTickets +120;
				PublicVariable 'BluTickets';
			},""
		];
	};
};

/* Ticket Bleed Method (WIP)
If (isServer) then {
	_Flag_1 = createMarker ['Objective_1', markerPos 'Sector_1'];
	_Flag_1 setMarkerType 'hd_objective_noShadow';

	//Red Trigger 1
	_SectorAAF_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorAAF_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_1 setTriggerArea [100, 100, getDir this, true];
	_SectorAAF_1 setTriggerInterval 5;
	_SectorAAF_1 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			DeleteMarker 'Objective_1';
			_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
			_Flag setMarkerType 'Flag_Altis';
			private _lastOwner = thisTrigger getVariable ['currentOwner', sideUnknown];
			If (_lastOwner == West) then {
				BluZones = BluZones -1;
				PublicVariable 'BluZones';
				If (BluTickets < 1) then {
					'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
				};
			};
			thisTrigger setVariable ["currentOwner", East, true];
			RedZones = RedZones +1;
			PublicVariable 'RedZones';
        },""
	];

	//Blue Trigger 1
	_SectorFIA_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorFIA_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_1 setTriggerArea [100, 100, getDir this, true];
	_SectorFIA_1 setTriggerInterval 5;
	_SectorFIA_1 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			DeleteMarker 'Objective_1';
			_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
			_Flag setMarkerType 'Flag_FIA';
			private _lastOwner = thisTrigger getVariable ['currentOwner', sideUnknown];
			If (_lastOwner == East) then {
				RedZones = RedZones -1;
				PublicVariable 'RedZones';
				If (RedTickets < 1) then {
					'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
				};
			};
			thisTrigger setVariable ["currentOwner", West, true];
			BluZones = BluZones +1;
			PublicVariable 'BluZones';
        },""
	];
};

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