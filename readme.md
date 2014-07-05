**Epoch Headless Client**
================

--------------------------
Description
--------------------------
This is a headless client effort for DayZ Epoch.

It works by having a client without gui connecting to the server from the same machine, and having the server offload demanding tasks to that client freeing the server to focus more on connectivity stuff and less on the demanding bottlenecks.

--------------------------
Installation
--------------------------
Battleye configuration
Add the following exceptions to publicvariable.txt
!="PV_HCRequest_spawn" !="PV_HCHeartbeat" !="PV_HCList" !="PV_HCDo_spawn" !="PV_HCRequest_spawn"

Add the following to the server configuration cfg file:
localclient[] = {"127.0.0.1"};

Edit the mission.sqf file, in the Groups class, change items to items=3.

After the class Item1 ends "};", add the following:

 class Item2 //<--
 {
 	side="CIV";
 	class Vehicles
 	{
 		items=1;
 		class Item0
 		{
 			position[]={4078.8516,30.836605,4757.7241};
 			id=0;
 			side="CIV";
 			vehicle="Survivor1_DZ";
 			player="PLAYER COMMANDER";
 			skill=0.60000002;
 			text="Server";
 			init="this allowDamage false";
 			description="Server";
 			name="Server";
 			forceHeadlessClient=1;
 		};
 	};
 };

In the init.sqf file, add the following to the bottom of the file:
 [] execVM "hc\init.sqf";
 
Copy the hc directory from this repository and put it in your mission file.

Lastly, to start the headless client use the following command line:
 arma2oa_be.exe 0 0 -skipintro -nosplash -noPause -client -connect 127.0.0.1 -port:2302 -nosound "-mod=@dayz_epoch" -cpuCount=2 -name=HeadlessClient -profiles=HeadlessClient


--------------------------
Credits
--------------------------
* Goober - Initial source - http://epochmod.com/forum/index.php?/topic/6329-working-dayz-epoch-headless-client-for-zed-spawn-and-fsm/


--------------------------
Status
--------------------------
Current version: Alpha (aka. "development hell")

The master branch is development branch as there have yet to be a stable release. Commits may break code.

This is experimental and not yet intended for live use. Use at your own risk.