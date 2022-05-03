/*
Spawns local combat elements.

Example: BA11 - First squad, first platoon, Alpha company, blufor.

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

_RRPD11 = RRPD getPos [34, (getDir RRPD) + 064];
_RRPD12 = RRPD getPos [30, (getDir RRPD) + 090];
_RRPD13 = RRPD getPos [34, (getDir RRPD) + 116];
_RRPD21 = RRPD getPos [21, (getDir RRPD) + 045];
_RRPD22 = RRPD getPos [15, (getDir RRPD) + 090];
_RRPD23 = RRPD getPos [21, (getDir RRPD) + 135];
_RRPD31A = RRPD getPos [15, (getDir RRPD) + 000];
_RRPD31B = getPos RRPD;
_RRPD31C = RRPD getPos [15, (getDir RRPD) + 180];
_RRPD32A = RRPD getPos [21, (getDir RRPD) + 315];
_RRPD32B = RRPD getPos [15, (getDir RRPD) + 270];
_RRPD32C = RRPD getPos [21, (getDir RRPD) + 225];
_RRPD41A = RRPD getPos [34, (getDir RRPD) + 296];
_RRPD41B = RRPD getPos [30, (getDir RRPD) + 270];
_RRPD41C = RRPD getPos [34, (getDir RRPD) + 244];
_RRPD42A = RRPD getPos [47, (getDir RRPD) + 288];
_RRPD42B = RRPD getPos [45, (getDir RRPD) + 270];
_RRPD42C = RRPD getPos [47, (getDir RRPD) + 252];

RD11V = "I_Truck_02_covered_F" createVehicle _RRPD11;
RD11V setDir (direction RRPD);
Sleep 0.2;

RD12V = "I_Truck_02_covered_F" createVehicle _RRPD12;
RD12V setDir (direction RRPD);
Sleep 0.2;

RD13V = "I_Truck_02_covered_F" createVehicle _RRPD13;
RD13V setDir (direction RRPD);
Sleep 0.2;

RD21V = "I_Truck_02_covered_F" createVehicle _RRPD21;
RD21V setDir (direction RRPD);
Sleep 0.2;

RD22V = "I_Truck_02_covered_F" createVehicle _RRPD22;
RD22V setDir (direction RRPD);
Sleep 0.2;

RD23V = "I_Truck_02_covered_F" createVehicle _RRPD23;
RD23V setDir (direction RRPD);
Sleep 0.2;

RD31VA = "O_APC_Tracked_02_AA_F" createVehicle _RRPD31A;
RD31VA setDir (direction RRPD);
Sleep 0.2;

RD31VB = "O_APC_Tracked_02_AA_F" createVehicle _RRPD31B;
RD31VB setDir (direction RRPD);
Sleep 0.2;

RD31VC = "I_Truck_02_covered_F" createVehicle _RRPD31C;
RD31VC setDir (direction RRPD);
Sleep 0.2;

RD32VA = "O_APC_Tracked_02_AA_F" createVehicle _RRPD32A;
RD32VA setDir (direction RRPD);
Sleep 0.2;

RD32VB = "O_APC_Tracked_02_AA_F" createVehicle _RRPD32B;
RD32VB setDir (direction RRPD);
Sleep 0.2;

RD32VC = "I_Truck_02_covered_F" createVehicle _RRPD32C;
RD32VC setDir (direction RRPD);
Sleep 0.2;

RD41VA = "O_MBT_02_arty_F" createVehicle _RRPD41A;
RD41VA setDir (direction RRPD);
Sleep 0.2;

RD41VB = "O_MBT_02_arty_F" createVehicle _RRPD41B;
RD41VB setDir (direction RRPD);
Sleep 0.2;

RD41VC = "I_Truck_02_covered_F" createVehicle _RRPD41C;
RD41VC setDir (direction RRPD);
Sleep 0.2;

RD42VA = "O_MBT_02_arty_F" createVehicle _RRPD42A;
RD42VA setDir (direction RRPD);
Sleep 0.2;

RD42VB = "O_MBT_02_arty_F" createVehicle _RRPD42B;
RD42VB setDir (direction RRPD);
Sleep 0.2;

RD42VC = "I_Truck_02_covered_F" createVehicle _RRPD42C;
RD42VC setDir (direction RRPD);
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [RD11V, RD12V, RD13V, RD21V, RD22V, RD23V, RD31VA, RD31VB, RD31VC, RD32VA, RD32VB, RD32VC, RD41VA, RD41VB, RD41VC, RD42VA, RD42VB, RD42VC];
Sleep 0.2;

RD11 = [_RRPD11, EAST, [
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_LAT_F","O_G_Soldier_LAT2_F","O_G_Soldier_lite_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD11 setGroupIDGlobal ["D 1 1"];
RD11 addVehicle RD11V;
Sleep 0.2;

RD12 = [_RRPD12, EAST, [
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_officer_F","O_G_officer_F","O_G_engineer_F","O_G_engineer_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Lieutenant","Sergeant","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD12 setGroupIDGlobal ["D 1 2"];
RD12 addVehicle RD12V;
Sleep 0.2;

RD13 = [_RRPD13, EAST, [
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_LAT_F","O_G_Soldier_LAT2_F","O_G_Soldier_lite_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD13 setGroupIDGlobal ["D 1 3"];
RD13 addVehicle RD13V;
Sleep 0.2;

RD21 = [_RRPD21, EAST, [
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_LAT_F","O_G_Soldier_LAT2_F","O_G_Soldier_lite_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD21 setGroupIDGlobal ["D 2 1"];
RD21 addVehicle RD21V;
Sleep 0.2;

RD22 = [_RRPD22, EAST, [
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_officer_F","O_G_officer_F","O_G_engineer_F","O_G_engineer_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Lieutenant","Sergeant","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD22 setGroupIDGlobal ["D 2 2"];
RD22 addVehicle RD22V;
Sleep 0.2;

RD23 = [_RRPD23, EAST, [
		"O_G_Soldier_SL_F","O_G_medic_F",
		"O_G_Soldier_TL_F","O_G_Soldier_LAT_F","O_G_Soldier_LAT2_F","O_G_Soldier_lite_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F","O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F","O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Sergeant","Private",
		"Corporal","Private","Private","Private",
		"Corporal","Corporal","Private","Private",
		"Private","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD23 setGroupIDGlobal ["D 2 3"];
RD23 addVehicle RD23V;
Sleep 0.2;

RD31 = [_RRPD31A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_F",
		"O_G_Soldier_TL_F","O_G_Soldier_F","O_G_medic_F","O_G_Soldier_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD31 setGroupIDGlobal ["D 3 1"];
RD31 addVehicle RD31VA;
RD31 addVehicle RD31VB;
RD31 addVehicle RD31VC;
Units RD31 select 0 moveInDriver RD31VA;
Units RD31 select 1 moveInCommander RD31VA;
Units RD31 select 2 moveInGunner RD31VA;
Units RD31 select 3 moveInDriver RD31VB;
Units RD31 select 4 moveInCommander RD31VB;
Units RD31 select 5 moveInGunner RD31VB;
Sleep 0.2;

RD32 = [_RRPD32A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_F",
		"O_G_Soldier_TL_F","O_G_Soldier_F","O_G_medic_F","O_G_Soldier_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD32 setGroupIDGlobal ["D 3 2"];
RD32 addVehicle RD32VA;
RD32 addVehicle RD32VB;
RD32 addVehicle RD32VC;
Units RD32 select 0 moveInDriver RD32VA;
Units RD32 select 1 moveInCommander RD32VA;
Units RD32 select 2 moveInGunner RD32VA;
Units RD32 select 3 moveInDriver RD32VB;
Units RD32 select 4 moveInCommander RD32VB;
Units RD32 select 5 moveInGunner RD32VB;
Sleep 0.2;

RD41 = [_RRPD41A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_F",
		"O_G_Soldier_TL_F","O_G_Soldier_F","O_G_medic_F","O_G_Soldier_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD41 setGroupIDGlobal ["D 4 1"];
RD41 addVehicle RD41VA;
RD41 addVehicle RD41VB;
RD41 addVehicle RD41VC;
Units RD41 select 0 moveInDriver RD41VA;
Units RD41 select 1 moveInCommander RD41VA;
Units RD41 select 2 moveInGunner RD41VA;
Units RD41 select 3 moveInDriver RD41VB;
Units RD41 select 4 moveInCommander RD41VB;
Units RD41 select 5 moveInGunner RD41VB;
Sleep 0.2;

RD42 = [_RRPD42A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_F",
		"O_G_Soldier_TL_F","O_G_Soldier_F","O_G_medic_F","O_G_Soldier_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal",
		"Corporal","Private","Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RD42 setGroupIDGlobal ["D 4 2"];
RD42 addVehicle RD42VA;
RD42 addVehicle RD42VB;
RD42 addVehicle RD42VC;
Units RD42 select 0 moveInDriver RD42VA;
Units RD42 select 1 moveInCommander RD42VA;
Units RD42 select 2 moveInGunner RD42VA;
Units RD42 select 3 moveInDriver RD42VB;
Units RD42 select 4 moveInCommander RD42VB;
Units RD42 select 5 moveInGunner RD42VB;
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
} foreach [RD11, RD12, RD13, RD21, RD22, RD23, RD31, RD32, RD41, RD42];

{
	{
		_x addEventHandler ["Killed", {
			RD11Grave pushback (_this select 0);
			PublicVariable "RD11Grave";
		}];
	} foreach units _x;
} foreach [RD11];

{
	{
		_x addEventHandler ["Killed", {
			RD12Grave pushback (_this select 0);
			PublicVariable "RD12Grave";
		}];
	} foreach units _x;
} foreach [RD12];

{
	{
		_x addEventHandler ["Killed", {
			RD13Grave pushback (_this select 0);
			PublicVariable "RD13Grave";
		}];
	} foreach units _x;
} foreach [RD13];

{
	{
		_x addEventHandler ["Killed", {
			RD21Grave pushback (_this select 0);
			PublicVariable "RD21Grave";
		}];
	} foreach units _x;
} foreach [RD21];

{
	{
		_x addEventHandler ["Killed", {
			RD22Grave pushback (_this select 0);
			PublicVariable "RD22Grave";
		}];
	} foreach units _x;
} foreach [RD22];

{
	{
		_x addEventHandler ["Killed", {
			RD23Grave pushback (_this select 0);
			PublicVariable "RD23Grave";
		}];
	} foreach units _x;
} foreach [RD23];

{
	{
		_x addEventHandler ["Killed", {
			RD31Grave pushback (_this select 0);
			PublicVariable "RD31Grave";
		}];
	} foreach units _x;
} foreach [RD31];

{
	{
		_x addEventHandler ["Killed", {
			RD32Grave pushback (_this select 0);
			PublicVariable "RD32Grave";
		}];
	} foreach units _x;
} foreach [RD32];

{
	{
		_x addEventHandler ["Killed", {
			RD31Grave pushback (_this select 0);
			PublicVariable "RD31Grave";
		}];
	} foreach units _x;
} foreach [RD41];

{
	{
		_x addEventHandler ["Killed", {
			RD32Grave pushback (_this select 0);
			PublicVariable "RD32Grave";
		}];
	} foreach units _x;
} foreach [RD42];

_WPRD11 = RD11 addWaypoint [RD11V, 0];
_WPRD11 setWaypointType "GetIn";

_WPRD12 = RD12 addWaypoint [RD12V, 0];
_WPRD12 setWaypointType "GetIn";

_WPRD13 = RD13 addWaypoint [RD13V, 0];
_WPRD13 setWaypointType "GetIn";

_WPRD21 = RD21 addWaypoint [RD21V, 0];
_WPRD21 setWaypointType "GetIn";

_WPRD22 = RD22 addWaypoint [RD22V, 0];
_WPRD22 setWaypointType "GetIn";

_WPRD23 = RD23 addWaypoint [RD23V, 0];
_WPRD23 setWaypointType "GetIn";

_WPRD31 = RD31 addWaypoint [RD31VA, 0];
_WPRD31 setWaypointFormation  "File";
_WPRD31 setWaypointType "GetIn";

_WPRD32 = RD32 addWaypoint [RD32VA, 0];
_WPRD32 setWaypointFormation  "File";
_WPRD32 setWaypointType "GetIn";

_WPRD41 = RD41 addWaypoint [RD41VA, 0];
_WPRD41 setWaypointFormation  "File";
_WPRD41 setWaypointType "GetIn";

_WPRD42 = RD42 addWaypoint [RD42VA, 0];
_WPRD42 setWaypointFormation  "File";
_WPRD42 setWaypointType "GetIn";