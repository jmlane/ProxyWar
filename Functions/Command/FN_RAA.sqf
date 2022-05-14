//Assignment of command of blufor's alpha company to alpha commander.

//Preparatory steps.
WaitUntil {!isNil "BD42"};
Sleep 60;
If (!isNil "RHA66HC") then {deleteVehicle RHA66HC}; //Fight redundancy.
If (!isNil "RHA66HS") then {deleteVehicle RHA66HS}; //Fight redundancy.
If (!isNil "RA4R") then {deleteVehicle RA4R}; //Fight redundancy.
If (!isNil "RA6R") then {deleteVehicle RA6R}; //Fight redundancy.
If (!isNil "RHD66") then {{RHD66 HCRemoveGroup [_x];} foreach [RA11, RA12, RA13, RA21, RA22, RA23, RA31, RA32, RA41, RA42];};
If (!isNil "BD4R") then {RA42MA synchronizeObjectsRemove [BD4R];}; //If mortar already assigned, unassign it.

//High command block.
RHA66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
RHA66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
RHA66HS SynchronizeObjectsAdd [RHA66HC]; //Synchronize subordinate to commander module.
RHA66HC SynchronizeObjectsAdd [RHA66]; //Synchronize commander module to commander.
{RHA66 HCSetGroup [_x];} foreach [RA11, RA12, RA13, RA21, RA22, RA23, RA31, RA32, RA41, RA42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
RA4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
RA6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
RA42MA synchronizeObjectsAdd [RA4R]; //Synchronize artillery with artillery provider.
[[RA6R,RA4R], {
	RA6R = _this select 0;
	RA4R = _this select 1;
	[player, RA6R, RA4R] call BIS_fnc_addSupportLink;
	[RA6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[RA6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[RA6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[RA6R, "Drop", -1] call BIS_fnc_limitSupport;
	[RA6R, "Transport", -1] call BIS_fnc_limitSupport;
	[RA6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", RHA66]; //Define above code on the client.
[RA4R, RA6R] spawn BIS_fnc_initModules; //Initialize all above code?