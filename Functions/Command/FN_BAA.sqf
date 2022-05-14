//Assignment of command of blufor's alpha company to alpha commander.

//Preparatory steps.
WaitUntil {!isNil "BD42"};
Sleep 60;
If (!isNil "BHA66HC") then {deleteVehicle BHA66HC}; //Fight redundancy.
If (!isNil "BHA66HS") then {deleteVehicle BHA66HS}; //Fight redundancy.
If (!isNil "BA4R") then {deleteVehicle BA4R}; //Fight redundancy.
If (!isNil "BA6R") then {deleteVehicle BA6R}; //Fight redundancy.
If (!isNil "BHD66") then {{BHD66 HCRemoveGroup [_x];} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42];};
If (!isNil "BD4R") then {BA42MA synchronizeObjectsRemove [BD4R];}; //If mortar already assigned, unassign it.

//High command block.
BHA66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
BHA66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
BHA66HS SynchronizeObjectsAdd [BHA66HC]; //Synchronize subordinate to commander module.
BHA66HC SynchronizeObjectsAdd [BHA66]; //Synchronize commander module to commander.
{BHA66 HCSetGroup [_x];} foreach [BA11, BA12, BA13, BA21, BA22, BA23, BA31, BA32, BA41, BA42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
BA4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
BA6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
BA42MA synchronizeObjectsAdd [BA4R]; //Synchronize artillery with artillery provider.
[[BA6R,BA4R], {
	BA6R = _this select 0;
	BA4R = _this select 1;
	[player, BA6R, BA4R] call BIS_fnc_addSupportLink;
	[BA6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[BA6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[BA6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[BA6R, "Drop", -1] call BIS_fnc_limitSupport;
	[BA6R, "Transport", -1] call BIS_fnc_limitSupport;
	[BA6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", BHA66]; //Define above code on the client.
[BA4R, BA6R] spawn BIS_fnc_initModules; //Initialize all above code?