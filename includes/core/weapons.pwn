/*

	 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
	| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
	| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
	| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
	| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
	| $$\  $$$| $$  \ $$        | $$  \ $$| $$
	| $$ \  $$|  $$$$$$/        | $$  | $$| $$
	|__/  \__/ \______/         |__/  |__/|__/

						Weapons System

				GTA.Network, LLC
	(created by GTA.Network Development Team)
					
	* Copyright (c) 2016, GTA.Network, LLC
	*
	* All rights reserved.
	*
	* Redistribution and use in source and binary forms, with or without modification,
	* are not permitted in any case.
	*
	*
	* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
	* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
	* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
	* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
	* CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
	* EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
	* PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
	* PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
	* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
	* NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
	* SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

stock GetWeaponParam(id, WeaponsEnum: param)
{
	for (new i; i < sizeof(Weapons); i++)
	{
		if (Weapons[i][WeaponId] == id)	return Weapons[i][param];
	}
	return 0;
}

stock GivePlayerValidWeapon( playerid, WeaponID )
{
    #if defined zombiemode
   	if(zombieevent == 1 && GetPVarType(playerid, "pIsZombie")) return SendClientMessageEx(playerid, COLOR_GREY, "Zombies can't have guns.");
	#endif
	if(GetPVarType(playerid, "IsInArena") || GetPVarType(playerid, "EventToken")) {
		GivePlayerWeapon(playerid, WeaponID, 99999);
		return 1;
	}
	switch( WeaponID )
	{
  		case 0, 1:
		{
			PlayerInfo[playerid][pGuns][ 0 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 2, 3, 4, 5, 6, 7, 8, 9:
		{
			PlayerInfo[playerid][pGuns][ 1 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 22, 23, 24:
		{
			PlayerInfo[playerid][pGuns][ 2 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 25, 26, 27:
		{
			PlayerInfo[playerid][pGuns][ 3 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 28, 29, 32:
		{
			PlayerInfo[playerid][pGuns][ 4 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 30, 31:
		{
			PlayerInfo[playerid][pGuns][ 5 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 33, 34:
		{
			PlayerInfo[playerid][pGuns][ 6 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 35, 36, 37, 38:
		{
			PlayerInfo[playerid][pGuns][ 7 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 16, 17, 18, 39, 40:
		{
			PlayerInfo[playerid][pGuns][ 8 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 41, 42, 43:
		{
			PlayerInfo[playerid][pGuns][ 9 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 10, 11, 12, 13, 14, 15:
		{
			PlayerInfo[playerid][pGuns][ 10 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
		case 44, 45, 46:
		{
			PlayerInfo[playerid][pGuns][ 11 ] = WeaponID;
			GivePlayerWeapon( playerid, WeaponID, 99999 );
		}
	}

	GivePlayerWeapon(playerid, WeaponID, 1);	
	return 1;
}

stock IsWeaponHandgun(weaponid) {
	switch(weaponid) {
		case 2..8: return true;
		case 10..24: return true;
		default: return false;
	}
	return false;
}

stock IsWeaponPrimary(weaponid) {
	switch(weaponid) {
		case 25..34: return true;
		default: return false;
	}
	return false;
}

forward SetPlayerWeapons(playerid);
public SetPlayerWeapons(playerid)
{
	if(HungerPlayerInfo[playerid][hgInEvent] == 1) { return 1;}
    if(GetPVarType(playerid, "IsInArena")) return 1;
	ResetPlayerWeapons(playerid);
	for(new s = 0; s < 12; s++)
	{
		if(PlayerInfo[playerid][pGuns][s] > 0 && PlayerInfo[playerid][pAGuns][s] == 0)
		{
			if(zombieevent) GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
			else GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
		}
	}
	return 1;
}

stock SetPlayerWeaponsEx(playerid)
{
	if(GetPVarType(playerid, "IsInArena")) return 1;
	ResetPlayerWeapons(playerid);
	for(new s = 0; s < 12; s++)
	{
		if(PlayerInfo[playerid][pGuns][s] > 0)
		{
			if(zombieevent) GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
			else GivePlayerValidWeapon(playerid, PlayerInfo[playerid][pGuns][s]);
		}
	}
	SetPlayerArmedWeapon(playerid, GetPVarInt(playerid, "LastWeapon"));
	return 1;
}

stock ResetPlayerWeaponsEx( playerid )
{
	DeletePVar(playerid, "HidingKnife");
	ResetPlayerWeapons(playerid);
	PlayerInfo[playerid][pGuns][ 0 ] = 0;
	PlayerInfo[playerid][pGuns][ 1 ] = 0;
	PlayerInfo[playerid][pGuns][ 2 ] = 0;
	PlayerInfo[playerid][pGuns][ 3 ] = 0;
	PlayerInfo[playerid][pGuns][ 4 ] = 0;
	PlayerInfo[playerid][pGuns][ 5 ] = 0;
	PlayerInfo[playerid][pGuns][ 6 ] = 0;
	PlayerInfo[playerid][pGuns][ 7 ] = 0;
	PlayerInfo[playerid][pGuns][ 8 ] = 0;
	PlayerInfo[playerid][pGuns][ 9 ] = 0;
	PlayerInfo[playerid][pGuns][ 10 ] = 0;
	PlayerInfo[playerid][pGuns][ 11 ] = 0;
	PlayerInfo[playerid][pAGuns][ 0 ] = 0;
	PlayerInfo[playerid][pAGuns][ 1 ] = 0;
	PlayerInfo[playerid][pAGuns][ 2 ] = 0;
	PlayerInfo[playerid][pAGuns][ 3 ] = 0;
	PlayerInfo[playerid][pAGuns][ 4 ] = 0;
	PlayerInfo[playerid][pAGuns][ 5 ] = 0;
	PlayerInfo[playerid][pAGuns][ 6 ] = 0;
	PlayerInfo[playerid][pAGuns][ 7 ] = 0;
	PlayerInfo[playerid][pAGuns][ 8 ] = 0;
	PlayerInfo[playerid][pAGuns][ 9 ] = 0;
	PlayerInfo[playerid][pAGuns][ 10 ] = 0;
	PlayerInfo[playerid][pAGuns][ 11 ] = 0;
	return 1;
}


forward UnholsterWeapon(playerid, iWeaponSlot);
public UnholsterWeapon(playerid, iWeaponSlot)
{
	new string[128];
	
	if(iWeaponSlot == 0)
	{
		SetPVarInt(playerid, "WeaponsHolstered", 1);
		format(string, sizeof(string), "* %s holsters their weapon.", GetPlayerNameEx(playerid), ReturnWeaponName(PlayerInfo[playerid][pGuns][iWeaponSlot]));
		
	}
	else
	{
		SetPVarInt(playerid, "WeaponsHolstered", 0);
		format(string, sizeof(string), "* %s unholsters their %s.", GetPlayerNameEx(playerid), ReturnWeaponName(PlayerInfo[playerid][pGuns][iWeaponSlot]));
	}
	
	SetPlayerArmedWeapon(playerid, PlayerInfo[playerid][pGuns][iWeaponSlot]);
	PlayerInfo[playerid][pHolsteredWeapon] = iWeaponSlot;
	
	ProxDetector(4.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	
	
	
	return 1;
}

ReturnWeaponName(iWeaponID) {

	new
		szName[32];

	switch(iWeaponID) {
		case 0: szName = "fist";
		case 1: szName = "brass knuckles";
		case 2: szName = "golf club";
		case 3: szName = "nitestick";
		case 4: szName = "knife";
		case 5: szName = "baseball bat";
		case 6: szName = "shovel";
		case 7: szName = "pool cue";
		case 8: szName = "katana";
		case 9: szName = "chainsaw";
		case 10: szName = "purple dildo";
		case 11: szName = "white vibrator";
		case 12: szName = "white vibrator";
		case 13: szName = "silver vibrator";
		case 14: szName = "flowers";
		case 15: szName = "cane";
		case 16: szName = "grenade";
		case 17: szName = "tear gas";
		case 18: szName = "molotov cocktail";
		case 19: szName = "jetpack";
		case 20: szName = "";
		case 21: szName = "";
		case 22: szName = "Colt .45";
		case 23: szName = "silenced Colt .45";
		case 24: szName = "Desert Eagle";
		case 25: szName = "shotgun";
		case 26: szName = "sawn-off shotgun";
		case 27: szName = "SPAS-12";
		case 28: szName = "Micro Uzi";
		case 29: szName = "MP5";
		case 30: szName = "AK-47";
		case 31: szName = "M4A1";
		case 32: szName = "TEC-9";
		case 33: szName = "rifle";
		case 34: szName = "sniper rifle";
		case 35: szName = "RPG";
		case 36: szName = "heatseeker";
		case 37: szName = "flamethrower";
		case 38: szName = "minigun";
		case 39: szName = "satchel charge";
		case 40: szName = "detonator";
		case 41: szName = "spray can";
		case 42: szName = "fire extinguisher";
		case 43: szName = "camera";
		case 44: szName = "nightvision goggles";
		case 45: szName = "thermal goggles";
		case 46: szName = "parachute";
	}
	return szName;
}

GetWeaponSlot(iWeaponID) {
	switch(iWeaponID) {
		case 0, 1:
			return 0;
		case 2 .. 9:
			return 1;
		case 22 .. 24:
			return 2;
		case 25 .. 27:
			return 3;
		case 28, 29, 32:
			return 4;
		case 30, 31:
			return 5;
		case 33, 34:
			return 6;
		case 35 .. 38:
			return 7;
		case 16 .. 18, 39, 40:
			return 8;
		case 41 .. 43:
			return 9;
		case 10 .. 15:
			return 10;
		case 44 .. 46:
			return 11;
	}
	return -1;
}

OnPlayerChangeWeapon(playerid, newweapon)
{
	if(pTazer{playerid} == 1) SetPlayerArmedWeapon(playerid,23);
	if(GetPVarInt(playerid, "WeaponsHolstered") == 1)
	{
	    SetPlayerArmedWeapon(playerid, 0);
	}
	
	/*if(Weapon_ReturnSlot(newweapon) != PlayerInfo[playerid][pHolsteredWeapon])
	{
		SetPlayerArmedWeapon(playerid, PlayerInfo[playerid][pGuns][PlayerInfo[playerid][pHolsteredWeapon]]);
	}*/

 	if(GetPVarType(playerid, "IsInArena"))
	{
	    new a = GetPVarInt(playerid, "IsInArena");
	    if(PaintBallArena[a][pbGameType] == 3)
	    {
	        if(PaintBallArena[a][pbFlagNoWeapons] == 1)
	        {
	        	if(GetPVarInt(playerid, "AOSlotPaintballFlag") != -1)
	        	{
					SetPlayerArmedWeapon(playerid, 0);
	        	}
			}
	    }
	}

	if(PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pASM] < 1)
	{
		if(HungerPlayerInfo[playerid][hgInEvent] != 0) return 1;
		if(GetPVarInt(playerid, "EventToken") != 0) return 1;
		if(GetPlayerState(playerid) == PLAYER_STATE_NONE || GetPlayerState(playerid) == PLAYER_STATE_DRIVER || GetPlayerState(playerid) == PLAYER_STATE_WASTED || GetPlayerState(playerid) == PLAYER_STATE_SPAWNED || GetPlayerState(playerid) == PLAYER_STATE_SPECTATING) return 1;

		if( PlayerInfo[playerid][pGuns][1] != 2 && GetPlayerWeapon( playerid ) == 2)
		{
		    // Don't really care about golf club hacking do we?
			//ExecuteHackerAction( playerid, newweapon );
		}
		else if( PlayerInfo[playerid][pGuns][1] != 3 && GetPlayerWeapon( playerid ) == 3)
		{
			ExecuteHackerAction( playerid, newweapon );
		}
		else if( PlayerInfo[playerid][pGuns][1] != 4 && GetPlayerWeapon( playerid ) == 4)
		{
		    if(PlayerInfo[playerid][pLevel] < 2 || PlayerInfo[playerid][pMember] != 8)
		    {
			    new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
			ExecuteHackerAction( playerid, newweapon );
		}
		else if( PlayerInfo[playerid][pGuns][1] != 5 && GetPlayerWeapon( playerid ) == 5)
		{
			ExecuteHackerAction( playerid, newweapon );
		}
        else if( PlayerInfo[playerid][pGuns][1] != 6 && GetPlayerWeapon( playerid ) == 6)
		{
			ExecuteHackerAction( playerid, newweapon );
		}
		else if( PlayerInfo[playerid][pGuns][1] != 7 && GetPlayerWeapon( playerid ) == 7)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][1] != 8 && GetPlayerWeapon( playerid ) == 8)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][1] != 9 && GetPlayerWeapon( playerid ) == 9)
        {
            if(PlayerInfo[playerid][pLevel] < 2)
		    {
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
			ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][2] != 22 && GetPlayerWeapon( playerid ) == 22)
        {
            if(PlayerInfo[playerid][pLevel] < 2)
		    {
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][2] != 23 && GetPlayerWeapon( playerid ) == 23)
        {
            if(IsACop(playerid) || PlayerInfo[playerid][pMember] == 4 && PlayerInfo[playerid][pDivision] == 2 || PlayerInfo[playerid][pMember] == 4 && PlayerInfo[playerid][pRank] >= 5) {}
            else
            {
            	if(PlayerInfo[playerid][pLevel] < 2)
			    {
			    new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
				}
            	ExecuteHackerAction( playerid, newweapon );
            }
        }
        else if( PlayerInfo[playerid][pGuns][2] != 24 && GetPlayerWeapon( playerid ) == 24)
        {
            if(IsACop(playerid)) {}
            else
            {
                if(PlayerInfo[playerid][pLevel] < 2)
			    {
			    	new WeaponName[32];
					GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
					new String[128];
		            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
					ABroadCast( COLOR_LIGHTRED, String, 2 );
					SendClientMessage(playerid, COLOR_LIGHTRED, String );
					SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
					
					ResetPlayerWeaponsEx(playerid);
					new playerip[32];
					GetPlayerIp(playerid, playerip, sizeof(playerip));
					format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
					
					Log("logs/HackVuKhi.log", String);
					SetTimerEx("KickEx", 1000, 0, "i", playerid);
				}
            	ExecuteHackerAction( playerid, newweapon );
            }
        }
        else if( PlayerInfo[playerid][pGuns][3] != 25 && GetPlayerWeapon( playerid ) == 25)
        {
            if(IsACop(playerid)) {}
            else
            {
                if(PlayerInfo[playerid][pLevel] < 2)
			    {
				    new WeaponName[32];
					GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
					new String[128];
		            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
					ABroadCast( COLOR_LIGHTRED, String, 2 );
					SendClientMessage(playerid, COLOR_LIGHTRED, String );
					SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
					
					ResetPlayerWeaponsEx(playerid);
					new playerip[32];
					GetPlayerIp(playerid, playerip, sizeof(playerip));
					format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
					
					Log("logs/HackVuKhi.log", String);
					SetTimerEx("KickEx", 1000, 0, "i", playerid);
				}
            	ExecuteHackerAction( playerid, newweapon );
            }
        }
        else if( PlayerInfo[playerid][pGuns][3] != 26 && GetPlayerWeapon( playerid ) == 26)
        {
            if(PlayerInfo[playerid][pLevel] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][3] != 27 && GetPlayerWeapon( playerid ) == 27)
        {
            if(PlayerInfo[playerid][pLevel] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][4] != 28 && GetPlayerWeapon( playerid ) == 28)
        {
            if(PlayerInfo[playerid][pLevel] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][4] != 29 && GetPlayerWeapon( playerid ) == 29)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][5] != 30 && GetPlayerWeapon( playerid ) == 30)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][4] != 32 && GetPlayerWeapon( playerid ) == 32)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][5] != 31 && GetPlayerWeapon( playerid ) == 31)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][6] != 33 && GetPlayerWeapon( playerid ) == 33)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][6] != 34 && GetPlayerWeapon( playerid ) == 34)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][7] != 35 && GetPlayerWeapon( playerid ) == 35)
        {
            	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
            	ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][7] != 36 && GetPlayerWeapon( playerid ) == 36)
        {
            	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
            	ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][7] != 37 && GetPlayerWeapon( playerid ) == 37)
        {
				new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
	            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][7] != 38 && GetPlayerWeapon( playerid ) == 38)
        {
            	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
            	ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][8] != 16 && GetPlayerWeapon( playerid ) == 16)
        {
            	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
            	ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][8] != 17 && GetPlayerWeapon( playerid ) == 17)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][8] != 18 && GetPlayerWeapon( playerid ) == 18)
        {
            	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
            	ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][8] != 39 && GetPlayerWeapon( playerid ) == 39)
        {
            	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
            	ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][9] != 41 && GetPlayerWeapon( playerid ) == 41)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);

				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][9] != 42 && GetPlayerWeapon( playerid ) == 42)
        {
            if(PlayerInfo[playerid][pConnectHours] < 2)
    		{
		    	new WeaponName[32];
				GetWeaponName(newweapon, WeaponName, sizeof(WeaponName));
				new String[128];
	            format( String, sizeof( String ), "AdmCmd: %s da bi kick boi he thong, ly do: Hack vu khi (%s).", GetPlayerNameEx(playerid), WeaponName );
				ABroadCast( COLOR_LIGHTRED, String, 2 );
				SendClientMessage(playerid, COLOR_LIGHTRED, String );
				SetPVarInt(playerid, "_HACK_WARNINGS", 0 );
				ResetPlayerWeaponsEx(playerid);
				new playerip[32];
				GetPlayerIp(playerid, playerip, sizeof(playerip));
				format( String, sizeof( String ), "AdmCmd: %s (IP:%s) nghi van: Hack vu khi (%s)", GetPlayerNameEx(playerid), playerip, WeaponName);
				
				Log("logs/HackVuKhi.log", String);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
			}
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][9] != 43 && GetPlayerWeapon( playerid ) == 43)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][10] != 11 && GetPlayerWeapon( playerid ) == 11)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][10] != 12 && GetPlayerWeapon( playerid ) == 12)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][10] != 13 && GetPlayerWeapon( playerid ) == 13)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][10] != 14 && GetPlayerWeapon( playerid ) == 14)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][10] != 15 && GetPlayerWeapon( playerid ) == 15)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][11] != 44 && GetPlayerWeapon( playerid ) == 44)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][11] != 45 && GetPlayerWeapon( playerid ) == 45)
        {
            ExecuteHackerAction( playerid, newweapon );
        }
        else if( PlayerInfo[playerid][pGuns][11] != 46 && GetPlayerWeapon( playerid ) == 46)
        {
            PlayerInfo[playerid][pGuns][11] = 46;
        }
	}

	if(GetPlayerState(playerid) == PLAYER_STATE_PASSENGER)
	{
	   	if(!IsADriveByWeapon(GetPlayerWeapon(playerid)) && !IsADriveByWeapon(GetPVarInt(playerid, "LastWeapon"))) SetPlayerArmedWeapon(playerid,0);
	}
	return 1;
}

Weapon_ReturnName(iModelID) {

	new
		szWepName[32] = "(none)";

	switch(iModelID) {
		case 0: szWepName = "punch";
		case 1: szWepName = "Brass Knuckles";
		case 2: szWepName = "Golf Club";
		case 3: szWepName = "Nitestick";
		case 4: szWepName = "Knife";
		case 5: szWepName = "Baseball Bat";
		case 6: szWepName = "Shovel";
		case 7: szWepName = "Pool Cue";
		case 8: szWepName = "Katana";
		case 9: szWepName = "Chainsaw";
		case 10: szWepName = "Purple Dildo";
		case 11: szWepName = "Small White Vibrator";
		case 12: szWepName = "Large White Vibrator";
		case 13: szWepName = "Silver Vibrator";
		case 14: szWepName = "Bouquet of Flowers";
		case 15: szWepName = "Cane";
		case 16: szWepName = "Grenade";
		case 17: szWepName = "Tear Gas";
		case 18: szWepName = "Molotov Cocktail";
		case 19: szWepName = "Jetpack";
		case 20: szWepName = "";
		case 21: szWepName = "";
		case 22: szWepName = "Colt .45";
		case 23: szWepName = "Silenced Colt .45";
		case 24: szWepName = "Desert Eagle";
		case 25: szWepName = "Shotgun";
		case 26: szWepName = "Sawn-off Shotgun";
		case 27: szWepName = "SPAS-12";
		case 28: szWepName = "Micro Uzi";
		case 29: szWepName = "MP5";
		case 30: szWepName = "AK-47";
		case 31: szWepName = "M4A1";
		case 32: szWepName = "TEC-9";
		case 33: szWepName = "Rifle";
		case 34: szWepName = "Sniper Rifle";
		case 35: szWepName = "RPG";
		case 36: szWepName = "Heat Seeker";
		case 37: szWepName = "Flamethrower";
		case 38: szWepName = "Minigun";
		case 39: szWepName = "Satchel Charge";
		case 40: szWepName = "Detonator";
		case 41: szWepName = "Spray Can";
		case 42: szWepName = "Fire Extinguisher";
		case 43: szWepName = "Camera";
		case 44: szWepName = "Nightvision Goggles";
		case 45: szWepName = "Thermal Goggles";
		case 46: szWepName = "Parachute";
		case 47: szWepName = "";
		case 48: szWepName = "";
		case 49: szWepName = "Vehicle";
		case 50: szWepName = "Helicopter Blades";
		case 51: szWepName = "Explosion";
		case 52: szWepName = "";
		case 53: szWepName = "Drowning";
		case 54: szWepName = "Falling";
	}
	return szWepName;
}

IsNotAGun(weaponid)
{
	switch(weaponid)
	{
		case 0: return true;
		case WEAPON_BAT: return true;
		case WEAPON_BRASSKNUCKLE: return true;
		case WEAPON_CAMERA: return true;
		case WEAPON_CANE: return true;
		case WEAPON_COLLISION: return true;
		case WEAPON_DILDO: return true;
		case WEAPON_DILDO2: return true;
		case WEAPON_DROWN: return true;
		case WEAPON_FIREEXTINGUISHER: return true;
		case WEAPON_FLOWER: return true;
		case WEAPON_GOLFCLUB: return true;
		case WEAPON_KATANA: return true;
		case WEAPON_KNIFE: return true;
		case WEAPON_NITESTICK: return true;
		case WEAPON_PARACHUTE: return true;
		case WEAPON_POOLSTICK: return true;
		case WEAPON_SHOVEL: return true;
		case WEAPON_SPRAYCAN: return true;
		case WEAPON_TEARGAS: return true;
		case WEAPON_VEHICLE: return true;
		case WEAPON_VIBRATOR: return true;
		case WEAPON_VIBRATOR2: return true;
		case WEAPON_GRENADE: return true;
		case WEAPON_CHAINSAW: return true;
		case WEAPON_MOLTOV: return true;
		case WEAPON_SATCHEL: return true;
		case 44, 45: return true;
		default: return false;
	}
	return 0;
}

CMD:myguns(playerid, params[])
{
	new string[128], myweapons[13][2], weaponname[50], encryption[256], name[MAX_PLAYER_NAME];

	GetPlayerName(playerid, name, sizeof(name));
	SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
	format(string, sizeof(string), "Tat ca vu khi %s dang cam tren tay:", name);
	SendClientMessageEx(playerid, COLOR_WHITE, string);
	for (new i = 0; i < 13; i++)
	{
		GetPlayerWeaponData(playerid, i, myweapons[i][0], myweapons[i][1]);
		if(myweapons[i][0] > 0)
		{
			if(PlayerInfo[playerid][pGuns][i] == myweapons[i][0])
			{
				GetWeaponName(myweapons[i][0], weaponname, sizeof(weaponname));
				format(string, sizeof(string), "%s (%d)", weaponname, myweapons[i][0]);
				SendClientMessageEx(playerid, COLOR_GRAD1, string);
				format(encryption, sizeof(encryption), "%s%d", encryption, myweapons[i][0]);
			}
		}
	}
	new year, month, day;
	getdate(year, month, day);
	format(encryption, sizeof(encryption), "%s%s%d%d%d%d%d6524", encryption, name, month, day, year, hour, minuite);
	new encrypt = crc32(encryption);
	format(string, sizeof(string), "[%d/%d/%d %d:%d:%d] - [%d]", month, day, year, hour, minuite,second, encrypt);
	SendClientMessageEx(playerid, COLOR_GREEN, string);
	SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
	return 1;
}

CMD:switchgun(playerid, params[])
{
	new weapon[16], id, weapons[13][2];
	if(sscanf(params, "s[16]", weapon))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /switchgun [weapon]");
		return SendClientMessageEx(playerid, COLOR_GREY, "VU KHI: Fist, 9mm, Shotgun, Sawnoff, Spas12, UZI, MP5, M4, AK47, Tec9");
	}
	else
	{
		if(GetPVarInt(playerid, "Injured") || PlayerCuffed[playerid] > 0 || PlayerTied[playerid] > 0 || GetPVarInt(playerid, "IsInArena") || GetPVarInt(playerid, "EventToken") != 0 || PlayerInfo[playerid][pHospital] > 0) return SendClientMessageEx(playerid, -1, "Ban khong the thuc hien lenh nay ngay bay gio!");

		if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_PASSENGER)
		{
			if(strcmp(weapon, "Fist", true) == 0) id = 0;
			else if(strcmp(weapon, "9mm", true) == 0) id = 22;
			else if(strcmp(weapon, "Shotgun", true) == 0) id = 25;
			else if(strcmp(weapon, "Sawnoff", true) == 0) id = 26;
			else if(strcmp(weapon, "Spas12", true) == 0) id = 27;
			else if(strcmp(weapon, "Uzi", true) == 0) id = 28;
			else if(strcmp(weapon, "Mp5", true) == 0) id = 29;
			else if(strcmp(weapon, "AK47", true) == 0) id = 30;
			else if(strcmp(weapon, "M4", true) == 0) id = 31;
			else if(strcmp(weapon, "Tec9", true) == 0) id = 32;
			else return SendClientMessageEx(playerid, COLOR_GREY, "VU KHI: Fist, 9mm, Shotgun, Sawnoff, Spas12, UZI, MP5, M4, AK47, Tec9");

			for (new i = 0; i <= 12; i++) 
			{
				GetPlayerWeaponData(playerid, i, weapons[i][0], weapons[i][1]);
				if(PlayerInfo[playerid][pGuns][i] == id && weapons[i][0] == id)
				{
					SetPlayerArmedWeapon(playerid, id);
					SetPVarInt(playerid, "LastWeapon", id);
					return 1;
				}
			}
			return SendClientMessageEx(playerid, -1, "Ban khong co vu khi do.");
		}
		else SendClientMessageEx(playerid, -1, "Ban khong the thuc hien lenh nay khi dang ngoi tren xe.");
	}
	return 1;
}

CMD:giveweapon(playerid, params[])
{
	if(HungerPlayerInfo[playerid][hgInEvent] != 0) return SendClientMessageEx(playerid, COLOR_GREY, "   You cannot do this while being in the Hunger Games Event!");
	if(GetPVarType(playerid, "IsInArena"))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the lam dieu nay trong Arena!");
		return 1;
	}
	if(GetPVarInt( playerid, "EventToken") != 0)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the lam dieu nay trong Su kien!");
		return 1;
	}
	new Float:health;
	GetHealth(playerid, health);
	if (health < 80)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the lam dieu nay khi chi con 80 mau!");
		return 1;
	}

	if(GetPVarInt(playerid, "Injured") != 0||PlayerCuffed[playerid]!=0||PlayerInfo[playerid][pHospital]!=0||GetPlayerState(playerid) == 7)
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong the lam dieu nay khi dang bi thuong.");
		return 1;
	}
	if(IsPlayerInAnyVehicle(playerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong the lam dieu nay khi dang ngoi tren xe!");
		return 1;
	}

	if (GetPVarInt(playerid, "GiveWeaponTimer") > 0)
	{
		new string[58];
		format(string, sizeof(string), "Ban phai doi %d giay nua moi co the tiep tuc dua vu khi.", GetPVarInt(playerid, "GiveWeaponTimer"));
		SendClientMessageEx(playerid,COLOR_GREY,string);
		return 1;
	}

	new string[128], giveplayerid, weapon[64];
	if(sscanf(params, "us[64]", giveplayerid, weapon))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /duavukhi [player] [vu khi]");
		SendClientMessageEx(playerid, COLOR_GRAD2, "VU KHI: sdpistol, shotgun, 9mm, mp5, uzi, tec9, rifle, deagle, ak47, m4, spas12, sniper");
		SendClientMessageEx(playerid, COLOR_GRAD2, "VU KHI: flowers, knuckles, baseballbat, cane, shovel, poolcue, golfclub, katana, dildo, parachute");
		return 1;
	}
	if (!IsPlayerConnected(giveplayerid)) {
		return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong ton tai.");
	}
	if(IsPlayerInAnyVehicle(giveplayerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong the dua vu khi cho nguoi dang ngoi tren xe!");
		return 1;
	}
	if(giveplayerid == playerid)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the dua vu khi cho chinh minh!");
		return 1;
	}
	if(!ProxDetectorS(3.0, playerid, giveplayerid))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Nguoi nay khong dung gan ban.");
		return 1;
	}
	if(PlayerInfo[playerid][pDonateRank] >= 1 || PlayerInfo[playerid][pFamed] >= 1) return SendClientMessage(playerid, -1, "Ban la vip, khong the thuc hien chuc nang nay");
	// if(PlayerInfo[playerid][pDonateRank] < PlayerInfo[giveplayerid][pDonateRank]) return SendClientMessage(playerid, -1, "Nguoi choi ban dua vu khi phai cung hoac lon hon cap do vip cua ban");
	if(PlayerInfo[playerid][pMember] != INVALID_GROUP_ID && arrGroupData[PlayerInfo[playerid][pMember]][g_iGroupType] != GROUP_TYPE_CRIMINAL && PlayerInfo[playerid][pMember] != PlayerInfo[giveplayerid][pMember])
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the dua vu khi cho nguoi khac to chuc cua ban!");
		return 1;
	}
	if(PlayerInfo[giveplayerid][pConnectHours] < 2 || PlayerInfo[giveplayerid][pWRestricted] > 0) return SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi nay hien dang bi han che su dung vu khi.");
	if(IsPlayerInAnyVehicle(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban can xuong phuong tien moi co the su dung lenh nay.");
	if(strcmp(weapon, "sdpistol", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 23)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 2 ] != 23 && PlayerInfo[giveplayerid][pGuns][ 2 ] != 24)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung Sdpistol.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung Sdpistol.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 23);
				GivePlayerValidWeapon(giveplayerid, 23);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s(IP:%s) da duoc cho %s (IP:%s) their silenced pistol.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau Sdpistol dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	if(strcmp(weapon, "9mm", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 22)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 2 ] != 22 && PlayerInfo[giveplayerid][pGuns][ 2 ] != 24)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung 9mm.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung 9mm.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 22);
				GivePlayerValidWeapon(giveplayerid, 22);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their 9mm pistol.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau 9mm dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "shotgun", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 3 ] == 25)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 3 ] != 25 && PlayerInfo[giveplayerid][pGuns][ 3 ] != 27)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung Shotgun.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung Shotgun.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 25);
				GivePlayerValidWeapon(giveplayerid, 25);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s(IP:%s) da duoc cho %s (IP:%s) their shotgun.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau Shotgun dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "mp5", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 29)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 4 ] != 28 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 29 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 32)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung MP5.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung MP5.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 29);
				GivePlayerValidWeapon(giveplayerid, 29);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their MP5.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau MP5 dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "uzi", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 28)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 4 ] != 28 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 29 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 32)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung Uzi.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung Uzi.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 28);
				GivePlayerValidWeapon(giveplayerid, 28);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their Micro SMG.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau Uzi dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "tec9", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 32)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 4 ] != 28 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 29 && PlayerInfo[giveplayerid][pGuns][ 4 ] != 32)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung Tec9.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung Tec-9.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 32);
				GivePlayerValidWeapon(giveplayerid, 32);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their Tec-9.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau Tec-9 dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "deagle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 24)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 2 ] != 24)
			{
				//if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung Deagle.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung Deagle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 24);
				GivePlayerValidWeapon(giveplayerid, 24);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their Desert Eagle.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau Deagle dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "rifle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 33)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 6 ] != 33 && PlayerInfo[giveplayerid][pGuns][ 6 ] != 34)
			{
				//if(PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away this weapon as you're Famed+!");
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung Rifle.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung Rifle.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 33);
				GivePlayerValidWeapon(giveplayerid, 33);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their rifle.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau Rifle dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "ak47", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 5 ] == 30)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 5 ] != 30 && PlayerInfo[giveplayerid][pGuns][ 5 ] != 31)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung AK-47.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung AK-47.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 30);
				GivePlayerValidWeapon(giveplayerid, 30);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their AK-47.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau AK-47 dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "m4", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 5 ] == 31)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 5 ] != 31)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung M4.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung M4.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 31);
				GivePlayerValidWeapon(giveplayerid, 31);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their M4.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau M4 dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong covu khi do!");
		}
	}
	else if(strcmp(weapon, "spas12", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 3 ] == 27)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 3 ] != 27)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung SPAS-12.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung SPAS-12.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 27);
				GivePlayerValidWeapon(giveplayerid, 27);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their SPAS-12.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau SPAS-12 dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "sniper", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 34)
		{
			if(PlayerInfo[giveplayerid][pGuns][ 6 ] != 34)
			{
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot khau sung Sniper.");
				format(string, sizeof(string), "* %s da duoc cho %s mot khau sung Sniper.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
				ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
				RemovePlayerWeapon(playerid, 34);
				GivePlayerValidWeapon(giveplayerid, 34);
				/*new ip[32], ipex[32];
				GetPlayerIp(playerid, ip, sizeof(ip));
				GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their sniper rifle.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
				Log("logs/pay.log", string);*/
				SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "Nguoi do da co mot khau Sniper dang cam tren tay!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "flowers", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 14)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Flowers.");
			format(string, sizeof(string), "* %s da duoc cho %s mot Flowers.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 14);
			GivePlayerValidWeapon(giveplayerid, 14);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their flowers.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "knuckles", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 0 ] == 1)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Knuckles.");
			format(string, sizeof(string), "* %s da duoc cho %s mot Knuckles.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 1);
			GivePlayerValidWeapon(giveplayerid, 1);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their brass knuckles.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "baseballbat", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 5)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Baseball Bat.");
			format(string, sizeof(string), "* %s da duoc cho %s mot cay Baseball Bat.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 5);
			GivePlayerValidWeapon(giveplayerid, 5);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their baseball bat.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "cane", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 15)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Cane.");
			format(string, sizeof(string), "* %s da duoc cho %s mot cay Cane.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 15);
			GivePlayerValidWeapon(giveplayerid, 15);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their cane.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "shovel", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 6)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Shovel.");
			format(string, sizeof(string), "* %s da duoc cho %s mot cay Shovel.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 6);
			GivePlayerValidWeapon(giveplayerid, 6);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their shovel.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "golfclub", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 2)
		{
			if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Golf Club.");
			format(string, sizeof(string), "* %s da duoc cho %s mot cay Golf Club.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 2);
			GivePlayerValidWeapon(giveplayerid, 2);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their golf club.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "katana") == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 8)
		{
			if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Katana.");
			format(string, sizeof(string), "* %s da duoc cho %s mot cay Katana.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 8);
			GivePlayerValidWeapon(giveplayerid, 8);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their katana.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "dildo", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 10)
		{
			if(PlayerInfo[playerid][pDonateRank] > 2 || PlayerInfo[playerid][pFamed] > 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You can not give away weapons if you're Gold+ VIP/Famed+!");

			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Dildo.");
			format(string, sizeof(string), "* %s da duoc cho %s mot Dildo.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 10);
			GivePlayerValidWeapon(giveplayerid, 10);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their dildo.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else if(strcmp(weapon, "parachute", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 11 ] == 46)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da dua cho ai do mot Parachute.");
			format(string, sizeof(string), "* %s da duoc cho %s mot Parachute.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 46);
			GivePlayerValidWeapon(giveplayerid, 46);
			/*new ip[32], ipex[32];
			GetPlayerIp(playerid, ip, sizeof(ip));
			GetPlayerIp(giveplayerid, ipex, sizeof(ipex));
			format(string, sizeof(string), "%s (IP:%s) da duoc cho %s (IP:%s) their parachute.", GetPlayerNameEx(playerid), ip, GetPlayerNameEx(giveplayerid), ipex);
			Log("logs/pay.log", string);*/
			SetPVarInt(playerid, "GiveWeaponTimer", 10); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi do!");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Vu khi khong hop le.");
	}
	return 1;
}

CMD:dropgun(playerid, params[])
{
	if(isnull(params))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /vutvukhi [vu khi]");
		SendClientMessageEx(playerid, COLOR_GRAD2, "VU KHI: sdpistol, shotgun, 9mm, mp5, uzi, tec9, rifle, deagle, ak47, m4, spas12, sniper, camera");
		SendClientMessageEx(playerid, COLOR_GRAD2, "TVU KHI: flowers, knuckles, baseballbat, cane, shovel, poolcue, golfclub, katana, dildo, parachute, goggles");
		if (IsAHitman(playerid))
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "VU KHI: knife");
		}
		if(IsACop(playerid))
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "VU KHI: nitestick, spraycan, smoke, chainsaw, fire");
		}

		return 1;
		}

	if(IsPlayerInAnyVehicle(playerid))
	{
		SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong the vut vu khi, khi dang ngoi trong phuong tien!");
		return 1;
	}
	if(GetPVarType(playerid, "IsInArena"))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the lam dieu nay khi dang trong Arena!");
		return 1;
	}
	if(GetPVarInt( playerid, "EventToken") != 0)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the lam dieu nay khi dang trong Su kien.");
		return 1;
	}
	new string[128];
	if(strcmp(params, "sdpistol", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 23)
		{
			if(pTazer{playerid} == 1) return SendClientMessageEx(playerid, COLOR_RED, "Ban khong the vut Tazer cua ban.");
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung Sdpistol.");
			format(string, sizeof(string), "* %s da vut khau sung Sdpistol.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 23);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "camera", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 9 ] == 43)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Camera.");
			format(string, sizeof(string), "* %s da vut Camera.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 43);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "nitestick", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][1] == 3)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Nitestick.");
			format(string, sizeof(string), "* %s da vut Nitestick.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 3);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "mace", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][9] == 41)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut binh Spraycan.");
			format(string, sizeof(string), "* %s da vut binh Spraycan.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 41);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "knife", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 4)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Knife.");
			format(string, sizeof(string), "* %s da vut Knife.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 4);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "9mm", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 22)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung 9mm.");
			format(string, sizeof(string), "* %s da vut khau sung 9mm.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 22);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "shotgun", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 3 ] == 25)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung Shotgun.");
			format(string, sizeof(string), "* %s da vut khau sung Shotgun.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 25);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "mp5", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 29)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung MP5.");
			format(string, sizeof(string), "* %s da vut khau sung MP5.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 29);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "uzi", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 28)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung Uzi.");
			format(string, sizeof(string), "* %s da vut khau sung Uzi.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 28);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "tec9", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 4 ] == 32)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung Tec9.");
			format(string, sizeof(string), "* %s da vut khau sung Tec9.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 32);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "deagle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 2 ] == 24)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung Desert Eagle.");
			format(string, sizeof(string), "* %s da vut khau sungDesert Eagle.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 24);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "rifle", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 33)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung Rifle.");
			format(string, sizeof(string), "* %s da vut khau sung Rifle.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 33);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "ak47", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 5 ] == 30)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung AK-47.");
			format(string, sizeof(string), "* %s da vut khau sung AK-47.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 30);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "m4", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 5 ] == 31)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung M4.");
			format(string, sizeof(string), "* %s da vut khau sung M4.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 31);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "spas12", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 3 ] == 27)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung SPAS-12.");
			format(string, sizeof(string), "* %s da vut khau sung SPAS-12.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 27);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "sniper", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 6 ] == 34)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau sung Sniper.");
			format(string, sizeof(string), "* %s da vut khau sung Sniper.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 34);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "flowers", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 14)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Flowers.");
			format(string, sizeof(string), "* %s da vut Flowers.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 14);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "knuckles", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 0 ] == 1)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Knuckles.");
			format(string, sizeof(string), "* %s Ban da vut Knuckles.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 1);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "baseballbat", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 5)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Baseball Bat.");
			format(string, sizeof(string), "* %s da vut Baseball Bat.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 5);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "cane", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 15)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Cane.");
			format(string, sizeof(string), "* %s da vut khau sung Cane.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			PlayerInfo[playerid][pGuns][ 10 ] = 0;
			RemovePlayerWeapon(playerid, 15);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "shovel", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 6)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Shovel.");
			format(string, sizeof(string), "* %s da vut khau sung Shovel.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 6);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "golfclub", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 2)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Golf Club.");
			format(string, sizeof(string), "* %s da vut Golf Club.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 2);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "katana") == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 8)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Katana.");
			format(string, sizeof(string), "* %s da vut Katana.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 8);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "dildo", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 10 ] == 10)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Dildo.");
			format(string, sizeof(string), "* %s da vut Dildo.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 10);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "parachute", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 11 ] == 46)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Parachute.");
			format(string, sizeof(string), "* %s da vut Parachute.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 46);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "smoke", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 8 ] == 17)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Smoke Grenade.");
			format(string, sizeof(string), "* %s da vut Smoke Grenade.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 17);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "chainsaw", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 9)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Chainsaw.");
			format(string, sizeof(string), "* %s da vut Chainsaw.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 9);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "fire", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 9 ] == 42)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Fire Extinguisher.");
			format(string, sizeof(string), "* %s da vut Fire Extinguisher.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 42);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "minigun", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 7 ] == 38)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut khau Minigun.");
			format(string, sizeof(string), "* %s da vut Minigun.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 38);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "poolcue", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][ 1 ] == 7)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Pool Cue.");
			format(string, sizeof(string), "* %s da vut Pool Cue.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 7);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else if(strcmp(params, "goggles", true) == 0)
	{
		if(PlayerInfo[playerid][pGuns][11] == 44 || PlayerInfo[playerid][pGuns][11] == 45)
		{
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da vut Goggles.");
			format(string, sizeof(string), "* %s da vut Goggles.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			RemovePlayerWeapon(playerid, 44);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong cam vu khi nay tren tay!");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ten vu khi khong hop le.");
	}
	return 1;
}

CMD:holster(playerid, params[])
{
	new string[128];
    if(!GetPVarType(playerid, "WeaponsHolstered"))
    {
        SetPlayerArmedWeapon(playerid, 0);
        SetPVarInt(playerid, "WeaponsHolstered", 1);
    	format(string, sizeof(string), "* %s da bat che do su dung vu khi.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		return 1;
    }
	else
	{
	    if(GetPVarInt(playerid, "TackleMode") == 0)
		{
			DeletePVar(playerid, "WeaponsHolstered");
			format(string, sizeof(string), "* %s da tat che do su dung vu khi.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			return 1;
		}
		else
		{
			return SendClientMessageEx(playerid, COLOR_GRAD2, "You must disable tackling before unholstering");
		}
	}
}

ReturnBoneName(iBoneID)
{
	new szBone[32];
	switch(iBoneID)
	{
		case BODY_PART_TORSO: szBone = "than";
		case BODY_PART_GROIN: szBone = "bung";
		case BODY_PART_HEAD: szBone = "dau";
		case BODY_PART_LEFT_ARM: szBone = "canh tay trai";
		case BODY_PART_RIGHT_ARM: szBone = "canh tay phai";
		case BODY_PART_LEFT_LEG: szBone = "chan trai";
		case BODY_PART_RIGHT_LEG: szBone = "chan phai";
		default: szBone = "";
	}
	return szBone;
}

IsADriveByWeapon(iWeaponID) {
	switch(iWeaponID) {
		case WEAPON_SHOTGSPA: return 1;
		case WEAPON_SHOTGUN: return 1;
		case WEAPON_SAWEDOFF: return 1;
		case WEAPON_UZI: return 1;
		case WEAPON_MP5: return 1;
		case WEAPON_TEC9: return 1;
		case WEAPON_AK47: return 1;
		case WEAPON_M4: return 1;
		case WEAPON_COLT45: return 1;
		default: return 0;
	}
	return 0;
}
