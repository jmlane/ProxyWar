["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
_SetChannel = SetCurrentChannel 5;
0 EnableChannel False; //Global
1 EnableChannel True; //Side
2 EnableChannel False; //Command
3 EnableChannel True; //Group
4 EnableChannel False; //Vehicle
5 EnableChannel True; //Direct

/* To Do:
- Players may join custom channels.
- Players get static effect when recieving messages from too far away.
- Players with backpack radios have less static.
- Retransmission stations can reduce static.
- Players with terminals may transmit text messages?
*/