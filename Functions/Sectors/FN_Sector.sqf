/* Control Sector
A zone which can be captured,
contributes and deducts tickets from appropriate pools,
and marks the map appropriately without gamey notification.

To do:
Remove redundancy for multiple zones.
Multiple zones should be generated based on map features and size.
Have zones trigger respawn waves when captured or lost.
Have zones bleed tickets based on ownership ratio,
rather than direct ticket addition and subtraction.
*/

//Sectors
//Ticket Build Method (with Respawn)(Ghetto)(Working)
If (isServer) then {

	//Sector_1
		_Flag_1 = createMarker ['Objective_1', markerPos 'Sector_1'];
		_Flag_1 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
		_SectorAAF_1 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_1 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_1 setTriggerInterval 5;
		_SectorAAF_1 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_1';
				_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
		_SectorFIA_1 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_1 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_1 setTriggerInterval 5;
		_SectorFIA_1 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_1';
				_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_2
		_Flag_2 = createMarker ['Objective_2', markerPos 'Sector_2'];
		_Flag_2 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
		_SectorAAF_2 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_2 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_2 setTriggerInterval 5;
		_SectorAAF_2 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_2';
				_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
		_SectorFIA_2 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_2 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_2 setTriggerInterval 5;
		_SectorFIA_2 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_2';
				_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_3
		_Flag_3 = createMarker ['Objective_3', markerPos 'Sector_3'];
		_Flag_3 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
		_SectorAAF_3 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_3 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_3 setTriggerInterval 5;
		_SectorAAF_3 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_3';
				_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
		_SectorFIA_3 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_3 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_3 setTriggerInterval 5;
		_SectorFIA_3 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_3';
				_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_4
		_Flag_4 = createMarker ['Objective_4', markerPos 'Sector_4'];
		_Flag_4 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
		_SectorAAF_4 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_4 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_4 setTriggerInterval 5;
		_SectorAAF_4 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_4';
				_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
		_SectorFIA_4 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_4 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_4 setTriggerInterval 5;
		_SectorFIA_4 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_4';
				_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];
/* Disabled for development.
	//Sector_5
		_Flag_5 = createMarker ['Objective_5', markerPos 'Sector_5'];
		_Flag_5 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
		_SectorAAF_5 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_5 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_5 setTriggerInterval 5;
		_SectorAAF_5 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_5';
				_Flag = createMarker ['Objective_5', markerPos 'Sector_5'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
		_SectorFIA_5 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_5 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_5 setTriggerInterval 5;
		_SectorFIA_5 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_5';
				_Flag = createMarker ['Objective_5', markerPos 'Sector_5'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_6
		_Flag_6 = createMarker ['Objective_6', markerPos 'Sector_6'];
		_Flag_6 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
		_SectorAAF_6 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_6 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_6 setTriggerInterval 5;
		_SectorAAF_6 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_6';
				_Flag = createMarker ['Objective_6', markerPos 'Sector_6'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
		_SectorFIA_6 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_6 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_6 setTriggerInterval 5;
		_SectorFIA_6 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_6';
				_Flag = createMarker ['Objective_6', markerPos 'Sector_6'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_7
		_Flag_7 = createMarker ['Objective_7', markerPos 'Sector_7'];
		_Flag_7 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
		_SectorAAF_7 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_7 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_7 setTriggerInterval 5;
		_SectorAAF_7 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_7';
				_Flag = createMarker ['Objective_7', markerPos 'Sector_7'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
		_SectorFIA_7 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_7 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_7 setTriggerInterval 5;
		_SectorFIA_7 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_7';
				_Flag = createMarker ['Objective_7', markerPos 'Sector_7'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_8
		_Flag_8 = createMarker ['Objective_8', markerPos 'Sector_8'];
		_Flag_8 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
		_SectorAAF_8 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_8 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_8 setTriggerInterval 5;
		_SectorAAF_8 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_8';
				_Flag = createMarker ['Objective_8', markerPos 'Sector_8'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
		_SectorFIA_8 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_8 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_8 setTriggerInterval 5;
		_SectorFIA_8 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_8';
				_Flag = createMarker ['Objective_8', markerPos 'Sector_8'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_9
		_Flag_9 = createMarker ['Objective_9', markerPos 'Sector_9'];
		_Flag_9 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
		_SectorAAF_9 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_9 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_9 setTriggerInterval 5;
		_SectorAAF_9 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_9';
				_Flag = createMarker ['Objective_9', markerPos 'Sector_9'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
		_SectorFIA_9 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_9 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_9 setTriggerInterval 5;
		_SectorFIA_9 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_9';
				_Flag = createMarker ['Objective_9', markerPos 'Sector_9'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_10
		_Flag_10 = createMarker ['Objective_10', markerPos 'Sector_10'];
		_Flag_10 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
		_SectorAAF_10 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_10 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_10 setTriggerInterval 5;
		_SectorAAF_10 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_10';
				_Flag = createMarker ['Objective_10', markerPos 'Sector_10'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
		_SectorFIA_10 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_10 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_10 setTriggerInterval 5;
		_SectorFIA_10 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_10';
				_Flag = createMarker ['Objective_10', markerPos 'Sector_10'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_11
		_Flag_11 = createMarker ['Objective_11', markerPos 'Sector_11'];
		_Flag_11 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
		_SectorAAF_11 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_11 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_11 setTriggerInterval 5;
		_SectorAAF_11 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_11';
				_Flag = createMarker ['Objective_11', markerPos 'Sector_11'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
		_SectorFIA_11 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_11 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_11 setTriggerInterval 5;
		_SectorFIA_11 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_11';
				_Flag = createMarker ['Objective_11', markerPos 'Sector_11'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_12
		_Flag_12 = createMarker ['Objective_12', markerPos 'Sector_12'];
		_Flag_12 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
		_SectorAAF_12 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_12 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_12 setTriggerInterval 5;
		_SectorAAF_12 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_12';
				_Flag = createMarker ['Objective_12', markerPos 'Sector_12'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
		_SectorFIA_12 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_12 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_12 setTriggerInterval 5;
		_SectorFIA_12 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_12';
				_Flag = createMarker ['Objective_12', markerPos 'Sector_12'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_13
		_Flag_13 = createMarker ['Objective_13', markerPos 'Sector_13'];
		_Flag_13 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
		_SectorAAF_13 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_13 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_13 setTriggerInterval 5;
		_SectorAAF_13 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_13';
				_Flag = createMarker ['Objective_13', markerPos 'Sector_13'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
		_SectorFIA_13 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_13 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_13 setTriggerInterval 5;
		_SectorFIA_13 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_13';
				_Flag = createMarker ['Objective_13', markerPos 'Sector_13'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_14
		_Flag_14 = createMarker ['Objective_14', markerPos 'Sector_14'];
		_Flag_14 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
		_SectorAAF_14 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_14 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_14 setTriggerInterval 5;
		_SectorAAF_14 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_14';
				_Flag = createMarker ['Objective_14', markerPos 'Sector_14'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
		_SectorFIA_14 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_14 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_14 setTriggerInterval 5;
		_SectorFIA_14 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_14';
				_Flag = createMarker ['Objective_14', markerPos 'Sector_14'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_15
		_Flag_15 = createMarker ['Objective_15', markerPos 'Sector_15'];
		_Flag_15 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
		_SectorAAF_15 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_15 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_15 setTriggerInterval 5;
		_SectorAAF_15 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_15';
				_Flag = createMarker ['Objective_15', markerPos 'Sector_15'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
		_SectorFIA_15 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_15 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_15 setTriggerInterval 5;
		_SectorFIA_15 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_15';
				_Flag = createMarker ['Objective_15', markerPos 'Sector_15'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_16
		_Flag_16 = createMarker ['Objective_16', markerPos 'Sector_16'];
		_Flag_16 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
		_SectorAAF_16 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_16 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_16 setTriggerInterval 5;
		_SectorAAF_16 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_16';
				_Flag = createMarker ['Objective_16', markerPos 'Sector_16'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
		_SectorFIA_16 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_16 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_16 setTriggerInterval 5;
		_SectorFIA_16 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_16';
				_Flag = createMarker ['Objective_16', markerPos 'Sector_16'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_17
		_Flag_17 = createMarker ['Objective_17', markerPos 'Sector_17'];
		_Flag_17 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
		_SectorAAF_17 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_17 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_17 setTriggerInterval 5;
		_SectorAAF_17 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_17';
				_Flag = createMarker ['Objective_17', markerPos 'Sector_17'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
		_SectorFIA_17 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_17 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_17 setTriggerInterval 5;
		_SectorFIA_17 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_17';
				_Flag = createMarker ['Objective_17', markerPos 'Sector_17'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_18
		_Flag_18 = createMarker ['Objective_18', markerPos 'Sector_18'];
		_Flag_18 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
		_SectorAAF_18 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_18 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_18 setTriggerInterval 5;
		_SectorAAF_18 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_18';
				_Flag = createMarker ['Objective_18', markerPos 'Sector_18'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
		_SectorFIA_18 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_18 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_18 setTriggerInterval 5;
		_SectorFIA_18 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_18';
				_Flag = createMarker ['Objective_18', markerPos 'Sector_18'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_19
		_Flag_19 = createMarker ['Objective_19', markerPos 'Sector_19'];
		_Flag_19 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
		_SectorAAF_19 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_19 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_19 setTriggerInterval 5;
		_SectorAAF_19 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_19';
				_Flag = createMarker ['Objective_19', markerPos 'Sector_19'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
		_SectorFIA_19 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_19 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_19 setTriggerInterval 5;
		_SectorFIA_19 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_19';
				_Flag = createMarker ['Objective_19', markerPos 'Sector_19'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_20
		_Flag_20 = createMarker ['Objective_20', markerPos 'Sector_20'];
		_Flag_20 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
		_SectorAAF_20 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_20 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_20 setTriggerInterval 5;
		_SectorAAF_20 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_20';
				_Flag = createMarker ['Objective_20', markerPos 'Sector_20'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
		_SectorFIA_20 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_20 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_20 setTriggerInterval 5;
		_SectorFIA_20 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_20';
				_Flag = createMarker ['Objective_20', markerPos 'Sector_20'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_21
		_Flag_21 = createMarker ['Objective_21', markerPos 'Sector_21'];
		_Flag_21 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
		_SectorAAF_21 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_21 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_21 setTriggerInterval 5;
		_SectorAAF_21 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_21';
				_Flag = createMarker ['Objective_21', markerPos 'Sector_21'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
		_SectorFIA_21 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_21 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_21 setTriggerInterval 5;
		_SectorFIA_21 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_21';
				_Flag = createMarker ['Objective_21', markerPos 'Sector_21'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_22
		_Flag_22 = createMarker ['Objective_22', markerPos 'Sector_22'];
		_Flag_22 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
		_SectorAAF_22 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_22 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_22 setTriggerInterval 5;
		_SectorAAF_22 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_22';
				_Flag = createMarker ['Objective_22', markerPos 'Sector_22'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
		_SectorFIA_22 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_22 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_22 setTriggerInterval 5;
		_SectorFIA_22 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_22';
				_Flag = createMarker ['Objective_22', markerPos 'Sector_22'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_23
		_Flag_23 = createMarker ['Objective_23', markerPos 'Sector_23'];
		_Flag_23 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
		_SectorAAF_23 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_23 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_23 setTriggerInterval 5;
		_SectorAAF_23 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_23';
				_Flag = createMarker ['Objective_23', markerPos 'Sector_23'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
		_SectorFIA_23 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_23 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_23 setTriggerInterval 5;
		_SectorFIA_23 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_23';
				_Flag = createMarker ['Objective_23', markerPos 'Sector_23'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

	//Sector_24
		_Flag_24 = createMarker ['Objective_24', markerPos 'Sector_24'];
		_Flag_24 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
		_SectorAAF_24 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_24 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_24 setTriggerInterval 5;
		_SectorAAF_24 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_24';
				_Flag = createMarker ['Objective_24', markerPos 'Sector_24'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
				[] execVM "Reinforce.sqf";
			},""
		];

		_SectorFIA_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
		_SectorFIA_24 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_24 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_24 setTriggerInterval 5;
		_SectorFIA_24 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_24';
				_Flag = createMarker ['Objective_24', markerPos 'Sector_24'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
				[] execVM "Reinforce.sqf";
			},""
		];*/
};
/*
//Ticket Build Method (Ghetto)(Working)
If (isServer) then {

	//Sector_1
		_Flag_1 = createMarker ['Objective_1', markerPos 'Sector_1'];
		_Flag_1 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
		_SectorAAF_1 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_1 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_1 setTriggerInterval 5;
		_SectorAAF_1 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_1';
				_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
		_SectorFIA_1 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_1 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_1 setTriggerInterval 5;
		_SectorFIA_1 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_1';
				_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_2
		_Flag_2 = createMarker ['Objective_2', markerPos 'Sector_2'];
		_Flag_2 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
		_SectorAAF_2 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_2 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_2 setTriggerInterval 5;
		_SectorAAF_2 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_2';
				_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
		_SectorFIA_2 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_2 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_2 setTriggerInterval 5;
		_SectorFIA_2 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_2';
				_Flag = createMarker ['Objective_2', markerPos 'Sector_2'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_3
		_Flag_3 = createMarker ['Objective_3', markerPos 'Sector_3'];
		_Flag_3 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
		_SectorAAF_3 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_3 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_3 setTriggerInterval 5;
		_SectorAAF_3 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_3';
				_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
		_SectorFIA_3 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_3 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_3 setTriggerInterval 5;
		_SectorFIA_3 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_3';
				_Flag = createMarker ['Objective_3', markerPos 'Sector_3'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_4
		_Flag_4 = createMarker ['Objective_4', markerPos 'Sector_4'];
		_Flag_4 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
		_SectorAAF_4 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_4 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_4 setTriggerInterval 5;
		_SectorAAF_4 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_4';
				_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
		_SectorFIA_4 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_4 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_4 setTriggerInterval 5;
		_SectorFIA_4 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_4';
				_Flag = createMarker ['Objective_4', markerPos 'Sector_4'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_5
		_Flag_5 = createMarker ['Objective_5', markerPos 'Sector_5'];
		_Flag_5 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
		_SectorAAF_5 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_5 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_5 setTriggerInterval 5;
		_SectorAAF_5 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_5';
				_Flag = createMarker ['Objective_5', markerPos 'Sector_5'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
		_SectorFIA_5 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_5 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_5 setTriggerInterval 5;
		_SectorFIA_5 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_5';
				_Flag = createMarker ['Objective_5', markerPos 'Sector_5'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_6
		_Flag_6 = createMarker ['Objective_6', markerPos 'Sector_6'];
		_Flag_6 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
		_SectorAAF_6 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_6 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_6 setTriggerInterval 5;
		_SectorAAF_6 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_6';
				_Flag = createMarker ['Objective_6', markerPos 'Sector_6'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
		_SectorFIA_6 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_6 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_6 setTriggerInterval 5;
		_SectorFIA_6 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_6';
				_Flag = createMarker ['Objective_6', markerPos 'Sector_6'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_7
		_Flag_7 = createMarker ['Objective_7', markerPos 'Sector_7'];
		_Flag_7 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
		_SectorAAF_7 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_7 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_7 setTriggerInterval 5;
		_SectorAAF_7 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_7';
				_Flag = createMarker ['Objective_7', markerPos 'Sector_7'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
		_SectorFIA_7 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_7 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_7 setTriggerInterval 5;
		_SectorFIA_7 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_7';
				_Flag = createMarker ['Objective_7', markerPos 'Sector_7'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_8
		_Flag_8 = createMarker ['Objective_8', markerPos 'Sector_8'];
		_Flag_8 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
		_SectorAAF_8 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_8 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_8 setTriggerInterval 5;
		_SectorAAF_8 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_8';
				_Flag = createMarker ['Objective_8', markerPos 'Sector_8'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
		_SectorFIA_8 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_8 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_8 setTriggerInterval 5;
		_SectorFIA_8 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_8';
				_Flag = createMarker ['Objective_8', markerPos 'Sector_8'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_9
		_Flag_9 = createMarker ['Objective_9', markerPos 'Sector_9'];
		_Flag_9 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
		_SectorAAF_9 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_9 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_9 setTriggerInterval 5;
		_SectorAAF_9 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_9';
				_Flag = createMarker ['Objective_9', markerPos 'Sector_9'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
		_SectorFIA_9 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_9 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_9 setTriggerInterval 5;
		_SectorFIA_9 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_9';
				_Flag = createMarker ['Objective_9', markerPos 'Sector_9'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_10
		_Flag_10 = createMarker ['Objective_10', markerPos 'Sector_10'];
		_Flag_10 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
		_SectorAAF_10 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_10 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_10 setTriggerInterval 5;
		_SectorAAF_10 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_10';
				_Flag = createMarker ['Objective_10', markerPos 'Sector_10'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
		_SectorFIA_10 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_10 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_10 setTriggerInterval 5;
		_SectorFIA_10 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_10';
				_Flag = createMarker ['Objective_10', markerPos 'Sector_10'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_11
		_Flag_11 = createMarker ['Objective_11', markerPos 'Sector_11'];
		_Flag_11 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
		_SectorAAF_11 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_11 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_11 setTriggerInterval 5;
		_SectorAAF_11 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_11';
				_Flag = createMarker ['Objective_11', markerPos 'Sector_11'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
		_SectorFIA_11 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_11 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_11 setTriggerInterval 5;
		_SectorFIA_11 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_11';
				_Flag = createMarker ['Objective_11', markerPos 'Sector_11'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_12
		_Flag_12 = createMarker ['Objective_12', markerPos 'Sector_12'];
		_Flag_12 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
		_SectorAAF_12 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_12 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_12 setTriggerInterval 5;
		_SectorAAF_12 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_12';
				_Flag = createMarker ['Objective_12', markerPos 'Sector_12'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
		_SectorFIA_12 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_12 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_12 setTriggerInterval 5;
		_SectorFIA_12 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_12';
				_Flag = createMarker ['Objective_12', markerPos 'Sector_12'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_13
		_Flag_13 = createMarker ['Objective_13', markerPos 'Sector_13'];
		_Flag_13 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
		_SectorAAF_13 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_13 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_13 setTriggerInterval 5;
		_SectorAAF_13 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_13';
				_Flag = createMarker ['Objective_13', markerPos 'Sector_13'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
		_SectorFIA_13 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_13 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_13 setTriggerInterval 5;
		_SectorFIA_13 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_13';
				_Flag = createMarker ['Objective_13', markerPos 'Sector_13'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_14
		_Flag_14 = createMarker ['Objective_14', markerPos 'Sector_14'];
		_Flag_14 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
		_SectorAAF_14 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_14 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_14 setTriggerInterval 5;
		_SectorAAF_14 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_14';
				_Flag = createMarker ['Objective_14', markerPos 'Sector_14'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
		_SectorFIA_14 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_14 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_14 setTriggerInterval 5;
		_SectorFIA_14 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_14';
				_Flag = createMarker ['Objective_14', markerPos 'Sector_14'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_15
		_Flag_15 = createMarker ['Objective_15', markerPos 'Sector_15'];
		_Flag_15 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
		_SectorAAF_15 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_15 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_15 setTriggerInterval 5;
		_SectorAAF_15 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_15';
				_Flag = createMarker ['Objective_15', markerPos 'Sector_15'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
		_SectorFIA_15 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_15 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_15 setTriggerInterval 5;
		_SectorFIA_15 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_15';
				_Flag = createMarker ['Objective_15', markerPos 'Sector_15'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_16
		_Flag_16 = createMarker ['Objective_16', markerPos 'Sector_16'];
		_Flag_16 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
		_SectorAAF_16 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_16 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_16 setTriggerInterval 5;
		_SectorAAF_16 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_16';
				_Flag = createMarker ['Objective_16', markerPos 'Sector_16'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
		_SectorFIA_16 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_16 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_16 setTriggerInterval 5;
		_SectorFIA_16 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_16';
				_Flag = createMarker ['Objective_16', markerPos 'Sector_16'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_17
		_Flag_17 = createMarker ['Objective_17', markerPos 'Sector_17'];
		_Flag_17 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
		_SectorAAF_17 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_17 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_17 setTriggerInterval 5;
		_SectorAAF_17 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_17';
				_Flag = createMarker ['Objective_17', markerPos 'Sector_17'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
		_SectorFIA_17 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_17 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_17 setTriggerInterval 5;
		_SectorFIA_17 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_17';
				_Flag = createMarker ['Objective_17', markerPos 'Sector_17'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_18
		_Flag_18 = createMarker ['Objective_18', markerPos 'Sector_18'];
		_Flag_18 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
		_SectorAAF_18 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_18 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_18 setTriggerInterval 5;
		_SectorAAF_18 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_18';
				_Flag = createMarker ['Objective_18', markerPos 'Sector_18'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
		_SectorFIA_18 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_18 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_18 setTriggerInterval 5;
		_SectorFIA_18 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_18';
				_Flag = createMarker ['Objective_18', markerPos 'Sector_18'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_19
		_Flag_19 = createMarker ['Objective_19', markerPos 'Sector_19'];
		_Flag_19 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
		_SectorAAF_19 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_19 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_19 setTriggerInterval 5;
		_SectorAAF_19 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_19';
				_Flag = createMarker ['Objective_19', markerPos 'Sector_19'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
		_SectorFIA_19 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_19 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_19 setTriggerInterval 5;
		_SectorFIA_19 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_19';
				_Flag = createMarker ['Objective_19', markerPos 'Sector_19'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_20
		_Flag_20 = createMarker ['Objective_20', markerPos 'Sector_20'];
		_Flag_20 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
		_SectorAAF_20 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_20 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_20 setTriggerInterval 5;
		_SectorAAF_20 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_20';
				_Flag = createMarker ['Objective_20', markerPos 'Sector_20'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
		_SectorFIA_20 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_20 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_20 setTriggerInterval 5;
		_SectorFIA_20 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_20';
				_Flag = createMarker ['Objective_20', markerPos 'Sector_20'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_21
		_Flag_21 = createMarker ['Objective_21', markerPos 'Sector_21'];
		_Flag_21 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
		_SectorAAF_21 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_21 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_21 setTriggerInterval 5;
		_SectorAAF_21 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_21';
				_Flag = createMarker ['Objective_21', markerPos 'Sector_21'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
		_SectorFIA_21 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_21 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_21 setTriggerInterval 5;
		_SectorFIA_21 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_21';
				_Flag = createMarker ['Objective_21', markerPos 'Sector_21'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_22
		_Flag_22 = createMarker ['Objective_22', markerPos 'Sector_22'];
		_Flag_22 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
		_SectorAAF_22 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_22 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_22 setTriggerInterval 5;
		_SectorAAF_22 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_22';
				_Flag = createMarker ['Objective_22', markerPos 'Sector_22'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
		_SectorFIA_22 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_22 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_22 setTriggerInterval 5;
		_SectorFIA_22 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_22';
				_Flag = createMarker ['Objective_22', markerPos 'Sector_22'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_23
		_Flag_23 = createMarker ['Objective_23', markerPos 'Sector_23'];
		_Flag_23 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
		_SectorAAF_23 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_23 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_23 setTriggerInterval 5;
		_SectorAAF_23 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_23';
				_Flag = createMarker ['Objective_23', markerPos 'Sector_23'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
		_SectorFIA_23 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_23 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_23 setTriggerInterval 5;
		_SectorFIA_23 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_23';
				_Flag = createMarker ['Objective_23', markerPos 'Sector_23'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];

	//Sector_24
		_Flag_24 = createMarker ['Objective_24', markerPos 'Sector_24'];
		_Flag_24 setMarkerType 'hd_objective_noShadow';

		_SectorAAF_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
		_SectorAAF_24 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorAAF_24 setTriggerArea [100, 100, getDir this, true];
		_SectorAAF_24 setTriggerInterval 5;
		_SectorAAF_24 setTriggerStatements [
			toString {West countSide thisList < 0.4*(East countSide thisList);},
			toString {
				DeleteMarker 'Objective_24';
				_Flag = createMarker ['Objective_24', markerPos 'Sector_24'];
				_Flag setMarkerType 'Flag_Altis';
				RedTickets = RedTickets +30;
				PublicVariable 'RedTickets';
			},""
		];

		_SectorFIA_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
		_SectorFIA_24 setTriggerActivation ["ANY", "PRESENT", true];
		_SectorFIA_24 setTriggerArea [100, 100, getDir this, true];
		_SectorFIA_24 setTriggerInterval 5;
		_SectorFIA_24 setTriggerStatements [
			toString {East countSide thisList < 0.4*(West countSide thisList);},
			toString {
				DeleteMarker 'Objective_24';
				_Flag = createMarker ['Objective_24', markerPos 'Sector_24'];
				_Flag setMarkerType 'Flag_FIA';
				BluTickets = BluTickets +30;
				PublicVariable 'BluTickets';
			},""
		];
};

/* Ticket Bleed Method (WIP)
If (isServer) then {
	_Flag_1 = createMarker ['Objective_1', markerPos 'Sector_1'];
	_Flag_1 setMarkerType 'hd_objective_noShadow';

	//Red Trigger 1
	_SectorAAF_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorAAF_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_1 setTriggerArea [100, 100, getDir this, true];
	_SectorAAF_1 setTriggerInterval 5;
	_SectorAAF_1 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			DeleteMarker 'Objective_1';
			_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
			_Flag setMarkerType 'Flag_Altis';
			private _lastOwner = thisTrigger getVariable ['currentOwner', sideUnknown];
			If (_lastOwner == West) then {
				BluZones = BluZones -1;
				PublicVariable 'BluZones';
				If (BluTickets < 1) then {
					'RedWin' remoteExecCall ['BIS_fnc_endMission', 0];
				};
			};
			thisTrigger setVariable ["currentOwner", East, true];
			RedZones = RedZones +1;
			PublicVariable 'RedZones';
        },""
	];

	//Blue Trigger 1
	_SectorFIA_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorFIA_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_1 setTriggerArea [100, 100, getDir this, true];
	_SectorFIA_1 setTriggerInterval 5;
	_SectorFIA_1 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			DeleteMarker 'Objective_1';
			_Flag = createMarker ['Objective_1', markerPos 'Sector_1'];
			_Flag setMarkerType 'Flag_FIA';
			private _lastOwner = thisTrigger getVariable ['currentOwner', sideUnknown];
			If (_lastOwner == East) then {
				RedZones = RedZones -1;
				PublicVariable 'RedZones';
				If (RedTickets < 1) then {
					'BluWin' remoteExecCall ['BIS_fnc_endMission', 0];
				};
			};
			thisTrigger setVariable ["currentOwner", West, true];
			BluZones = BluZones +1;
			PublicVariable 'BluZones';
        },""
	];
};