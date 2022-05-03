/*

Spawns local combat elements.

Example: RA11 - First squad, first platoon, alpha company, redfor.

B/R - Blufor/Redfor/Opfor.
A/B/C/D - Company designation (A, B, C, line companies, D Headquarters Company).
1, 2, 3, 4 - Platoon designation (1, 2, 3, line platoons, 4, weapons/fire support platoon).
1, 2, 3 - Section or squad designation.

AA/TAA - Assembly Area/Tactical Assembly Area
RP - Rally Point/Release Point
ORP - Objective Rally Point
Vic - Vehicle (Victor)

Typical Load Order - Driver, Commander, Gunner, Passengers.
Driver must be group leader (at least before Arma 2.0, test required).
*/

_RRPB11 = RRPB getPos [15, (getDir RRPB) + 090];
_RRPB12 = RRPB getPos [21, (getDir RRPB) + 135];
_RRPB13 = RRPB getPos [34, (getDir RRPB) + 154];
_RRPB21 = getPos RRPB;
_RRPB22 = RRPB getPos [15, (getDir RRPB) + 180];
_RRPB23 = RRPB getPos [30, (getDir RRPB) + 180];
_RRPB31A = RRPB getPos [15, (getDir RRPB) + 270];
_RRPB31B = RRPB getPos [21, (getDir RRPB) + 225];
_RRPB32A = RRPB getPos [30, (getDir RRPB) + 270];
_RRPB32B = RRPB getPos [34, (getDir RRPB) + 244];
_RRPB41 = RRPB getPos [34, (getDir RRPB) + 207];
_RRPB42 = RRPB getPos [42, (getDir RRPB) + 225];

RB11V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPB11;
RB11V setDir (direction RRPB);
Sleep 0.2;

RB12V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPB12;
RB12V setDir (direction RRPB);
Sleep 0.2;

RB13V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPB13;
RB13V setDir (direction RRPB);
Sleep 0.2;

RB21V = "I_APC_tracked_03_cannon_F" createVehicle _RRPB21;
RB21V setDir (direction RRPB);
Sleep 0.2;

RB22V = "I_APC_tracked_03_cannon_F" createVehicle _RRPB22;
RB22V setDir (direction RRPB);
Sleep 0.2;

RB23V = "I_APC_tracked_03_cannon_F" createVehicle _RRPB23;
RB23V setDir (direction RRPB);
Sleep 0.2;

RB31VA = "I_MBT_03_cannon_F" createVehicle _RRPB31A;
RB31VA setDir (direction RRPB);
Sleep 0.2;

RB31VB = "I_MBT_03_cannon_F" createVehicle _RRPB31B;
RB31VB setDir (direction RRPB);
Sleep 0.2;

RB32VA = "I_MBT_03_cannon_F" createVehicle _RRPB32A;
RB32VA setDir (direction RRPB);
Sleep 0.2;

RB32VB = "I_MBT_03_cannon_F" createVehicle _RRPB32B;
RB32VB setDir (direction RRPB);
Sleep 0.2;

RB41V = "I_Truck_02_transport_F" createVehicle _RRPB41;
RB41V setDir (direction RRPB);
Sleep 0.2;

RB42V = "I_Truck_02_transport_F" createVehicle _RRPB42;
RB42V setDir (direction RRPB);
Sleep 0.2;

RB42MA = "I_G_Mortar_01_F" createVehicle _RRPB42;
Sleep 0.2;

RB42MA attachto [RB42V, [0,-0.5,0]];
Sleep 0.2;

RB42MB = "I_G_Mortar_01_F" createVehicle _RRPB42;
Sleep 0.2;

RB42MB attachto [RB42V, [0,-2.5,0]];
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [RB11V, RB12V, RB13V, RB21V, RB22V, RB23V, RB31VA, RB31VB, RB32VA, RB32VB, RB41V, RB42V];
Sleep 0.2;

RB11 = [_RRPB11, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB11 setGroupIDGlobal ["B 1 1"];
RB11 addVehicle RB11V;
Sleep 0.2;

RB12 = [_RRPB12, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB12 setGroupIDGlobal ["B 1 2"];
RB12 addVehicle RB12V;
Sleep 0.2;

RB13 = [_RRPB13, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB13 setGroupIDGlobal ["B 1 3"];
RB13 addVehicle RB13V;
Sleep 0.2;

RB21 = [_RRPB21, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_AR_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB21 setGroupIDGlobal ["B 2 1"];
RB21 addVehicle RB21V;
Sleep 0.2;

RB22 = [_RRPB22, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_AR_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Sergeant",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB22 setGroupIDGlobal ["B 2 2"];
RB22 addVehicle RB22V;
Sleep 0.2;

RB23 = [_RRPB23, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_medic_F","O_G_Soldier_AR_F",
		"O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_AR_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Sergeant",
		"Corporal","Private","Private",
		"Corporal","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB23 setGroupIDGlobal ["B 2 3"];
RB23 addVehicle RB23V;
Sleep 0.2;

RB31 = [_RRPB31A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_TL_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB31 setGroupIDGlobal ["B 3 1"];
RB31 addVehicle RB31VA;
RB31 addVehicle RB31VB;
Sleep 0.2;

RB32 = [_RRPB32A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_TL_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB32 setGroupIDGlobal ["B 3 2"];
RB32 addVehicle RB32VA;
RB32 addVehicle RB32VB;
Sleep 0.2;

RB41 = [_RRPB41, EAST, [
		"O_G_officer_F","O_G_engineer_F",
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F","O_G_Soldier_LAT_F","O_G_Soldier_LAT_F",
		"O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F","O_G_Soldier_lite_F","O_G_Soldier_lite_F"
	],[],[
		"Lieutenant","Private",
		"Sergeant","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB41 setGroupIDGlobal ["B 4 1"];
RB41 addVehicle RB41V;
Sleep 0.2;

RB42 = [_RRPB42, EAST, [
		"O_G_officer_F","O_G_engineer_F",
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_LAT_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_TL_F","O_G_Soldier_LAT_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Sergeant","Private",
		"Corporal","Private","Private",
		"Corporal","Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RB42 setGroupIDGlobal ["B 4 2"];
RB42 addVehicle RB42V;
RB42 addVehicle RB42MA;
RB42 addVehicle RB42MB;
Sleep 0.2;

Units RB42 select 10 moveInAny RB42MA;
Units RB42 select 11 moveInAny RB42MB;
Sleep 0.2;

{
	{
		_equip = _x spawn ASG_FNC_RLIGear;
		waituntil {scriptDone _equip};
		_x addEventHandler ["Killed", {
				RedTickets = RedTickets -1;
				PublicVariable 'RedTickets';
				If (RedTickets < 1) then {
					'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
				};
			}
		];
	} foreach units _x;
} foreach [RB11, RB12, RB13, RB21, RB22, RB23, RB31, RB32, RB41, RB42];

{
	{
		_x addEventHandler ["Killed", {
			RB11Grave pushback (_this select 0);
			PublicVariable "RB11Grave";
		}];
	} foreach units _x;
} foreach [RB11];

{
	{
		_x addEventHandler ["Killed", {
			RB12Grave pushback (_this select 0);
			PublicVariable "RB12Grave";
		}];
	} foreach units _x;
} foreach [RB12];

{
	{
		_x addEventHandler ["Killed", {
			RB13Grave pushback (_this select 0);
			PublicVariable "RB13Grave";
		}];
	} foreach units _x;
} foreach [RB13];

{
	{
		_x addEventHandler ["Killed", {
			RB21Grave pushback (_this select 0);
			PublicVariable "RB21Grave";
		}];
	} foreach units _x;
} foreach [RB21];

{
	{
		_x addEventHandler ["Killed", {
			RB22Grave pushback (_this select 0);
			PublicVariable "RB22Grave";
		}];
	} foreach units _x;
} foreach [RB22];

{
	{
		_x addEventHandler ["Killed", {
			RB23Grave pushback (_this select 0);
			PublicVariable "RB23Grave";
		}];
	} foreach units _x;
} foreach [RB23];

{
	{
		_x addEventHandler ["Killed", {
			RB31Grave pushback (_this select 0);
			PublicVariable "RB31Grave";
		}];
	} foreach units _x;
} foreach [RB31];

{
	{
		_x addEventHandler ["Killed", {
			RB32Grave pushback (_this select 0);
			PublicVariable "RB32Grave";
		}];
	} foreach units _x;
} foreach [RB32];

{
	{
		_x addEventHandler ["Killed", {
			RB31Grave pushback (_this select 0);
			PublicVariable "RB31Grave";
		}];
	} foreach units _x;
} foreach [RB41];

{
	{
		_x addEventHandler ["Killed", {
			RB32Grave pushback (_this select 0);
			PublicVariable "RB32Grave";
		}];
	} foreach units _x;
} foreach [RB42];

_WPRB11 = RB11 addWaypoint [RB11V, 0];
_WPRB11 setWaypointType "GetIn";

_WPRB12 = RB12 addWaypoint [RB12V, 0];
_WPRB12 setWaypointType "GetIn";

_WPRB13 = RB13 addWaypoint [RB13V, 0];
_WPRB13 setWaypointType "GetIn";

_WPRB21 = RB21 addWaypoint [RB21V, 0];
_WPRB21 setWaypointType "GetIn";

_WPRB22 = RB22 addWaypoint [RB22V, 0];
_WPRB22 setWaypointType "GetIn";

_WPRB23 = RB23 addWaypoint [RB23V, 0];
_WPRB23 setWaypointType "GetIn";

_WPRB31 = RB31 addWaypoint [RB31VA, 0];
_WPRB31 setWaypointType "GetIn";
_WPRB31 setWaypointFormation  "File";

_WPRB32 = RB32 addWaypoint [RB32VA, 0];
_WPRB32 setWaypointType "GetIn";
_WPRB31 setWaypointFormation  "File";

_WPRB41 = RB41 addWaypoint [RB41V, 0];
_WPRB41 setWaypointType "GetIn";

_WPRB42 = RB42 addWaypoint [RB42V, 0];
_WPRB42 setWaypointType "GetIn";