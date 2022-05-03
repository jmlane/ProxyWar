/* Control Sector
A zone which can be captured,
contributes and deducts tickets from appropriate pools,
and marks the map appropriately without gamey notification.

To do:
Allow multiple zones to exist. Priority.

Multiple zones should be generated based on map features and size.
Have zones trigger respawn waves when captured or lost.
Have zones bleed tickets based on ownership ratio,
rather than straight ticket addition and subtraction.
*/

//Error

/*Compare
_Flag = createMarker [format ['Objective_%1', j], markerPos _marker];

_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
*/
//Sectors

Private _SectorsAAF = [];
Private _SectorsFIA = [];
Private _Flags = [];
j = 0;

If (isServer) then
{
	
	For "_i" from 1 to 4 do {
		j = _i;
		publicVariable "j";

		markerSpot = format ["sector_%1", _i];
		publicVariable "markerSpot";
		
		_Flags set [_i, createMarker [format ["Objective_%1", _i], markerPos markerSpot]];
		_Flags select _i setMarkerType 'hd_objective_noShadow';

		_SectorsAAF set [_i, createTrigger ["EmptyDetector", markerPos markerSpot, false]];
		_SectorsAAF select _i setTriggerActivation ["ANY", "PRESENT", true];
		_SectorsAAF select _i setTriggerArea [100, 100, getDir this, true];
		_SectorsAAF select _i setTriggerInterval 5;
		_SectorsAAF select _i setTriggerStatements
		[
			"West countSide thisList < 0.4*(East countSide thisList);",
			"DeleteMarker format ['Objective_%1', j];
			_Flag = createMarker [format ['Objective_%1', j], markerPos markerSpot];
			_Flag setMarkerType 'Flag_Altis';
			BluZones = BluZones -1;
			PublicVariable 'BluZones';
			RedZones = RedZones +1;
			PublicVariable 'RedZones';
			",
			""
		];

		_SectorsFIA set [_i, createTrigger ["EmptyDetector", markerPos markerSpot, false]];
		_SectorsFIA select _i setTriggerActivation ["ANY", "PRESENT", true];
		_SectorsFIA select _i setTriggerArea [100, 100, getDir this, true];
		_SectorsFIA select _i setTriggerInterval 5;
		_SectorsFIA select _i setTriggerStatements
		[
			"East countSide thisList < 0.4*(West countSide thisList);",
			"DeleteMarker format ['Objective_%1', j];
			_Flag = createMarker [format ['Objective_%1', j], markerPos markerSpot];
			_Flag setMarkerType 'Flag_FIA';
			BluZones = BluZones +1;
			PublicVariable 'BluZones';
			RedZones = RedZones -1;
			PublicVariable 'RedZones';
			",
			""
		];
		if (markerColor markerSpot == "") exitWith {};
	};
};

/*
{
	_Flag_1 = createMarker ['Objective_1', markerPos 'Sector_1'];
	_Flag_1 setMarkerType 'hd_objective_noShadow';
	For "_i" from 0 to 1e3 do {
		_marker = format ["sector_%1", _i];
	};
	if (markerColor _marker == "") exitWith {};

	_Flag = format ["_%1", _i];
	_Objective = format ["_%1", _i];
	_Sector = format ["_%1", _i];
	_SectorAAF = format ["_%1", _i];
	_SectorFIA = format ["_%1", _i];
};
*/