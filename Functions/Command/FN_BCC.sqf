//Assignment of command of blufor's charlie company to charlie commander.

//Preparatory steps.
WaitUntil {!isNil "BD42"};
Sleep 60;
If (!isNil "BHC66HC") then {deleteVehicle BHC66HC}; //Fight redundancy.
If (!isNil "BHC66HS") then {deleteVehicle BHC66HS}; //Fight redundancy.
If (!isNil "BC4R") then {deleteVehicle BC4R}; //Fight redundancy.
If (!isNil "BC6R") then {deleteVehicle BC6R}; //Fight redundancy.
If (!isNil "BHD66") then {{BHD66 HCRemoveGroup [_x];} foreach [BC11, BC12, BC13, BC21, BC22, BC23, BC31, BC32, BC41, BC42];};
If (!isNil "BD4R") then {BC42MA synchronizeObjectsRemove [BD4R];}; //If mortar already assigned, unassign it.

//High command block.
BHC66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
BHC66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
BHC66HS SynchronizeObjectsAdd [BHC66HC]; //Synchronize subordinate to commander module.
BHC66HC SynchronizeObjectsAdd [BHC66]; //Synchronize commander module to commander.
{BHC66 HCSetGroup [_x];} foreach [BC11, BC12, BC13, BC21, BC22, BC23, BC31, BC32, BC41, BC42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
BC4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
BC6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
BC42MA synchronizeObjectsAdd [BC4R]; //Synchronize artillery with artillery provider.
[[BC6R,BC4R], {
	BC6R = _this select 0;
	BC4R = _this select 1;
	[player, BC6R, BC4R] call BIS_fnc_addSupportLink;
	[BC6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[BC6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[BC6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[BC6R, "Drop", -1] call BIS_fnc_limitSupport;
	[BC6R, "Transport", -1] call BIS_fnc_limitSupport;
	[BC6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", BHC66]; //Define above code on the client.
[BC4R, BC6R] spawn BIS_fnc_initModules; //Initialize all above code?