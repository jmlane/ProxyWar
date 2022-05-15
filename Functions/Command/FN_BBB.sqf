//Assignment of command of blufor's bravo company to bravo commander.

//Preparatory steps.
WaitUntil {!isNil "BD42"};
If (!isNil "BHB66HC") then {deleteVehicle BHB66HC}; //Fight redundancy.
If (!isNil "BHB66HS") then {deleteVehicle BHB66HS}; //Fight redundancy.
If (!isNil "BB4R") then {deleteVehicle BB4R}; //Fight redundancy.
If (!isNil "BB6R") then {deleteVehicle BB6R}; //Fight redundancy.
If (!isNil "BHD66") then {{BHD66 HCRemoveGroup [_x];} foreach [BB11, BB12, BB13, BB21, BB22, BB23, BB31, BB32, BB41, BB42];};
If (!isNil "BD4R") then {BB42MA synchronizeObjectsRemove [BD4R];}; //If mortar already assigned, unassign it.

//High command block.
BHB66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
BHB66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
BHB66HS SynchronizeObjectsAdd [BHB66HC]; //Synchronize subordinate to commander module.
BHB66HC SynchronizeObjectsAdd [BHB66]; //Synchronize commander module to commander.
{BHB66 HCSetGroup [_x];} foreach [BB11, BB12, BB13, BB21, BB22, BB23, BB31, BB32, BB41, BB42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
BB4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
BB6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
BB42MA synchronizeObjectsAdd [BB4R]; //Synchronize artillery with artillery provider.
[[BB6R,BB4R], {
	BB6R = _this select 0;
	BB4R = _this select 1;
	[player, BB6R, BB4R] call BIS_fnc_addSupportLink;
	[BB6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[BB6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[BB6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[BB6R, "Drop", -1] call BIS_fnc_limitSupport;
	[BB6R, "Transport", -1] call BIS_fnc_limitSupport;
	[BB6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", BHB66]; //Define above code on the client.
[BB4R, BB6R] spawn BIS_fnc_initModules; //Initialize all above code?