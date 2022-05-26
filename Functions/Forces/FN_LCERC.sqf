//Local Combat Elements
//Redfor Charlie

//Create redfor rally points for charlie squads.
_RRPC11 = RRPC getPos [15, (getDir RRPC) + 090];
_RRPC12 = RRPC getPos [21, (getDir RRPC) + 135];
_RRPC13 = RRPC getPos [34, (getDir RRPC) + 154];
_RRPC21 = getPos RRPC;
_RRPC22 = RRPC getPos [15, (getDir RRPC) + 180];
_RRPC23 = RRPC getPos [30, (getDir RRPC) + 180];
_RRPC31A = RRPC getPos [15, (getDir RRPC) + 270];
_RRPC31B = RRPC getPos [21, (getDir RRPC) + 225];
_RRPC32A = RRPC getPos [30, (getDir RRPC) + 270];
_RRPC32B = RRPC getPos [34, (getDir RRPC) + 244];
_RRPC41 = RRPC getPos [34, (getDir RRPC) + 207];
_RRPC42 = RRPC getPos [42, (getDir RRPC) + 225];

RC11V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPC11;
RC11V setDir (direction RRPC);
Sleep 0.2;

RC12V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPC12;
RC12V setDir (direction RRPC);
Sleep 0.2;

RC13V = "I_APC_Wheeled_03_cannon_F" createVehicle _RRPC13;
RC13V setDir (direction RRPC);
Sleep 0.2;

RC21V = "I_APC_tracked_03_cannon_F" createVehicle _RRPC21;
RC21V setDir (direction RRPC);
Sleep 0.2;

RC22V = "I_APC_tracked_03_cannon_F" createVehicle _RRPC22;
RC22V setDir (direction RRPC);
Sleep 0.2;

RC23V = "I_APC_tracked_03_cannon_F" createVehicle _RRPC23;
RC23V setDir (direction RRPC);
Sleep 0.2;

RC31VA = "I_MBT_03_cannon_F" createVehicle _RRPC31A;
RC31VA setDir (direction RRPC);
Sleep 0.2;

RC31VB = "I_MBT_03_cannon_F" createVehicle _RRPC31B;
RC31VB setDir (direction RRPC);
Sleep 0.2;

RC32VA = "I_MBT_03_cannon_F" createVehicle _RRPC32A;
RC32VA setDir (direction RRPC);
Sleep 0.2;

RC32VB = "I_MBT_03_cannon_F" createVehicle _RRPC32B;
RC32VB setDir (direction RRPC);
Sleep 0.2;

RC41V = "I_Truck_02_transport_F" createVehicle _RRPC41;
RC41V setDir (direction RRPC);
Sleep 0.2;

RC42V = "I_Truck_02_transport_F" createVehicle _RRPC42;
RC42V setDir (direction RRPC);
Sleep 0.2;

RC42MA = "I_G_Mortar_01_F" createVehicle _RRPC42;
Sleep 0.2;

RC42MA attachto [RC42V, [0,-0.5,0]];
Sleep 0.2;

RC42MB = "I_G_Mortar_01_F" createVehicle _RRPC42;
Sleep 0.2;

RC42MB attachto [RC42V, [0,-2.5,0]];
Sleep 0.2;

{
	clearItemCargoGlobal _x;
	clearMagazineCargoGlobal _x;
	clearWeaponCargoGlobal _x;
	clearBackpackCargoGlobal _x;
} foreach [RC11V, RC12V, RC13V, RC21V, RC22V, RC23V, RC31VA, RC31VB, RC32VA, RC32VB, RC41V, RC42V];
Sleep 0.2;

RC11 = [_RRPC11, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC11 setGroupIDGlobal ["C 1 1"];
RC11 addVehicle RC11V;
Units RC11 select 0 moveInDriver RC11V;
Units RC11 select 1 moveInCommander RC11V;
Units RC11 select 2 moveInGunner RC11V;
Sleep 0.2;

RC12 = [_RRPC12, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_medic_F"
	],[],[
		"Private","Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC12 setGroupIDGlobal ["C 1 2"];
RC12 addVehicle RC12V;
Units RC12 select 0 moveInDriver RC12V;
Units RC12 select 1 moveInCommander RC12V;
Units RC12 select 2 moveInGunner RC12V;
Sleep 0.2;

RC13 = [_RRPC13, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_GL_F","O_G_Soldier_GL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC13 setGroupIDGlobal ["C 1 3"];
RC13 addVehicle RC13V;
Units RC13 select 0 moveInDriver RC13V;
Units RC13 select 1 moveInCommander RC13V;
Units RC13 select 2 moveInGunner RC13V;
Sleep 0.2;

RC21 = [_RRPC21, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_Soldier_GL_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC21 setGroupIDGlobal ["C 2 1"];
RC21 addVehicle RC21V;
Units RC21 select 0 moveInDriver RC21V;
Units RC21 select 1 moveInCommander RC21V;
Units RC21 select 2 moveInGunner RC21V;
Sleep 0.2;

RC22 = [_RRPC22, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_medic_F","O_G_Soldier_LAT2_F"
	],[],[
		"Private","Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC22 setGroupIDGlobal ["C 2 2"];
RC22 addVehicle RC22V;
Units RC22 select 0 moveInDriver RC22V;
Units RC22 select 1 moveInCommander RC22V;
Units RC22 select 2 moveInGunner RC22V;
Sleep 0.2;

RC23 = [_RRPC23, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_AR_F","O_G_Soldier_AR_F",
		"O_G_Soldier_GL_F","O_G_medic_F"
	],[],[
		"Private","Sergeant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC23 setGroupIDGlobal ["C 2 3"];
RC23 addVehicle RC23V;
Units RC23 select 0 moveInDriver RC23V;
Units RC23 select 1 moveInCommander RC23V;
Units RC23 select 2 moveInGunner RC23V;
Sleep 0.2;

RC31 = [_RRPC31A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_TL_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F"
	],[],[
		"Private","Lieutenant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC31 setGroupIDGlobal ["C 3 1"];
RC31 addVehicle RC31VA;
RC31 addVehicle RC31VB;
Sleep 0.2;

RC32 = [_RRPC32A, EAST, [
		"O_G_Soldier_F","O_G_officer_F","O_G_Soldier_TL_F",
		"O_G_Soldier_F","O_G_Soldier_SL_F","O_G_Soldier_TL_F"
	],[],[
		"Private","Sergeant","Corporal",
		"Private","Sergeant","Corporal"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC32 setGroupIDGlobal ["C 3 2"];
RC32 addVehicle RC32VA;
RC32 addVehicle RC32VB;
Sleep 0.2;

RC41 = [_RRPC41, EAST, [
		"O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_LAT_F","O_G_Soldier_LAT_F",
		"O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_lite_F","O_G_Soldier_lite_F",
		"O_G_medic_F","O_G_engineer_F"
	],[],[
		"Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC41 setGroupIDGlobal ["C 4 1"];
RC41 addVehicle RC41V;
Sleep 0.2;

RC42 = [_RRPC42, EAST, [
		"O_G_officer_F","O_G_Soldier_SL_F",
		"O_G_Soldier_TL_F","O_G_Soldier_TL_F",
		"O_G_Soldier_LAT2_F","O_G_Soldier_LAT2_F",
		"O_G_Soldier_lite_F","O_G_Soldier_lite_F",
		"O_G_engineer_F","O_G_medic_F",
		"O_G_Soldier_F","O_G_Soldier_F"
	],[],[
		"Lieutenant","Sergeant",
		"Corporal","Corporal",
		"Private","Private",
		"Private","Private",
		"Private","Private",
		"Private","Private"
],[],[],[],0] call BIS_fnc_spawnGroup;
RC42 setGroupIDGlobal ["C 4 2"];
RC42 addVehicle RC42V;
RC42 addVehicle RC42MA;
RC42 addVehicle RC42MB;
Sleep 0.2;

Units RC42 select 10 moveInAny RC42MA;
Units RC42 select 11 moveInAny RC42MB;
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
} foreach [RC11, RC12, RC13, RC21, RC22, RC23, RC31, RC32, RC41, RC42];

{
	{
		_x addEventHandler ["Killed", {
			RC11Grave pushback (_this select 0);
			PublicVariable "RC11Grave";
		}];
	} foreach units _x;
} foreach [RC11];

{
	{
		_x addEventHandler ["Killed", {
			RC12Grave pushback (_this select 0);
			PublicVariable "RC12Grave";
		}];
	} foreach units _x;
} foreach [RC12];

{
	{
		_x addEventHandler ["Killed", {
			RC13Grave pushback (_this select 0);
			PublicVariable "RC13Grave";
		}];
	} foreach units _x;
} foreach [RC13];

{
	{
		_x addEventHandler ["Killed", {
			RC21Grave pushback (_this select 0);
			PublicVariable "RC21Grave";
		}];
	} foreach units _x;
} foreach [RC21];

{
	{
		_x addEventHandler ["Killed", {
			RC22Grave pushback (_this select 0);
			PublicVariable "RC22Grave";
		}];
	} foreach units _x;
} foreach [RC22];

{
	{
		_x addEventHandler ["Killed", {
			RC23Grave pushback (_this select 0);
			PublicVariable "RC23Grave";
		}];
	} foreach units _x;
} foreach [RC23];

{
	{
		_x addEventHandler ["Killed", {
			RC31Grave pushback (_this select 0);
			PublicVariable "RC31Grave";
		}];
	} foreach units _x;
} foreach [RC31];

{
	{
		_x addEventHandler ["Killed", {
			RC32Grave pushback (_this select 0);
			PublicVariable "RC32Grave";
		}];
	} foreach units _x;
} foreach [RC32];

{
	{
		_x addEventHandler ["Killed", {
			RC31Grave pushback (_this select 0);
			PublicVariable "RC31Grave";
		}];
	} foreach units _x;
} foreach [RC41];

{
	{
		_x addEventHandler ["Killed", {
			RC32Grave pushback (_this select 0);
			PublicVariable "RC32Grave";
		}];
	} foreach units _x;
} foreach [RC42];

_WPRC11 = RC11 addWaypoint [RC11V, 0];
_WPRC11 setWaypointType "GetIn";

_WPRC12 = RC12 addWaypoint [RC12V, 0];
_WPRC12 setWaypointType "GetIn";

_WPRC13 = RC13 addWaypoint [RC13V, 0];
_WPRC13 setWaypointType "GetIn";

_WPRC21 = RC21 addWaypoint [RC21V, 0];
_WPRC21 setWaypointType "GetIn";

_WPRC22 = RC22 addWaypoint [RC22V, 0];
_WPRC22 setWaypointType "GetIn";

_WPRC23 = RC23 addWaypoint [RC23V, 0];
_WPRC23 setWaypointType "GetIn";

_WPRC31 = RC31 addWaypoint [RC31VA, 0];
_WPRC31 setWaypointType "GetIn";
_WPRC31 setWaypointFormation  "File";

_WPRC32 = RC32 addWaypoint [RC32VA, 0];
_WPRC32 setWaypointType "GetIn";
_WPRC31 setWaypointFormation  "File";

_WPRC41 = RC41 addWaypoint [RC41V, 0];
_WPRC41 setWaypointType "GetIn";

_WPRC42 = RC42 addWaypoint [RC42V, 0];
_WPRC42 setWaypointType "GetIn";

PublicVariable "RC11";
PublicVariable "RC12";
PublicVariable "RC13";
PublicVariable "RC21";
PublicVariable "RC22";
PublicVariable "RC23";
PublicVariable "RC31";
PublicVariable "RC32";
PublicVariable "RC41";
PublicVariable "RC42";