# arma_stopCiv
Orders near civillian drivers to stop and get out of their vehicle

# Installtion
Execute the initServer.sqf

# Usage
Play the animation to stop a civ.


To add more animations, names can be found like this:
```sqf
["ace_common_playActionNow", {systemChat str (_this select 1)}] call CBA_fnc_addEventHandler
```
