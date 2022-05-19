/* Control Sector
A zone which can be captured,
contributes and deducts tickets from appropriate pools,
and marks the map appropriately without gamey notification.

To do:
Blacklist location [0,0,0] for cleanliness, ease of development, testing, and use.
Remove redundancy.
Multiple zones should be placed based on map features and size.
Have zones trigger respawn waves when captured or lost.
Have zones bleed tickets based on ownership ratio,
rather than direct ticket addition and subtraction.
*/

//Sectors
If (isServer) then {
	
	//Sector_1
	'Sector_1' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_1
	_SectorAAF_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorAAF_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_1 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_1 setTriggerInterval 60;
	_SectorAAF_1 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_1'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_1' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_1
	_SectorFIA_1 = createTrigger ["EmptyDetector", markerPos "Sector_1", false];
	_SectorFIA_1 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_1 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_1 setTriggerInterval 60;
	_SectorFIA_1 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_1'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_1' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_2
	'Sector_2' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_2
	_SectorAAF_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
	_SectorAAF_2 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_2 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_2 setTriggerInterval 60;
	_SectorAAF_2 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_2'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_2' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_2
	_SectorFIA_2 = createTrigger ["EmptyDetector", markerPos "Sector_2", false];
	_SectorFIA_2 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_2 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_2 setTriggerInterval 60;
	_SectorFIA_2 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_2'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_2' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_3
	'Sector_3' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_3
	_SectorAAF_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
	_SectorAAF_3 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_3 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_3 setTriggerInterval 60;
	_SectorAAF_3 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_3'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_3' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_3
	_SectorFIA_3 = createTrigger ["EmptyDetector", markerPos "Sector_3", false];
	_SectorFIA_3 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_3 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_3 setTriggerInterval 60;
	_SectorFIA_3 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_3'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_3' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_4
	'Sector_4' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_4
	_SectorAAF_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
	_SectorAAF_4 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_4 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_4 setTriggerInterval 60;
	_SectorAAF_4 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_4'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_4' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_4
	_SectorFIA_4 = createTrigger ["EmptyDetector", markerPos "Sector_4", false];
	_SectorFIA_4 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_4 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_4 setTriggerInterval 60;
	_SectorFIA_4 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_4'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_4' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];

	//Sector_5
	'Sector_5' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_5
	_SectorAAF_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
	_SectorAAF_5 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_5 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_5 setTriggerInterval 60;
	_SectorAAF_5 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_5'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_5' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_5
	_SectorFIA_5 = createTrigger ["EmptyDetector", markerPos "Sector_5", false];
	_SectorFIA_5 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_5 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_5 setTriggerInterval 60;
	_SectorFIA_5 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_5'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_5' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_6
	'Sector_6' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_6
	_SectorAAF_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
	_SectorAAF_6 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_6 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_6 setTriggerInterval 60;
	_SectorAAF_6 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_6'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_6' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_6
	_SectorFIA_6 = createTrigger ["EmptyDetector", markerPos "Sector_6", false];
	_SectorFIA_6 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_6 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_6 setTriggerInterval 60;
	_SectorFIA_6 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_6'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_6' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_7
	'Sector_7' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_7
	_SectorAAF_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
	_SectorAAF_7 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_7 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_7 setTriggerInterval 60;
	_SectorAAF_7 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_7'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_7' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_7
	_SectorFIA_7 = createTrigger ["EmptyDetector", markerPos "Sector_7", false];
	_SectorFIA_7 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_7 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_7 setTriggerInterval 60;
	_SectorFIA_7 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_7'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_7' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_8
	'Sector_8' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_8
	_SectorAAF_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
	_SectorAAF_8 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_8 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_8 setTriggerInterval 60;
	_SectorAAF_8 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_8'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_8' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_8
	_SectorFIA_8 = createTrigger ["EmptyDetector", markerPos "Sector_8", false];
	_SectorFIA_8 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_8 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_8 setTriggerInterval 60;
	_SectorFIA_8 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_8'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_8' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_9
	'Sector_9' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_9
	_SectorAAF_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
	_SectorAAF_9 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_9 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_9 setTriggerInterval 60;
	_SectorAAF_9 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_9'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_9' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_9
	_SectorFIA_9 = createTrigger ["EmptyDetector", markerPos "Sector_9", false];
	_SectorFIA_9 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_9 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_9 setTriggerInterval 60;
	_SectorFIA_9 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_9'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_9' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_10
	'Sector_10' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_10
	_SectorAAF_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
	_SectorAAF_10 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_10 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_10 setTriggerInterval 60;
	_SectorAAF_10 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_10'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_10' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_10
	_SectorFIA_10 = createTrigger ["EmptyDetector", markerPos "Sector_10", false];
	_SectorFIA_10 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_10 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_10 setTriggerInterval 60;
	_SectorFIA_10 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_10'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_10' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_11
	'Sector_11' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_11
	_SectorAAF_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
	_SectorAAF_11 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_11 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_11 setTriggerInterval 60;
	_SectorAAF_11 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_11'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_11' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_11
	_SectorFIA_11 = createTrigger ["EmptyDetector", markerPos "Sector_11", false];
	_SectorFIA_11 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_11 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_11 setTriggerInterval 60;
	_SectorFIA_11 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_11'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_11' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_12
	'Sector_12' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_12
	_SectorAAF_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
	_SectorAAF_12 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_12 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_12 setTriggerInterval 60;
	_SectorAAF_12 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_12'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_12' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_12
	_SectorFIA_12 = createTrigger ["EmptyDetector", markerPos "Sector_12", false];
	_SectorFIA_12 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_12 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_12 setTriggerInterval 60;
	_SectorFIA_12 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_12'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_12' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_13
	'Sector_13' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_13
	_SectorAAF_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
	_SectorAAF_13 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_13 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_13 setTriggerInterval 60;
	_SectorAAF_13 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_13'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_13' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_13
	_SectorFIA_13 = createTrigger ["EmptyDetector", markerPos "Sector_13", false];
	_SectorFIA_13 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_13 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_13 setTriggerInterval 60;
	_SectorFIA_13 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_13'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_13' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_14
	'Sector_14' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_14
	_SectorAAF_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
	_SectorAAF_14 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_14 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_14 setTriggerInterval 60;
	_SectorAAF_14 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_14'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_14' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_14
	_SectorFIA_14 = createTrigger ["EmptyDetector", markerPos "Sector_14", false];
	_SectorFIA_14 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_14 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_14 setTriggerInterval 60;
	_SectorFIA_14 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_14'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_14' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_15
	'Sector_15' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_15
	_SectorAAF_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
	_SectorAAF_15 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_15 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_15 setTriggerInterval 60;
	_SectorAAF_15 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_15'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_15' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_15
	_SectorFIA_15 = createTrigger ["EmptyDetector", markerPos "Sector_15", false];
	_SectorFIA_15 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_15 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_15 setTriggerInterval 60;
	_SectorFIA_15 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_15'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_15' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_16
	'Sector_16' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_16
	_SectorAAF_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
	_SectorAAF_16 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_16 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_16 setTriggerInterval 60;
	_SectorAAF_16 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_16'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_16' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_16
	_SectorFIA_16 = createTrigger ["EmptyDetector", markerPos "Sector_16", false];
	_SectorFIA_16 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_16 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_16 setTriggerInterval 60;
	_SectorFIA_16 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_16'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_16' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_17
	'Sector_17' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_17
	_SectorAAF_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
	_SectorAAF_17 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_17 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_17 setTriggerInterval 60;
	_SectorAAF_17 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_17'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_17' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_17
	_SectorFIA_17 = createTrigger ["EmptyDetector", markerPos "Sector_17", false];
	_SectorFIA_17 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_17 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_17 setTriggerInterval 60;
	_SectorFIA_17 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_17'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_17' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_18
	'Sector_18' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_18
	_SectorAAF_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
	_SectorAAF_18 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_18 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_18 setTriggerInterval 60;
	_SectorAAF_18 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_18'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_18' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_18
	_SectorFIA_18 = createTrigger ["EmptyDetector", markerPos "Sector_18", false];
	_SectorFIA_18 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_18 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_18 setTriggerInterval 60;
	_SectorFIA_18 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_18'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_18' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_19
	'Sector_19' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_19
	_SectorAAF_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
	_SectorAAF_19 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_19 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_19 setTriggerInterval 60;
	_SectorAAF_19 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_19'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_19' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_19
	_SectorFIA_19 = createTrigger ["EmptyDetector", markerPos "Sector_19", false];
	_SectorFIA_19 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_19 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_19 setTriggerInterval 60;
	_SectorFIA_19 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_19'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_19' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_20
	'Sector_20' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_20
	_SectorAAF_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
	_SectorAAF_20 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_20 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_20 setTriggerInterval 60;
	_SectorAAF_20 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_20'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_20' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_20
	_SectorFIA_20 = createTrigger ["EmptyDetector", markerPos "Sector_20", false];
	_SectorFIA_20 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_20 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_20 setTriggerInterval 60;
	_SectorFIA_20 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_20'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_20' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_21
	'Sector_21' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_21
	_SectorAAF_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
	_SectorAAF_21 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_21 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_21 setTriggerInterval 60;
	_SectorAAF_21 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_21'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_21' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_21
	_SectorFIA_21 = createTrigger ["EmptyDetector", markerPos "Sector_21", false];
	_SectorFIA_21 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_21 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_21 setTriggerInterval 60;
	_SectorFIA_21 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_21'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_21' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_22
	'Sector_22' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_22
	_SectorAAF_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
	_SectorAAF_22 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_22 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_22 setTriggerInterval 60;
	_SectorAAF_22 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_22'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_22' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_22
	_SectorFIA_22 = createTrigger ["EmptyDetector", markerPos "Sector_22", false];
	_SectorFIA_22 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_22 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_22 setTriggerInterval 60;
	_SectorFIA_22 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_22'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_22' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_23
	'Sector_23' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_23
	_SectorAAF_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
	_SectorAAF_23 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_23 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_23 setTriggerInterval 60;
	_SectorAAF_23 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_23'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_23' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_23
	_SectorFIA_23 = createTrigger ["EmptyDetector", markerPos "Sector_23", false];
	_SectorFIA_23 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_23 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_23 setTriggerInterval 60;
	_SectorFIA_23 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_23'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_23' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_24
	'Sector_24' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_24
	_SectorAAF_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
	_SectorAAF_24 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_24 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_24 setTriggerInterval 60;
	_SectorAAF_24 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_24'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_24' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_24
	_SectorFIA_24 = createTrigger ["EmptyDetector", markerPos "Sector_24", false];
	_SectorFIA_24 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_24 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_24 setTriggerInterval 60;
	_SectorFIA_24 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_24'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_24' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_25
	'Sector_25' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_25
	_SectorAAF_25 = createTrigger ["EmptyDetector", markerPos "Sector_25", false];
	_SectorAAF_25 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_25 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_25 setTriggerInterval 60;
	_SectorAAF_25 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_25'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_25' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_25
	_SectorFIA_25 = createTrigger ["EmptyDetector", markerPos "Sector_25", false];
	_SectorFIA_25 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_25 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_25 setTriggerInterval 60;
	_SectorFIA_25 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_25'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_25' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_26
	'Sector_26' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_26
	_SectorAAF_26 = createTrigger ["EmptyDetector", markerPos "Sector_26", false];
	_SectorAAF_26 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_26 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_26 setTriggerInterval 60;
	_SectorAAF_26 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_26'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_26' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_26
	_SectorFIA_26 = createTrigger ["EmptyDetector", markerPos "Sector_26", false];
	_SectorFIA_26 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_26 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_26 setTriggerInterval 60;
	_SectorFIA_26 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_26'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_26' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_27
	'Sector_27' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_27
	_SectorAAF_27 = createTrigger ["EmptyDetector", markerPos "Sector_27", false];
	_SectorAAF_27 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_27 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_27 setTriggerInterval 60;
	_SectorAAF_27 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_27'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_27' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_27
	_SectorFIA_27 = createTrigger ["EmptyDetector", markerPos "Sector_27", false];
	_SectorFIA_27 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_27 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_27 setTriggerInterval 60;
	_SectorFIA_27 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_27'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_27' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_28
	'Sector_28' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_28
	_SectorAAF_28 = createTrigger ["EmptyDetector", markerPos "Sector_28", false];
	_SectorAAF_28 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_28 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_28 setTriggerInterval 60;
	_SectorAAF_28 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_28'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_28' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_28
	_SectorFIA_28 = createTrigger ["EmptyDetector", markerPos "Sector_28", false];
	_SectorFIA_28 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_28 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_28 setTriggerInterval 60;
	_SectorFIA_28 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_28'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_28' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_29
	'Sector_29' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_29
	_SectorAAF_29 = createTrigger ["EmptyDetector", markerPos "Sector_29", false];
	_SectorAAF_29 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_29 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_29 setTriggerInterval 60;
	_SectorAAF_29 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_29'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_29' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_29
	_SectorFIA_29 = createTrigger ["EmptyDetector", markerPos "Sector_29", false];
	_SectorFIA_29 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_29 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_29 setTriggerInterval 60;
	_SectorFIA_29 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_29'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_29' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_30
	'Sector_30' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_30
	_SectorAAF_30 = createTrigger ["EmptyDetector", markerPos "Sector_30", false];
	_SectorAAF_30 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_30 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_30 setTriggerInterval 60;
	_SectorAAF_30 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_30'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_30' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_30
	_SectorFIA_30 = createTrigger ["EmptyDetector", markerPos "Sector_30", false];
	_SectorFIA_30 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_30 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_30 setTriggerInterval 60;
	_SectorFIA_30 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_30'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_30' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_31
	'Sector_31' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_31
	_SectorAAF_31 = createTrigger ["EmptyDetector", markerPos "Sector_31", false];
	_SectorAAF_31 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_31 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_31 setTriggerInterval 60;
	_SectorAAF_31 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_31'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_31' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_31
	_SectorFIA_31 = createTrigger ["EmptyDetector", markerPos "Sector_31", false];
	_SectorFIA_31 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_31 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_31 setTriggerInterval 60;
	_SectorFIA_31 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_31'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_31' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
	
	//Sector_32
	'Sector_32' setMarkerType 'hd_objective_noShadow';

	//RedTrigger_32
	_SectorAAF_32 = createTrigger ["EmptyDetector", markerPos "Sector_32", false];
	_SectorAAF_32 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorAAF_32 setTriggerArea [100, 100, getDir this, false];
	_SectorAAF_32 setTriggerInterval 60;
	_SectorAAF_32 setTriggerStatements [
        toString {West countSide thisList < 0.4*(East countSide thisList);},
        toString {
			If (markerType 'Sector_32'== 'Flag_FIA') then {
				BluZones = BluZones - 1;
				PublicVariable 'BluZones';
			};
			'Sector_32' setMarkerType 'Flag_Altis';
			RedZones = RedZones + 1;
			PublicVariable 'RedZones';
		},""
	];

	//BlueTrigger_32
	_SectorFIA_32 = createTrigger ["EmptyDetector", markerPos "Sector_32", false];
	_SectorFIA_32 setTriggerActivation ["ANY", "PRESENT", true];
	_SectorFIA_32 setTriggerArea [100, 100, getDir this, false];
	_SectorFIA_32 setTriggerInterval 60;
	_SectorFIA_32 setTriggerStatements [
        toString {East countSide thisList < 0.4*(West countSide thisList);},
        toString {
			If (markerType 'Sector_32'== 'Flag_Altis') then {
				RedZones = RedZones - 1;
				PublicVariable 'RedZones';
			};
			'Sector_32' setMarkerType 'Flag_FIA';
			BluZones = BluZones + 1;
			PublicVariable 'BluZones';
		},""
	];
};