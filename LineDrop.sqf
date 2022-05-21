//Static Line Drop
//For initial local force deployment.
//Part of a sequence. Incomplete.
Null = [] spawn {{
		if (((assignedVehicleRole _x) select 0) =="Cargo") then {
			[_x] ordergetin false;
			[_x] allowGetIn false;
			unassignvehicle _x;
			moveout _x;
			sleep 0.3;
			_chute = CreateVehicle ["B_Parachute_02_F", (getPos _x), [], 0, "NONE"];
			_chute setDir (180 + (getDir _DropVic));
			_chute setVelocity [0.3 * (speed _DropVic), 0, -8];
			_x attachTo [_chute, [0, 0, 1]];
			_x switchMove "para_pilot";
		};
	} forEach (crew _DropVic); 
}; 