//Assignment of command of blufor's charlie company to charlie commander.

//Preparatory steps.
WaitUntil {!isNil "BD42"};
If (!isNil "RHC66HC") then {deleteVehicle RHC66HC}; //Fight redundancy.
If (!isNil "RHC66HS") then {deleteVehicle RHC66HS}; //Fight redundancy.
If (!isNil "RC4R") then {deleteVehicle RC4R}; //Fight redundancy.
If (!isNil "RC6R") then {deleteVehicle RC6R}; //Fight redundancy.
If (!isNil "RHD66") then {{RHD66 HCRemoveGroup [_x];} foreach [RC11, RC12, RC13, RC21, RC22, RC23, RC31, RC32, RC41, RC42];};
If (!isNil "BD4R") then {RC42MA synchronizeObjectsRemove [BD4R];}; //If mortar already assigned, unassign it.

//High command block.
RHC66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
RHC66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
RHC66HS SynchronizeObjectsAdd [RHC66HC]; //Synchronize subordinate to commander module.
RHC66HC SynchronizeObjectsAdd [RHC66]; //Synchronize commander module to commander.
{RHC66 HCSetGroup [_x];} foreach [RC11, RC12, RC13, RC21, RC22, RC23, RC31, RC32, RC41, RC42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
RC4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
RC6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
RC42MA synchronizeObjectsAdd [RC4R]; //Synchronize artillery with artillery provider.
[[RC6R,RC4R], {
	RC6R = _this select 0;
	RC4R = _this select 1;
	[player, RC6R, RC4R] call BIS_fnc_addSupportLink;
	[RC6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[RC6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[RC6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[RC6R, "Drop", -1] call BIS_fnc_limitSupport;
	[RC6R, "Transport", -1] call BIS_fnc_limitSupport;
	[RC6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", RHC66]; //Define above code on the client.
[RC4R, RC6R] spawn BIS_fnc_initModules; //Initialize all above code?