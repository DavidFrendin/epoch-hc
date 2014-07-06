if (!isServer && !hasInterface) then
{
	diag_log "EHC: Initializing";
	
	/*
		Settings
	*/
	dayz_maxLocalZombies = 160; // Default = 40
	dayz_maxGlobalZombiesInit = 160;
	dayz_maxGlobalZombiesIncrease = 40;
	dayz_maxZeds = 2000;
	
	call compile preprocessFileLineNumbers "hc\compiles.sqf";
	call compile preprocessFileLineNumbers "hc\headless_client\handlers.sqf";
	call compile preprocessFileLineNumbers "hc\headless_client\heartbeat.sqf";
	
	//run player_monitor
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
};

if (isServer) then
{
	call compile preprocessFileLineNumbers "hc\server\handlers.sqf"; // passing signals;
};