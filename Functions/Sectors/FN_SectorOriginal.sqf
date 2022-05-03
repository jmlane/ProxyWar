/* Control Sector
A zone which can be captured,
contributes and deducts tickets from appropriate pools,
and marks the map appropriately without gamey notification.

To do:
Allow multiple zones to exist. Priority.

Multiple zones should be generated based on map features and size.
Have zones trigger respawn waves when captured or lost.
Have zones bleed tickets based on ownership ratio,
rather than direct ticket addition and subtraction.
*/

//Sectors

//Working Grunt Method
If (isServer) then
{
	_Flag_1 = createMarker ['Objective_1', markerPos 'Sector_1'];
	_Flag_1 setMarkerType 'hd_objective_noShadow';

	_SectorAAF_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorAAF_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_1 setTriggerArea [100, 100, getDir this, true];
	_SectorAAF_1 setTriggerInterval 5;
	_SectorAAF_1 setTriggerStatements
	[
		"West countSide thisList < 0.4*(East countSide thisList);",
		"DeleteMarker 'Objective_1';
		_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
		_Flag setMarkerType 'Flag_Altis';
		BluTickets = BluTickets -1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets +1;
		PublicVariable 'Redtickets';
		If (BluTickets < 1) then {
			'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];
	_SectorFIA_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorFIA_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_1 setTriggerArea [100, 100, getDir this, true];
	_SectorFIA_1 setTriggerInterval 5;
	_SectorFIA_1 setTriggerStatements
	[
		"East countSide thisList < 0.4*(West countSide thisList);",
		"DeleteMarker 'Objective_1';
		_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
		_Flag setMarkerType 'Flag_FIA';
		BluTickets = BluTickets +1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets -1;
		PublicVariable 'Redtickets';
		If (RedTickets < 1) then {
			'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];

	_Flag_2 = createMarker ['Objective_2', markerPos 'Sector_2'];
	_Flag_2 setMarkerType 'hd_objective_noShadow';

	_SectorAAF_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
	_SectorAAF_2 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_2 setTriggerArea [100, 100, getDir this, true];
	_SectorAAF_2 setTriggerInterval 5;
	_SectorAAF_2 setTriggerStatements
	[
		"West countSide thisList < 0.4*(East countSide thisList);",
		"DeleteMarker 'Objective_2';
		_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
		_Flag setMarkerType 'Flag_Altis';
		BluTickets = BluTickets -1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets +1;
		PublicVariable 'Redtickets';
		If (BluTickets < 1) then {
			'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];
	_SectorFIA_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
	_SectorFIA_2 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_2 setTriggerArea [100, 100, getDir this, true];
	_SectorFIA_2 setTriggerInterval 5;
	_SectorFIA_2 setTriggerStatements
	[
		"East countSide thisList < 0.4*(West countSide thisList);",
		"DeleteMarker 'Objective_2';
		_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
		_Flag setMarkerType 'Flag_FIA';
		BluTickets = BluTickets +1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets -1;
		PublicVariable 'Redtickets';
		If (RedTickets < 1) then {
			'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];

	_Flag_3 = createMarker ['Objective_3', markerPos 'Sector_3'];
	_Flag_3 setMarkerType 'hd_objective_noShadow';

	_SectorAAF_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
	_SectorAAF_3 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_3 setTriggerArea [100, 100, getDir this, true];
	_SectorAAF_3 setTriggerInterval 5;
	_SectorAAF_3 setTriggerStatements
	[
		"West countSide thisList < 0.4*(East countSide thisList);",
		"DeleteMarker 'Objective_3';
		_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
		_Flag setMarkerType 'Flag_Altis';
		BluTickets = BluTickets -1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets +1;
		PublicVariable 'Redtickets';
		If (BluTickets < 1) then {
			'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];
	_SectorFIA_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
	_SectorFIA_3 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_3 setTriggerArea [100, 100, getDir this, true];
	_SectorFIA_3 setTriggerInterval 5;
	_SectorFIA_3 setTriggerStatements
	[
		"East countSide thisList < 0.4*(West countSide thisList);",
		"DeleteMarker 'Objective_3';
		_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
		_Flag setMarkerType 'Flag_FIA';
		BluTickets = BluTickets +1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets -1;
		PublicVariable 'Redtickets';
		If (RedTickets < 1) then {
			'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];

	_Flag_4 = createMarker ['Objective_4', markerPos 'Sector_4'];
	_Flag_4 setMarkerType 'hd_objective_noShadow';

	_SectorAAF_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
	_SectorAAF_4 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_4 setTriggerArea [100, 100, getDir this, true];
	_SectorAAF_4 setTriggerInterval 5;
	_SectorAAF_4 setTriggerStatements
	[
		"West countSide thisList < 0.4*(East countSide thisList);",
		"DeleteMarker 'Objective_4';
		_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
		_Flag setMarkerType 'Flag_Altis';
		BluTickets = BluTickets -1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets +1;
		PublicVariable 'Redtickets';
		If (BluTickets < 1) then {
			'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];
	_SectorFIA_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
	_SectorFIA_4 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_4 setTriggerArea [100, 100, getDir this, true];
	_SectorFIA_4 setTriggerInterval 5;
	_SectorFIA_4 setTriggerStatements
	[
		"East countSide thisList < 0.4*(West countSide thisList);",
		"DeleteMarker 'Objective_4';
		_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
		_Flag setMarkerType 'Flag_FIA';
		BluTickets = BluTickets +1;
		PublicVariable 'BluTickets';
		RedTickets = Redtickets -1;
		PublicVariable 'Redtickets';
		If (RedTickets < 1) then {
			'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
		};
		",
		""
	];
};

/*Experimental Method

If (isServer) then
{
	For "_i" from 0 to 1e3 do {
		_marker = format ["sector_%1", _i];
	if (markerColor _marker == "") exitWith {};

	_Flag = format ["_%1", _i];
	_Objective = format ["_%1", _i];
	_Sector = format ["_%1", _i];
	_SectorAAF = format ["_%1", _i];
	_SectorFIA = format ["_%1", _i];




	If (markerColor _Sector == "") exitWith {};


	// do something with the marker
	//_marker setMarkerPos [...];
};