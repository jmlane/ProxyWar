//Assignment of command of blufor's bravo company to bravo commander.

//Preparatory steps.
WaitUntil {!isNil "BD42"};
Sleep 60;
If (!isNil "RHB66HC") then {deleteVehicle RHB66HC}; //Fight redundancy.
If (!isNil "RHB66HS") then {deleteVehicle RHB66HS}; //Fight redundancy.
If (!isNil "RB4R") then {deleteVehicle RB4R}; //Fight redundancy.
If (!isNil "RB6R") then {deleteVehicle RB6R}; //Fight redundancy.
If (!isNil "RHD66") then {{RHD66 HCRemoveGroup [_x];} foreach [RB11, RB12, RB13, RB21, RB22, RB23, RB31, RB32, RB41, RB42];};
If (!isNil "BD4R") then {RB42MA synchronizeObjectsRemove [BD4R];}; //If mortar already assigned, unassign it.

//High command block.
RHB66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
RHB66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
RHB66HS SynchronizeObjectsAdd [RHB66HC]; //Synchronize subordinate to commander module.
RHB66HC SynchronizeObjectsAdd [RHB66]; //Synchronize commander module to commander.
{RHB66 HCSetGroup [_x];} foreach [RB11, RB12, RB13, RB21, RB22, RB23, RB31, RB32, RB41, RB42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
RB4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
RB6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
RB42MA synchronizeObjectsAdd [RB4R]; //Synchronize artillery with artillery provider.
[[RB6R,RB4R], {
	RB6R = _this select 0;
	RB4R = _this select 1;
	[player, RB6R, RB4R] call BIS_fnc_addSupportLink;
	[RB6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[RB6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[RB6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[RB6R, "Drop", -1] call BIS_fnc_limitSupport;
	[RB6R, "Transport", -1] call BIS_fnc_limitSupport;
	[RB6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", RHB66]; //Define above code on the client.
[RB4R, RB6R] spawn BIS_fnc_initModules; //Initialize all above code?