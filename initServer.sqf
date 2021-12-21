["ace_common_playActionNow", { 
    params ["_unit","_animation"]; 
    if (_animation in ["ace_gestures_Hold", "ace_gestures_Freeze"]) then 
	{
		_nearVehicles = nearestObjects [_unit, ["Car", "Truck"], 20];
		{
			if (side (driver _x) == civilian) then 
			{
				(driver _x) action ["engineOff", _x];
				(driver _x) moveOut _x;
				unassignVehicle (driver _x);
				[(driver _x)] allowGetIn false;
			};
		} foreach _nearVehicles;
    };
}] remoteExec['CBA_fnc_addEventHandler', 0, true];


["ace_common_playActionNow", {systemChat str (_this select 1)}] call CBA_fnc_addEventHandler