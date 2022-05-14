//Assignment of command of blufor's companies to delta commander.

//Preparatory steps.
WaitUntil {!isNil "RD42"};
Sleep 60;
If (!isNil "RHD66HC") then {deleteVehicle RHD66HC}; //Fight redundancy.
If (!isNil "RHD66HS") then {deleteVehicle RHD66HS}; //Fight redundancy.
If (!isNil "RD4R") then {deleteVehicle RD4R}; //Fight redundancy.
If (!isNil "RD6R") then {deleteVehicle RD6R}; //Fight redundancy.

//High command block.
RHD66HC = LogicSide createUnit ["HighCommand",[0,0,0],[],0,"NONE"]; //Create commander module.
RHD66HS = LogicSide createUnit ["HighCommandSubordinate",[0,0,0],[],0,"NONE"]; //Create subordinate module.
RHD66HS SynchronizeObjectsAdd [RHD66HC]; //Synchronize subordinate to commander module.
RHD66HC SynchronizeObjectsAdd [RHD66]; //Synchronize commander module to commander.
If (isNil "RHA66") then {{RHD66 HCSetGroup [_x];} foreach [RA11, RA12, RA13, RA21, RA22, RA23, RA31, RA32, RA41, RA42];}; //If no alpha commander, assume alpha command.
If (isNil "RHB66") then {{RHD66 HCSetGroup [_x];} foreach [RB11, RB12, RB13, RB21, RB22, RB23, RB31, RB32, RB41, RB42];}; //If no bravo commander, assume bravo command.
If (isNil "RHC66") then {{RHD66 HCSetGroup [_x];} foreach [RC11, RC12, RC13, RC21, RC22, RC23, RC31, RC32, RC41, RC42];}; //If no charlie commander, assume charlie command.
{RHD66 HCSetGroup [_x];} foreach [RD11, RD12, RD13, RD21, RD22, RD23, RD31, RD32, RD41, RD42]; //Assign commander to subordinate groups.

//Create modules on server.
//Create connections on commander client.
RD4R = LogicSide createUnit ["SupportProvider_Artillery",[0,0,0],[],0,"NONE"]; //Create artillery provider module.
RD6R = LogicSide createUnit ["SupportRequester",[0,0,0],[],0,"NONE"]; //Create artillery requester module.
If (isNil "RHA66") then {RA42MA synchronizeObjectsAdd [RD4R];}; //If there is no alpha commander, assume alpha mortars.
If (isNil "RHB66") then {RB42MA synchronizeObjectsAdd [RD4R];}; //If there is no bravo commander, assume bravo mortars.
If (isNil "RHC66") then {RC42MA synchronizeObjectsAdd [RD4R];}; //If there is no charlie commander, assume charlie mortars.
RD41VA synchronizeObjectsAdd [RD4R]; //Synchronize artillery with artillery provider.
RD42VA synchronizeObjectsAdd [RD4R]; //Synchronize artillery with artillery provider.
[[RD6R,RD4R], {
	RD6R = _this select 0;
	RD4R = _this select 1;
	[player, RD6R, RD4R] call BIS_fnc_addSupportLink;
	[RD6R, "Artillery", -1] call BIS_fnc_limitSupport;
	[RD6R, "CAS_Bombing", -1] call BIS_fnc_limitSupport;
	[RD6R, "CAS_Heli", -1] call BIS_fnc_limitSupport;
	[RD6R, "Drop", -1] call BIS_fnc_limitSupport;
	[RD6R, "Transport", -1] call BIS_fnc_limitSupport;
	[RD6R, "UAV", -1] call BIS_fnc_limitSupport;
	}] remoteExec ["call", RHD66]; //Define above code on the client.
[RD4R, RD6R] spawn BIS_fnc_initModules; //Initialize all above code.