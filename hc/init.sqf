if (!isServer && !hasInterface) then
{
	/*
		Settings
	*/
	dayz_maxLocalZombies = 160; // Default = 40
	dayz_maxGlobalZombiesInit = 160;
	dayz_maxGlobalZombiesIncrease = 40;
	dayz_maxZeds = 2000;
	
	call compile preprocessFileLineNumbers "compiles.sqf";
	call compile preprocessFileLineNumbers "system\HCsignals.sqf"; // passing signals;
	call compile preprocessFileLineNumbers "system\handle_HCdo_spawnRCV.sqf";
};

if (isServer) then
{
	call compile preprocessFileLineNumbers "system\HCsignals.sqf"; // passing signals;
};