/*

	 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
	| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
	| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
	| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
	| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
	| $$\  $$$| $$  \ $$        | $$  \ $$| $$
	| $$ \  $$|  $$$$$$/        | $$  | $$| $$
	|__/  \__/ \______/         |__/  |__/|__/

						Admin System

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

#define 		ADMIN_JUNIOR 		2
#define 		ADMIN_GENERAL		3
#define 		ADMIN_SENIOR 		4
#define 		ADMIN_HEAD			1337
#define 		ADMIN_EXECUTIVE 	99999

stock IsAdminLevel(playerid, level, warning = 1) {

	if(PlayerInfo[playerid][pAdmin] >= level) return 1;
	if(warning) SendClientMessage(playerid, COLOR_GRAD1, "Ban khong co quyen su dung lenh nay.");
	return 0;
}
CMD:rscrimes(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 1337)
    {
        new szMessage[128], giveplayerid;
        if(sscanf(params, "ud", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /rscrimes [Player]");
        if(IsPlayerConnected(giveplayerid))
        {
            PlayerInfo[giveplayerid][pCrimes] = 0;
            format(szMessage, sizeof(szMessage), "Ban da Reset Crime cho nguoi choi %s", GetPlayerNameEx(giveplayerid));
            SendClientMessageEx(playerid, COLOR_GREEN, szMessage);
            SendClientMessageEx(giveplayerid, COLOR_GREEN, "Ban da duoc Reset Crime boi Admin %s.", GetPlayerNameEx(playerid));
        }
    }
    else
    {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
    }
    return 1;
}
CMD:setvang(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 99999)
	{
		new szMessage[128], giveplayerid, Amount;
		if(sscanf(params, "ud", giveplayerid, Amount)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setvang [playerid] [so luong]");
		if(IsPlayerConnected(giveplayerid))
		{
			PlayerInfo[giveplayerid][pVang] = Amount;
			mysql_format(MainPipeline, szMessage, sizeof(szMessage), "UPDATE accounts SET Credits=%d WHERE id = %d", PlayerInfo[playerid][pCredits], GetPlayerSQLId(playerid));
			mysql_tquery(MainPipeline, szMessage, "OnQueryFinish", "ii", SENDDATA_THREAD, playerid);
			print(szMessage);
			format(szMessage, sizeof(szMessage), "[SET Vang] [So tien: %d] [Nguoi su dung: %s(%i)] [IP: %s] [Vang: %s] [Admin: %s] [IP: %s]",Amount,GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerIpEx(playerid), number_format(PlayerInfo[playerid][pVang]), GetPlayerNameEx(playerid), GetPlayerIpEx(playerid));
			Log("logs/setvang.log", szMessage), print(szMessage);
			format(szMessage, sizeof(szMessage), "Ban da set %s vang cho %s.",number_format(PlayerInfo[playerid][pVang]), GetPlayerNameEx(giveplayerid));
			SendClientMessageEx(playerid, COLOR_CYAN, szMessage);
			SendClientMessageEx(giveplayerid, COLOR_GREEN, "Ban da duoc %s vang boi Admin %s.", number_format(PlayerInfo[playerid][pVang]), GetPlayerNameEx(playerid));
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	}
	return 1;
}

stock ABroadCast(hColor, szMessage[], iLevel, bool: bUndercover = false, bool: Discord = true)
{
	foreach(new i: Player) {
		if(PlayerInfo[i][pAdmin] >= iLevel && (bUndercover || !PlayerInfo[i][pTogReports])) {
			SendClientMessageEx(i, hColor, szMessage);
		}
	}
	// if(!Discord && iLevel <= 2) SendDiscordMessage(0, szMessage);
	// if(strfind(szMessage, "AdmWarning", false) != -1)
	// {
	// 	StripColorEmbedding(szMessage);
	// 	SendDiscordMessage(1, szMessage); // Route AdmWarnings to Discord
	// }
	return 1;
}

stock ShopTechBroadCast(color,string[])
{
	foreach(new i: Player)
	{
		if ((PlayerInfo[i][pShopTech] >= 1 || PlayerInfo[i][pAdmin] >= 1338) && PlayerInfo[i][pTogReports] == 0)
		{
			SendClientMessageEx(i, color, string);
		}
	}
	return 1;
}

stock Player_KillCheckPoint(playerid) {
	if(PlayerInfo[playerid][pTut] != -1) {
		SendClientMessageEx(playerid, COLOR_GREY, "-----------------------------");
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban da huy huong dan tro choi. Chao mung den voi GTA.NETWORK!");
		SendClientMessageEx(playerid, COLOR_GREY, "-----------------------------");
		PlayerInfo[playerid][pTut] = -1;
	}
	if(MatDeliver[playerid] != -1) {
		MatDeliver[playerid] = -1;
	}
	gPlayerCheckpointStatus[playerid] = CHECKPOINT_NOTHING;
	ClearCheckpoint(playerid);
	DisablePlayerCheckpoint(playerid);
	SendClientMessageEx(playerid,COLOR_WHITE, "Tat ca diem checkpoint, diem danh dau do ve duoc chap nhan da duoc dat lai.");
}


stock GetAdminRankName(i)
{
	switch(i)
	{
		case 2: format(szMiscArray, sizeof(szMiscArray), "Junior Admin");
		case 3: format(szMiscArray, sizeof(szMiscArray), "General Admin");
		case 4: format(szMiscArray, sizeof(szMiscArray), "Senior Admin");
		case 5: format(szMiscArray, sizeof(szMiscArray), "Script Developer");
		case 1337: format(szMiscArray, sizeof(szMiscArray), "Head Admin");
		case 1338: format(szMiscArray, sizeof(szMiscArray), "Director Admin");
		case 99999: format(szMiscArray, sizeof(szMiscArray), "Executive Administrator");
		default: format(szMiscArray, sizeof(szMiscArray), "Undefined Administrator (%i)", i);
	}
	return szMiscArray;
}

stock StaffAccountCheck(playerid, ip[])
{
	mysql_format(MainPipeline, szMiscArray, sizeof(szMiscArray), "SELECT NULL FROM `accounts` WHERE (`IP` = '%s' OR `SecureIP` = '%s') AND `AdminLevel` > 0", ip, ip);
	mysql_tquery(MainPipeline, szMiscArray, "OnStaffAccountCheck", "i", playerid);
}

stock GetStaffRank(playerid)
{
	if(PlayerInfo[playerid][pSEC] > 0)
	{
		switch(PlayerInfo[playerid][pSEC])
		{
			case 1: szMiscArray = "{00FA9A}Regular Coordinator{FFFFFF}";
			case 2: szMiscArray = "{00FA9A}Senior Coordinator{FFFFFF}";
			case 3: szMiscArray = "{00FA9A}Assistant Chairman{FFFFFF}";
			case 4: szMiscArray = "{00FA9A}Deputy Chairman{FFFFFF}";
			case 5: szMiscArray = "{00FA9A}Chairman{FFFFFF}";
		}
	}
	if(PlayerInfo[playerid][pWatchdog] > 0)
	{
		switch(PlayerInfo[playerid][pWatchdog])
		{
			case 1: szMiscArray = "{2267F0}Watchdog{FFFFFF}";
			case 2: szMiscArray = "{2267F0}Senior Watchdog{FFFFFF}";
			case 3: szMiscArray = "{2267F0}RP Specialist{FFFFFF}";
			case 4: szMiscArray = "{2267F0}Director of RP Improvement{FFFFFF}";
		}
	}

	if(PlayerInfo[playerid][pHelper] > 0)
	{
		switch(PlayerInfo[playerid][pHelper])
		{
			case 1: szMiscArray = "{6495ED}Helper{FFFFFF}";
			case 2: szMiscArray = "{00FFFF}Community Advisor{FFFFFF}";
			case 3: szMiscArray = "{00FFFF}Senior Advisor{FFFFFF}";
			case 4: szMiscArray = "{00FFFF}Chief Advisor{FFFFFF}";
		}
	}

	if(PlayerInfo[playerid][pAdmin] == 1)
	{
		switch(PlayerInfo[playerid][pSMod])
		{
			case 0: szMiscArray = "{FFFF00}Server Moderator{FFFFFF}";
			case 1: szMiscArray = "{FFFF00}Senior Server Moderator{FFFFFF}";
		}
	}
	if(PlayerInfo[playerid][pAdmin] > 1)
	{
		switch(PlayerInfo[playerid][pAdmin])
		{
			case 2: szMiscArray = "{00FF00}Junior Admin{FFFFFF}";
			case 3: szMiscArray = "{00FF00}General Admin{FFFFFF}";
			case 4: szMiscArray = "{F4A460}Senior Admin{FFFFFF}";
			case 5: szMiscArray = "{298EFF}Script Developer{FFFFFF}";
			case 1337: szMiscArray = "{FF0000}Head Admin{FFFFFF}";
			case 1338: szMiscArray = "{FF5517}Director Admin{FFFFFF}";
			case 99999: szMiscArray = "{298EFF}Executive Administrator{FFFFFF}";
			default: format(szMiscArray, sizeof(szMiscArray), "Undefined Administrator (%d)", PlayerInfo[playerid][pAdmin]);
		}
	}
	return szMiscArray;
}

CMD:resetvw(playerid, params[])
{
	if(GetPVarType(playerid, "IsInArena")) return 1;
	SetPlayerVirtualWorld(playerid, PlayerInfo[playerid][pVW]);
	SetPlayerInterior(playerid, PlayerInfo[playerid][pInt]);
	SendClientMessageEx(playerid, COLOR_WHITE, "The gioi ao va noi that cua ban da duoc dong bo hoa voi may chu. ban co the bi desynced though - vui long thoat ra vao lai.");
	return 1;
}

CMD:id(playerid, params[]) {
	if(isnull(params)) {
		return SendClientMessageEx(playerid, COLOR_GREY, "Su dung: /id [Ten nguoi choi]");
	}

	new
		szMessage[128],
		szPlayerName[MAX_PLAYER_NAME],
		iTargetID = strval(params);

	if(IsNumeric(params) && IsPlayerConnected(strval(params)))
	{
	    if(PlayerInfo[playerid][pAdmin] >= 2) format(szMessage, sizeof szMessage, "%s (ID: %d · Gio choi: %s · Cap do: %d · Ping: %dms · FPS: %d · Packet Loss: %.2f)", GetPlayerNameEx(iTargetID), iTargetID, number_format(PlayerInfo[iTargetID][pConnectHours]), GetPlayerScore(iTargetID), GetPlayerPing(iTargetID), GetPlayerFPS(iTargetID), GetPlayerPacketLoss(iTargetID));
		else format(szMessage, sizeof szMessage, "%s (ID: %d · Cap do: %d · Ping: %dms)", GetPlayerNameEx(iTargetID), iTargetID, GetPlayerScore(iTargetID), GetPlayerPing(iTargetID));
		return SendClientMessageEx(playerid, COLOR_WHITE, szMessage);
	}
	else if(strlen(params) < 3) {
		return SendClientMessageEx(playerid, COLOR_GREY, "Dien it nhat 3 ky tu ten.");
	}
	else foreach(new i: Player)
	{
		GetPlayerName(i, szPlayerName, sizeof szPlayerName);
		if(strfind(szPlayerName, params, true) != -1) {
			if(PlayerInfo[playerid][pAdmin] >= 2) format(szMessage, sizeof szMessage, "%s (ID: %d · Gio choi: %s · Cap do: %d · Ping: %dms · FPS: %d · Packet Loss: %.2f)", GetPlayerNameEx(i), i, number_format(PlayerInfo[i][pConnectHours]), GetPlayerScore(i), GetPlayerPing(i), GetPlayerFPS(i), GetPlayerPacketLoss(i));
			else format(szMessage, sizeof szMessage, "%s (ID: %d · Cap do: %d · Ping: %dms)", GetPlayerNameEx(i), i, GetPlayerScore(i), GetPlayerPing(i));
			SendClientMessageEx(playerid, COLOR_WHITE, szMessage);
		}
	}
	return 1;
}

CMD:near(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new radius;
		if(sscanf(params, "d", radius)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /near [radius]");
		if(radius < 1 || radius > 100) return SendClientMessageEx(playerid, COLOR_GREY, "Radius must be higher than 0 and lower than 100!");

		format(szMiscArray, sizeof(szMiscArray), "Players within a %d block radius", radius);
		SendClientMessageEx(playerid, COLOR_GRAD5, szMiscArray);
        foreach(new i: Player)
		{
			if(i != playerid && ProxDetectorS(radius, playerid, i))
			{
				format(szMiscArray, sizeof(szMiscArray), "%s (ID: %d - Hours: %s)", GetPlayerNameEx(i), i, number_format(PlayerInfo[i][pConnectHours]));
				SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
			}
		}
	}
	else return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:givegun(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 4) {
        new playa, gun;

        if(sscanf(params, "udd", playa, gun)) {
            SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /givegun [player] [weaponid]");
            SendClientMessageEx(playerid, COLOR_GREEN, "_______________________________________");
            SendClientMessageEx(playerid, COLOR_GRAD4, "(1)Brass Knuckles (2)Golf Club (3)Nite Stick (4)Knife (5)Baseball Bat (6)Shovel (7)Pool Cue (8)Katana (9)Chainsaw");
            SendClientMessageEx(playerid, COLOR_GRAD4, "(10)Purple Dildo (11)Small White Vibrator (12)Large White Vibrator (13)Silver Vibrator (14)Flowers (15)Cane (16)Frag Grenade");
            SendClientMessageEx(playerid, COLOR_GRAD3, "(17)Tear Gas (18)Molotov Cocktail (21)Jetpack (22)9mm (23)Silenced 9mm (24)Desert Eagle (25)Shotgun (26)Sawnoff Shotgun");
            SendClientMessageEx(playerid, COLOR_GRAD4, "(27)Combat Shotgun (28)Micro SMG (Mac 10) (29)SMG (MP5) (30)AK-47 (31)M4 (32)Tec9 (33)Rifle (34)Sniper Rifle");
            SendClientMessageEx(playerid, COLOR_GRAD4, "(35)Rocket Launcher (36)HS Rocket Launcher (37)Flamethrower (38)Minigun (39)Satchel Charge (40)Detonator");
            SendClientMessageEx(playerid, COLOR_GRAD4, "(41)Spraycan (42)Fire Extinguisher (43)Camera (44)Nightvision Goggles (45)Infared Goggles (46)Parachute");
            SendClientMessageEx(playerid, COLOR_GREEN, "_______________________________________");
            SendClientMessageEx(playerid, COLOR_LIGHTRED, "Khong duoc set vu khi cho member khi chua xin phep cap cao.");
            return 1;
        }

        format(szMiscArray, sizeof(szMiscArray), "Ban da cho %s gun ID %d!", GetPlayerNameEx(playa), gun);
        if(gun < 1||gun > 47 || GetWeaponSlot(gun) == -1)
            { SendClientMessageEx(playerid, COLOR_GRAD1, "sai ID vu khi!"); return 1; }
        if(IsPlayerConnected(playa))
		{
            if((PlayerInfo[playa][pLevel] < 2 || PlayerInfo[playa][pWRestricted] > 0) && gun != 46 && gun != 43) return SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi nay hien tai dang bi gioi han cam vu khi");
			if(PlayerInfo[playa][pAccountRestricted] != 0) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the lam dieu nay voi nguoi dang bi han che su dung chuc nang tai khoan!");
		    if(playa != INVALID_PLAYER_ID && gun <= 20 || gun >= 22) {
                PlayerInfo[playa][pGuns][GetWeaponSlot(gun)] = gun;
                GivePlayerValidWeapon(playa, gun);
                SendClientMessageEx(playerid, COLOR_GRAD1, szMiscArray);
            }
            else if(playa != INVALID_PLAYER_ID && gun == 21) {
                JetPack[playa] = 1;
                SetPlayerSpecialAction(playa, SPECIAL_ACTION_USEJETPACK);
                SendClientMessageEx(playerid, COLOR_GRAD1, szMiscArray);
            }
			format(szMiscArray, sizeof(szMiscArray), "%s(%s) da duoc cho %s(%d) (%s) a %s(%d)", GetPlayerNameEx(playerid), GetPlayerIpEx(playerid), GetPlayerNameEx(playa), GetPlayerSQLId(playa), GetPlayerIpEx(playa), GetWeaponNameEx(gun), gun);
			Log("logs/admingive.log", szMiscArray);
        }
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:givedrug(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
    {
        new id, drugstring[16], amount;

        if(sscanf(params, "us[16]d", id, drugstring, amount))
        {
            SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /givedrug [player] [drug] [amount]");
            ListDrugs(playerid);
            return 1;
        }

        new drug = GetDrugID(drugstring);
        if(drug == -1)
		{
			SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /givedrug [player] [drug] [amount]");
			ListDrugs(playerid);
			return 1;
		}

		if(IsPlayerConnected(id))
		{
			PlayerInfo[id][pDrugs][drug] += amount;
        	format(szMiscArray, sizeof(szMiscArray), "Ban da cho %s drug %s (%dg)!", GetPlayerNameEx(id), GetDrugName(drug), amount);
        	SendClientMessageEx(playerid, COLOR_GRAD1, szMiscArray);

			format(szMiscArray, sizeof(szMiscArray), "%s(%s) da duoc cho %s(%d) (%s) some %s(%dg)", GetPlayerNameEx(playerid), GetPlayerIpEx(playerid), GetPlayerNameEx(id), GetPlayerSQLId(id), GetPlayerIpEx(id), GetDrugName(drug), amount);
			Log("logs/admingive.log", szMiscArray);
		}
		else return SendClientMessage(playerid, COLOR_GRAD1, "Nguoi choi nay khong online.");
    }
    else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    return 1;
}

CMD:jetpack(playerid, params[])
{
	new plo;
	if((PlayerInfo[playerid][pAdmin] >= 2) && sscanf(params, "u", plo)) {
        JetPack[playerid] = 1;
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USEJETPACK);
        return 1;
    }
	else if(PlayerInfo[playerid][pAdmin] >= 4 && !sscanf(params, "u", plo) || PlayerInfo[playerid][pASM] >= 1 && !sscanf(params, "u", plo))
	{
		if (IsPlayerConnected(plo))
		{
			if(plo != INVALID_PLAYER_ID)
			{
				SendClientMessageEx(plo, COLOR_GRAD1, "Thuong thuc Jetpack moi cua ban nhe!");
				JetPack[plo] = 1;
				SetPlayerSpecialAction(plo, SPECIAL_ACTION_USEJETPACK);
				format(szMiscArray, sizeof(szMiscArray), "[JET]: %s (%d) da nhan duoc Jetpack tu %s.", GetPlayerNameEx(plo), playerid, GetPlayerNameEx(playerid));
				SendClientMessageToAllEx(COLOR_LIGHTRED, szMiscArray);
				format(szMiscArray, sizeof(szMiscArray), "[Admin] %s (IP:%s) da duoc cho %s(%d) (IP:%s) a Jetpack.", GetPlayerNameEx(playerid), GetPlayerIpEx(playerid), GetPlayerNameEx(plo), GetPlayerSQLId(plo), GetPlayerIpEx(plo));
				Log("logs/admingive.log", szMiscArray);
			}
		}
		else return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    return 1;
}

CMD:sethp(playerid, params[])
{
	new playa, health;
	if(sscanf(params, "ud", playa, health)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /sethp [player] [health]");
	if(playa == INVALID_PLAYER_ID || playa > MAX_PLAYERS || playa < 0) return SendClientMessageEx(playerid, COLOR_GREY, "Nguoi choi khong ton tai");
	if(PlayerInfo[playa][pJailTime] >= 1 && strfind(PlayerInfo[playerid][pPrisonReason], "[OOC]", true) != -1) return SendClientMessage(playerid, COLOR_WHITE, "You can't set a OOC Prisoner Health!");
	if((PlayerInfo[playa][pAdmin] >= PlayerInfo[playerid][pAdmin]) && playa != playerid) return SendClientMessageEx(playerid, COLOR_GREY, "You cannot use this command on the same/greater level admin than you!");
	if(PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pASM] >= 1) {
		if(IsPlayerConnected(playa)) {
			if(playa != INVALID_PLAYER_ID)
			{
				SetHealth(playa, health);
				format(szMiscArray, sizeof(szMiscArray), "You have set %s's health to %d.", GetPlayerNameEx(playa), health);
				SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
			}
		}
		else return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:setmyhp(playerid, params[])
{
    new health;
    if(sscanf(params, "d", health)) {
        SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setmyhp [health]");
        return 1;
    }
    if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pUndercover] >= 1 || PlayerInfo[playerid][pASM] >= 1) {
        SetHealth(playerid, health);
        format(szMiscArray, sizeof(szMiscArray), "You have set your health to %d.", health);
        SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:setarmor(playerid, params[])
{
    new playa, health;
    if(sscanf(params, "ud", playa, health))
	{
        SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setarmor [player] [armor]");
        return 1;
    }
    if (PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pASM] >= 1)
	{
        if(IsPlayerConnected(playa))
		{
            if(playa != INVALID_PLAYER_ID)
			{
                SetArmour(playa, health);
                format(szMiscArray, sizeof(szMiscArray), "You have set %s's armor to %d.", GetPlayerNameEx(playa), health);
                SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
            }
        }
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:setmyarmor(playerid, params[])
{
    new armor;
    if(sscanf(params, "d", armor))
	{
        SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setmyarmor [amount]");
        return 1;
    }
    if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pUndercover] >= 1 || PlayerInfo[playerid][pASM] >= 1)
	{
        SetArmour(playerid, armor);
        format(szMiscArray, sizeof(szMiscArray), "You have set your armor to %d.", armor);
        SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:setarmorall(playerid, params[])
{
    new armor;
    if(sscanf(params, "d", armor)) {
        SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setarmorall [armor]");
        return 1;
    }

    if (PlayerInfo[playerid][pAdmin] >= 1337) {
        foreach(new i: Player)
		{
			SetArmour(i, armor);
		}
    }

    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:loadcfgs(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] < 1337) {
        SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong duoc phep su dung lenh do.");
        return 1;
    }
    SendClientMessageEx(playerid, COLOR_WHITE, "* Reloading CFG Files..");
    g_mysql_LoadMOTD();
	// Local Configs
	Misc_Load();
    SendClientMessageEx(playerid, COLOR_WHITE, "* Done");
    return 1;
}

CMD:admins(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 2) {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Admins Online:");
        foreach(new i: Player)
		{
			if(PlayerInfo[i][pAdmin] >= 2 && PlayerInfo[i][pAdmin] <= PlayerInfo[playerid][pAdmin]) {
				new tdate[11], thour[9], i_timestamp[3];
				getdate(i_timestamp[0], i_timestamp[1], i_timestamp[2]);
				format(tdate, sizeof(tdate), "%d-%02d-%02d", i_timestamp[0], i_timestamp[1], i_timestamp[2]);
				format(thour, sizeof(thour), "%02d:00:00", hour);

				if(PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pASM] >= 1)
				{
					if(PlayerInfo[i][pAdmin] == 2) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s (RTH: %d | RT: %d)", GetStaffRank(i), GetPlayerNameEx(i), ReportHourCount[i], ReportCount[i]);
					else if(PlayerInfo[i][pAdmin] == 3) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s (RTH: %d | RT: %d)", GetStaffRank(i), GetPlayerNameEx(i), ReportHourCount[i], ReportCount[i]);
					else if(PlayerInfo[i][pAdmin] == 4) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s (RTH: %d | RT: %d)", GetStaffRank(i), GetPlayerNameEx(i), ReportHourCount[i], ReportCount[i]);
					else if(PlayerInfo[i][pAdmin] == 5) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s (RTH: %d | RT: %d)", GetStaffRank(i), GetPlayerNameEx(i), ReportHourCount[i], ReportCount[i]);
					else if(PlayerInfo[i][pAdmin] == 1337) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s (RTH: %d | RT: %d)", GetStaffRank(i), GetPlayerNameEx(i), ReportHourCount[i], ReportCount[i]);
					else if(PlayerInfo[i][pAdmin] == 1338) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s (RTH: %d | RT: %d)", GetStaffRank(i), GetPlayerNameEx(i), ReportHourCount[i], ReportCount[i]);
					else if(PlayerInfo[i][pAdmin] == 99999) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s (RTH: %d | RT: %d)", GetStaffRank(i), GetPlayerNameEx(i), ReportHourCount[i], ReportCount[i]);
					else format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), PlayerInfo[i][pAdmin], GetPlayerNameEx(i));
				}
				else
				{
					if(PlayerInfo[i][pAdmin] == 2) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), GetPlayerNameEx(i));
					else if(PlayerInfo[i][pAdmin] == 3) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), GetPlayerNameEx(i));
					else if(PlayerInfo[i][pAdmin] == 4) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), GetPlayerNameEx(i));
					else if(PlayerInfo[i][pAdmin] == 5) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), GetPlayerNameEx(i));
					else if(PlayerInfo[i][pAdmin] == 1337) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), GetPlayerNameEx(i));
					else if(PlayerInfo[i][pAdmin] == 1338) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), GetPlayerNameEx(i));
					else if(PlayerInfo[i][pAdmin] == 99999) format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", GetStaffRank(i), GetPlayerNameEx(i));
					else format(szMiscArray, sizeof(szMiscArray), "%s{BFC0C2}: %s", PlayerInfo[i][pAdmin], GetPlayerNameEx(i));
				}

				if(PlayerInfo[i][pBanAppealer] == 1) strcat(szMiscArray, " [BA]");
				if(PlayerInfo[i][pBanAppealer] == 2) strcat(szMiscArray, " [DOCI]");
				if(PlayerInfo[i][pShopTech] == 1) strcat(szMiscArray, " [ST]");
				if(PlayerInfo[i][pShopTech] == 2) strcat(szMiscArray, " [ST2]");
				if(PlayerInfo[i][pShopTech] == 3) strcat(szMiscArray, " [HoST]");
				if(PlayerInfo[i][pUndercover] == 1) strcat(szMiscArray, " [UC]");
				if(PlayerInfo[i][pUndercover] == 2) strcat(szMiscArray, " [DOSO]");
				if(PlayerInfo[i][pFactionModerator] == 1) strcat(szMiscArray, " [FMOD]");
				if(PlayerInfo[i][pFactionModerator] == 2) strcat(szMiscArray, " [HoFM]");
				if(PlayerInfo[i][pGangModerator] == 1) strcat(szMiscArray, " [GMOD]");
				if(PlayerInfo[i][pGangModerator] == 2) strcat(szMiscArray, " [HoGM]");
				if(PlayerInfo[i][pTogReports]) strcat(szMiscArray, " [SPEC MODE]");
				if(PlayerInfo[i][pPR] == 1) strcat(szMiscArray, " [PR]");
				if(PlayerInfo[i][pPR] == 2) strcat(szMiscArray, " [HoPR]");
				if(PlayerInfo[i][pHR] >= 1) strcat(szMiscArray, " [HR]");
				if(PlayerInfo[i][pAP] >= 1) strcat(szMiscArray, " [AP]");
				if(PlayerInfo[i][pWatchdog] == 4) strcat(szMiscArray, " [DoRPI]");
				if(PlayerInfo[i][pSecurity] >= 1) strcat(szMiscArray, " [Sec]");
				if(PlayerInfo[i][pBM] == 1) strcat(szMiscArray, " [BM]");
				if(PlayerInfo[i][pBM] == 2) strcat(szMiscArray, " [DOBM]");
				if(PlayerInfo[i][pASM] == 1) strcat(szMiscArray, " [ASM]");
				SendClientMessageEx(playerid, COLOR_GRAD2, szMiscArray);
			}
		}
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai Admin de thuc hien lenh nay.");
    }
    return 1;
}

CMD:dn(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2)
	{
        new Float:slx, Float:sly, Float:slz;
		GetPlayerPos(playerid, slx, sly, slz);
		if (GetPlayerState(playerid) == 2)
		{
			new tmpcar = GetPlayerVehicleID(playerid);
			SetVehiclePos(tmpcar, slx, sly, slz-2);
			fVehSpeed[playerid] = 0.0;
		}
		else
		{
			SetPlayerPos(playerid, slx, sly, slz-2);
		}
        return 1;
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:up(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2)
	{
        new Float:slx, Float:sly, Float:slz;
        GetPlayerPos(playerid, slx, sly, slz);
		if (GetPlayerState(playerid) == 2)
		{
			new tmpcar = GetPlayerVehicleID(playerid);
			SetVehiclePos(tmpcar, slx, sly, slz+5);
			fVehSpeed[playerid] = 0.0;
		}
		else
		{
			SetPlayerPos(playerid, slx, sly, slz+5);
		}
        return 1;
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:fly(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2) {
        new Float:px, Float:py, Float:pz, Float:pa;
        GetPlayerFacingAngle(playerid,pa);
        if(pa >= 0.0 && pa <= 22.5) {             //n1
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px, py+30, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px, py+30, pz+5);
			}
        }
        if(pa >= 332.5 && pa < 0.0) {             //n2
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px, py+30, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px, py+30, pz+5);
			}
        }
        if(pa >= 22.5 && pa <= 67.5) {            //nw
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px-15, py+15, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px-15, py+15, pz+5);
			}
        }
        if(pa >= 67.5 && pa <= 112.5) {           //w
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px-30, py, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px-30, py, pz+5);
			}
        }
        if(pa >= 112.5 && pa <= 157.5) {          //sw
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px-15, py-15, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px-15, py-15, pz+5);
			}
        }
        if(pa >= 157.5 && pa <= 202.5) {          //s
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px, py-30, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px, py-30, pz+5);
			}
        }
        if(pa >= 202.5 && pa <= 247.5) {          //se
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px+15, py-15, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px+15, py-15, pz+5);
			}
        }
        if(pa >= 247.5 && pa <= 292.5) {          //e
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px+30, py, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px+30, py, pz+5);
			}
        }
        if(pa >= 292.5 && pa <= 332.5) {          //e
            GetPlayerPos(playerid, px, py, pz);
			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, px+15, py+15, pz+5);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid, px+15, py+15, pz+5);
			}
        }
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:lt(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2)
	{
        new Float:slx, Float:sly, Float:slz;
        GetPlayerPos(playerid, slx, sly, slz);
		if (GetPlayerState(playerid) == 2)
		{
			new tmpcar = GetPlayerVehicleID(playerid);
			SetVehiclePos(tmpcar, slx-2, sly, slz);
			fVehSpeed[playerid] = 0.0;
		}
		else
		{
			SetPlayerPos(playerid, slx-2, sly, slz);
		}
        return 1;
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:rt(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2)
	{
        new Float:slx, Float:sly, Float:slz;
        GetPlayerPos(playerid, slx, sly, slz);
		if (GetPlayerState(playerid) == 2)
		{
			new tmpcar = GetPlayerVehicleID(playerid);
			SetVehiclePos(tmpcar, slx+2, sly, slz);
			fVehSpeed[playerid] = 0.0;
		}
		else
		{
			SetPlayerPos(playerid, slx+2, sly, slz);
		}
        return 1;
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:fd(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2)
	{
        new Float:slx, Float:sly, Float:slz;
        GetPlayerPos(playerid, slx, sly, slz);
		if (GetPlayerState(playerid) == 2)
		{
			new tmpcar = GetPlayerVehicleID(playerid);
			SetVehiclePos(tmpcar, slx, sly+2, slz);
			fVehSpeed[playerid] = 0.0;
		}
		else
		{
			SetPlayerPos(playerid, slx, sly+2, slz);
		}
        return 1;
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:bk(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2)
	{
        new Float:slx, Float:sly, Float:slz;
        GetPlayerPos(playerid, slx, sly, slz);
		if (GetPlayerState(playerid) == 2)
		{
			new tmpcar = GetPlayerVehicleID(playerid);
			SetVehiclePos(tmpcar, slx, sly-2, slz);
			fVehSpeed[playerid] = 0.0;
		}
		else
		{
			SetPlayerPos(playerid, slx, sly-2, slz);
		}
        return 1;
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:mjail(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] == 1 || PlayerInfo[playerid][pHelper] >= 2) {

		new
			iTargetID,
			szReason[64];

		if(sscanf(params, "us[64]", iTargetID, szReason)) {
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /mjail [player] [ly do]");
		}
		else if(IsPlayerConnected(iTargetID)) {
			if(PlayerInfo[iTargetID][pAdmin] == 1) {
				return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the su dung lenh nay voi moderator.");
			}
			if(PlayerInfo[iTargetID][pAdmin] > PlayerInfo[playerid][pAdmin]) {
				return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the su dung lenh nay voi admin.");
			}
			if(PlayerInfo[iTargetID][pHelper] >= 2) {
				return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the su dung lenh nay voi Advisors.");
			}
            if(PlayerInfo[iTargetID][pJailTime] > 0) {
			    return SendClientMessageEx(playerid, COLOR_GREY, "Nguoi nay dang o tu roi.");
			}
			if(PrisonPlayer(playerid, iTargetID, szReason, .time=20, .custom=1) == 0) return 1;
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
		}
	}
	return 1;
}

CMD:prisoners(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
 	{
  		new Count;

		SendClientMessageEx(playerid, COLOR_WHITE, "----------------------------------------");
  		SendClientMessageEx(playerid, COLOR_WHITE, "Ten | Phat tu boi | Thoi gian con lai | Ly do");

		foreach(new i: Player)
		{
			if(PlayerInfo[i][pJailTime] >= 1)
			{
				if(strlen(PlayerInfo[i][pPrisonReason]) >= 1 && strlen(PlayerInfo[i][pPrisonedBy]) >= 1)
				{
						Count++;
						format(szMiscArray, sizeof(szMiscArray), "%s (%d) | %s | %s | %s", GetPlayerNameEx(i), i, PlayerInfo[i][pPrisonedBy], TimeConvert(PlayerInfo[i][pJailTime]), PlayerInfo[i][pPrisonReason]);
						SendClientMessageEx(playerid, COLOR_GREY, szMiscArray);
				}
				else
				{
					format(szMiscArray, sizeof(szMiscArray), "%s (%d) | Unavailable | %s | Unavailable", GetPlayerNameEx(i), i, TimeConvert(PlayerInfo[i][pJailTime]));
					SendClientMessageEx(playerid, COLOR_GREY, szMiscArray);
				}
			}
      	}
      	SendClientMessageEx(playerid, COLOR_WHITE, "----------------------------------------");
	}
	return 1;
}

CMD:noooc(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
		if (!noooc)
		{
			noooc = 1;
			SendClientMessageToAllEx(COLOR_GRAD2, "Kenh OOC Chat da duoc tat boi Admin");
		}
		else
		{
			noooc = 0;
			SendClientMessageToAllEx(COLOR_GRAD2, "Kenh OOC Chat da duoc bat boi Admin");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:vehname(playerid, params[]) {

	if(PlayerInfo[playerid][pAdmin] >= 2) {

		SendClientMessageEx(playerid, COLOR_YELLOW, "--------------------------------------------------------------------------------------------------------------------------------");
		SendClientMessageEx(playerid, COLOR_WHITE, "Vehicle Search:");

		if(isnull(params)) return SendClientMessageEx(playerid, COLOR_GREY, "Ten phuong tien khong chinh xac.");
		if(!params[2]) return SendClientMessageEx(playerid, COLOR_GREY, "Noi dung nhap qua ngan.");
		szMiscArray[0] = 0;
		for(new v; v < sizeof(VehicleName); v++) {
			if(strfind(VehicleName[v], params, true) != -1) {

				if(isnull(szMiscArray)) format(szMiscArray, sizeof(szMiscArray), "%s (ID %d)", VehicleName[v], v+400);
				else format(szMiscArray, sizeof(szMiscArray), "%s | %s (ID %d)", szMiscArray, VehicleName[v], v+400);
			}
		}

		if(!szMiscArray[0]) SendClientMessageEx(playerid, COLOR_GREY, "No results found.");
		//else if(szMiscArray[127]) SendClientMessageEx(playerid, COLOR_GREY, "Too many results found.");
		else SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);

		SendClientMessageEx(playerid, COLOR_YELLOW, "--------------------------------------------------------------------------------------------------------------------------------");
	}
	return 1;
}

CMD:mstats(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pASM] < 1) {
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay.");
		return 1;
	}
	else {
	    new stats[256];
		mysql_stat(stats, sizeof(stats), MainPipeline);
		SendClientMessageEx(playerid, COLOR_GREEN,"___________________________________________________________________________________________________");
		SendClientMessageEx(playerid, COLOR_GREY, stats);
		SendClientMessageEx(playerid, COLOR_GREEN,"___________________________________________________________________________________________________");
		#if defined SHOPAUTOMATED
		mysql_stat(stats, sizeof(stats), ShopPipeline);
		SendClientMessageEx(playerid, COLOR_GREEN,"___________________________________________________________________________________________________");
		SendClientMessageEx(playerid, COLOR_GREY, stats);
		SendClientMessageEx(playerid, COLOR_GREEN,"___________________________________________________________________________________________________");
		#endif
	}
	return 1;
}

CMD:netstats(playerid, params[]) {
	if(gPlayerLogged{playerid} != 0) {
		new strStats[401], szTitle[64];
		GetPlayerNetworkStats(playerid, strStats, sizeof(strStats));
		format(szTitle, sizeof(szTitle), "Network Stats (ID: %d) - %s", playerid, GetPlayerNameEx(playerid));
		ShowPlayerDialogEx(playerid, 0, DIALOG_STYLE_MSGBOX, szTitle, strStats, "Close", "");
	}
	return 1;
}

CMD:anetstats(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] < 2) {
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
		return 1;
	}

	new giveplayerid, strStats[401], szTitle[64];
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /anetstats [player]");

	if(gPlayerLogged{giveplayerid} != 0) {
		GetPlayerNetworkStats(giveplayerid, strStats, sizeof(strStats));
		format(szTitle, sizeof(szTitle), "Network Stats (ID: %d) - %s", giveplayerid, GetPlayerNameEx(giveplayerid));
		ShowPlayerDialogEx(playerid, 0, DIALOG_STYLE_MSGBOX, szTitle, strStats, "Close", "");
	}
	return 1;
}

// Testing Commands
CMD:playsound(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1337) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay!");

	new id, soundid;

	if(sscanf(params, "ud", id, soundid))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /playsound [player] [soundid]");
        return 1;
	}
	else
	{
		PlayerPlaySound(id, soundid, 0, 0, 0);
	}
	return 1;
}

CMD:aobject(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1337) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay!");

	new id, objectid, bone, Float:offsetx, Float:offsety, Float:offsetz, Float:rotx, Float:roty, Float:rotz, Float:scalex, Float:scaley, Float:scalez;

	if(sscanf(params, "uddfffffffff", id, objectid, bone, offsetx, offsety, offsetz, rotx, roty, rotz, scalex, scaley, scalez))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /aobject [player] [objectid] [bone] [offx] [offy] [offz] [rotx] [roty] [rotz] [scax] [scay] [scaz]");
        return 1;
	}
	else
	{
		if(IsPlayerAttachedObjectSlotUsed(id, 8)) RemovePlayerAttachedObject(id, 8);
		SetPlayerAttachedObject(id, 8, objectid, bone, offsetx, offsety, offsetz, rotx, roty, rotz, scalex, scaley, scalez);

		format(szMiscArray, sizeof(szMiscArray), "%s da duoc cho %s(%d) object ID %d with /aobject", GetPlayerNameEx(playerid), GetPlayerNameEx(id), GetPlayerSQLId(id), objectid);
		Log("logs/toys.log", szMiscArray);
	}
	return 1;
}

CMD:robject(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1337) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay!");

	new id;
	if(sscanf(params, "u", id))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /robject [player]");
        return 1;
	}
	else
	{
		if(IsPlayerAttachedObjectSlotUsed(id, 9)) RemovePlayerAttachedObject(id, 9);
	}
	return 1;
}

CMD:wepreset(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 3)
	{
	    new giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /wepreset [player]");
		if(IsPlayerConnected(giveplayerid))
		{
		    if(PlayerInfo[giveplayerid][pWRestricted] > 0)
		    {
		        PlayerInfo[giveplayerid][pWRestricted] = 0;
		        format(szMiscArray, sizeof(szMiscArray), "{AA3333}GTN-Warning{FFFF00}: %s reset %s's (ID:%d) weapon restriction timer.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), giveplayerid);
		        ABroadCast(COLOR_YELLOW, szMiscArray, 2);
		    }
		    else
		    {
		        SendClientMessageEx(playerid, COLOR_WHITE, "Their weapons are not restricted!");
			}
		}
		else
		{
		    SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid player specified.");
		}
	}
	return 1;
}

CMD:bigears(playerid, params[])
{
    if( PlayerInfo[playerid][pAdmin] >= 2) {
        ShowPlayerDialogEx(playerid, BIGEARS, DIALOG_STYLE_LIST, "Please choose an item to proceed", "Global Chat\nOOC Chat\nIC Chat\nGroup OOC Chat\nFamily Chat\nPlayer\nPrivate Messages\nDisable Bigears", "Select", "Cancel");
    }
    return 1;
}

CMD:clearall(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 1337) {
        foreach(new i: Player)
        {
			PlayerInfo[i][pWantedLevel] = 0;
			SetPlayerToTeamColor(i);
			SetPlayerWantedLevel(i, 0);
			ClearCrimes(i);
		}
        SendClientMessageEx(playerid,COLOR_LIGHTBLUE, "Ban da xoa truey na cho tat ca nguoi choi.");
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
    }
    return 1;
}

CMD:savechars(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1) {
        SaveEventPoints();
        //mysql_SaveCrates();
        SendClientMessageEx(playerid, COLOR_YELLOW, "All Crates Saved successfully.");
        SaveAllAccountsUpdate();
		//g_mysql_DumpAccounts();
        SendClientMessageEx(playerid, COLOR_YELLOW, "Update Process Started - Wait for Account Saving Finish Confirmation.");
        SaveHouses();
        SendClientMessageEx(playerid, COLOR_YELLOW, "House saving process started.");
    }
    else {
        SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:setcolor(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2)
	{
        ShowPlayerDialogEx(playerid, COLORMENU, DIALOG_STYLE_LIST, "Color Menu", "Blue\nBlack\nRed\nOrange\nPink\nPurple\nGreen\nYellow\nWhite\nOOC Prisoner Orange\nBlue Admin", "Chon", "Huy");
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:mark(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2) {

		new
			Float: f_PlayerPos[3];

		GetPlayerPos(playerid, f_PlayerPos[0], f_PlayerPos[1], f_PlayerPos[2]);
		SetPVarFloat(playerid, "tpPosX1", f_PlayerPos[0]);
		SetPVarFloat(playerid, "tpPosY1", f_PlayerPos[1]);
		SetPVarFloat(playerid, "tpPosZ1", f_PlayerPos[2]);

		SetPVarInt(playerid, "tpInt1", GetPlayerInterior(playerid));
        SendClientMessageEx(playerid, COLOR_GRAD1, "Teleporter destination set!");
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:mark2(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 2) {

		new
			Float: f_PlayerPos[3];

		GetPlayerPos(playerid, f_PlayerPos[0], f_PlayerPos[1], f_PlayerPos[2]);
		SetPVarFloat(playerid, "tpPosX2", f_PlayerPos[0]);
		SetPVarFloat(playerid, "tpPosY2", f_PlayerPos[1]);
		SetPVarFloat(playerid, "tpPosZ2", f_PlayerPos[2]);

		SetPVarInt(playerid, "tpInt2", GetPlayerInterior(playerid));
        SendClientMessageEx(playerid, COLOR_GRAD1, "Teleporter destination set!");
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:gotojet(playerid, params[])
{
    if (PlayerInfo[playerid][pAdmin] >= 3) {
        if (GetPlayerState(playerid) == 2) {
            new tmpcar = GetPlayerVehicleID(playerid);
            SetVehiclePos(tmpcar, 1.71875, 30.4062, 1200.34);
        }
        else {
            SetPlayerPos(playerid, 1.71875, 30.4062, 1200.34);
        }
        SetPlayerInterior(playerid,1);
        SendClientMessageEx(playerid, COLOR_GRAD1, "   Ban da duoc dich chuyen!");
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
    }
    return 1;
}

CMD:god(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][pWatchdog] < 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong du quyen de thuc hien lenh nay!");
	{
		new Float:health, Float:armor;
	    if(GetPVarType(playerid, "pGodMode"))
	    {
			health = GetPVarFloat(playerid, "pPreGodHealth");
			SetHealth(playerid,health);
			armor = GetPVarFloat(playerid, "pPreGodArmor");
			SetArmour(playerid, armor);
			DeletePVar(playerid, "pGodMode");
			DeletePVar(playerid, "pPreGodHealth");
			DeletePVar(playerid, "pPreGodArmor");
			SendClientMessage(playerid, COLOR_WHITE, "God mode disabled");
		}
		else
		{
			GetHealth(playerid,health);
			SetPVarFloat(playerid, "pPreGodHealth", health);
			GetArmour(playerid,armor);
			SetPVarFloat(playerid, "pPreGodArmor", armor);
		    SetHealth(playerid, 0x7FB00000);
		    SetArmour(playerid, 0x7FB00000);
		    SetPVarInt(playerid, "pGodMode", 1);
		    SendClientMessage(playerid, COLOR_WHITE, "God mode enabled");
		}
    }
	return 1;
}

CMD:damagecheck(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh do.");
	if(GetPVarType(playerid, "_dCheck")) {
		DeletePVar(playerid, "_dCheck");
		SendClientMessageEx(playerid, COLOR_WHITE, "You have stopped damagecheck.");
		return 1;
	}
	new pID;
	if(sscanf(params, "u", pID)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /damagecheck [playerid]");
	if(!IsPlayerConnected(pID)) return SendClientMessageEx(playerid, COLOR_GREY, "Nguoi choi khong truc tuyen.");

	SetPVarInt(playerid, "_dCheck", pID);
	format(szMiscArray, sizeof(szMiscArray), "You will now see all the damage that %s takes/gives.", GetPlayerNameEx(pID));
	SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
	if(GetPVarInt(pID, "usingfirstaid") == 1) SendClientMessageEx(playerid, COLOR_ORANGE, "Note{ffffff}: Player is currently using a first aid kit.");
	return 1;
}

CMD:lastshot(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh do.");
	new pID;
	if(sscanf(params, "u", pID)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /lastshot [playerid]");
	if(!IsPlayerConnected(pID)) return SendClientMessageEx(playerid, COLOR_GREY, "Nguoi choi khong truc tuyen.");
	if(aLastShot[pID] == INVALID_PLAYER_ID) return SendClientMessageEx(playerid, COLOR_GREY, "Player was not shot yet.");

	format(szMiscArray, sizeof(szMiscArray), "%s was last shot by %s (ID: %d).",GetPlayerNameEx(pID), GetPlayerNameEx(aLastShot[pID]), aLastShot[pID]);
	SendClientMessageEx(playerid, COLOR_YELLOW, szMiscArray);
	return 1;
}

CMD:healnear(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1) {
		new radius, count;
		if(sscanf(params, "d", radius)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /healnear [pham vi]");
		if(radius < 1 || radius > 100)
  		{
			SendClientMessageEx(playerid, COLOR_WHITE, "Pham vi it nhat la 1 hoac cao nhat la 100!");
			return 1;
		}
		foreach(new i: Player)
		{
			if(ProxDetectorS(radius, playerid, i)) {
				SetHealth(i, 100);
				count++;
			}
		}
        format(szMiscArray, sizeof(szMiscArray), "You have healed everyone (%d) nearby.", count);
        SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
    }
    return 1;
}

CMD:armornear(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1) {
		new string[128], radius, count;
		if(sscanf(params, "d", radius)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /armornear [pham vi]");
		if(radius < 1 || radius > 100)
		{
			SendClientMessageEx(playerid, COLOR_WHITE, "Pham vi it nhat la 1 hoac cao nhat la 100!");
			return 1;
		}
        foreach(new i: Player)
		{
			if(ProxDetectorS(radius, playerid, i)) {
				SetArmour(i, 100);
				count++;
			}
        }
        format(string, sizeof(string), "Ban da cho armor to everyone (%d) nearby.", count);
        SendClientMessageEx(playerid, COLOR_WHITE, string);
    }
    return 1;
}

CMD:fixveh(playerid, params[])
{
    if(IsPlayerConnected(playerid)) {
        if(PlayerInfo[playerid][pAdmin] < 3 && PlayerInfo[playerid][pASM] < 1) {
            SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
            return 1;
        }
        if(IsPlayerInAnyVehicle(playerid)) {
            new Float:vrot;
            GetVehicleZAngle(GetPlayerVehicleID(playerid), vrot);
            SetVehicleZAngle(GetPlayerVehicleID(playerid), vrot);
            RepairVehicle(GetPlayerVehicleID(playerid));
			Vehicle_Armor(GetPlayerVehicleID(playerid));
            SendClientMessageEx(playerid, COLOR_GREY, "Ban da sua chua phuong tien nay!");
        }
    }
    return 1;
}


CMD:fixvehall(playerid, params[])
{
    if(IsPlayerConnected(playerid)) {
        if(PlayerInfo[playerid][pAdmin] < 3 && PlayerInfo[playerid][pASM] < 1) {
            SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
            return 1;
        }
        for(new v = 0; v < MAX_VEHICLES; v++) {
            RepairVehicle(v);
			Vehicle_Armor(v);
        }
        SendClientMessageEx(playerid, COLOR_GREY, "Ban da sua toan bo phuong tien tai may chu!");
    }
    return 1;
}


CMD:destroycars(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][pASM] < 1) {
        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
        return 1;
    }
    for(new i = 0; i < sizeof(C	reatedCars); i++) {
        if(CreatedCars[i] != INVALID_VEHICLE_ID) {
            DestroyVehicle(CreatedCars[i]);
            CreatedCars[i] = INVALID_VEHICLE_ID;
        }
    }
    SendClientMessageEx(playerid, COLOR_GREY, "   Created vehicles destroyed!");
    return 1;
}

/*
CMD:announcem(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] < 1337) {
        SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong duoc phep su dung lenh nay.");
        return 1;
    }
	restarting = 1;
    SetTimer( "Maintenance", 30000, false );
    SendClientMessageToAllEx(COLOR_LIGHTBLUE, "* The server will be going down in 30 seconds for Scheduled Maintenance.");
    foreach(new i: Player)
    {
		GameTextForPlayer(i, "~y~Scheduled Maintenance Alert", 5000, 6);
    }
    return 1;
}*/

CMD:rehashall(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1337)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
		return 1;
	}

	RehashHouses();
	RehashDynamicDoors();
	RehashDynamicMapIcons();
	return 1;
}

CMD:levelones(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new szNoobs[156], zone[MAX_ZONE_NAME], search[MAX_ZONE_NAME], hours;
		SendClientMessageEx(playerid, COLOR_WHITE, "Listing level ones...");
		if(!sscanf(params, "d", hours))
		{
			foreach(new i: Player)
			{
				if(gPlayerLogged{playerid} > 0 && PlayerInfo[i][pLevel] == 1 && PlayerInfo[i][pConnectHours] == hours && PlayerInfo[i][pAdmin] == 0)
				{
					GetPlayer3DZone(i, zone, sizeof(zone));
					format(szNoobs, sizeof(szNoobs), "* %s (ID %i) (Hours %i) - Location: %s", GetPlayerNameEx(i), i, PlayerInfo[i][pConnectHours], zone);
					SendClientMessageEx(playerid, COLOR_WHITE, szNoobs);
				}
			}
		}
		else if(!sscanf(params, "s[28]", search))
		{
			foreach(new i: Player)
			{
				if(gPlayerLogged{playerid} > 0 && PlayerInfo[i][pLevel] == 1 && PlayerInfo[i][pAdmin] == 0)
				{
					GetPlayer3DZone(i, zone, sizeof(zone));
					if(strcmp(search, zone, true) == 0 && !isnull(zone)) // null check, as strcmp returns 0 if empty.
					{
						format(szNoobs, sizeof(szNoobs), "* %s (ID %i) (Hours %i) - Location: %s", GetPlayerNameEx(i), i, PlayerInfo[i][pConnectHours], zone);
						SendClientMessageEx(playerid, COLOR_WHITE, szNoobs);
					}
				}
			}
		}
		else
		{
			foreach(new i: Player)
			{
				if(gPlayerLogged{playerid} > 0 && PlayerInfo[i][pLevel] == 1 && PlayerInfo[i][pAdmin] == 0)
				{
					GetPlayer3DZone(i, zone, sizeof(zone));
					format(szNoobs, sizeof(szNoobs), "* %s (ID %i) (Hours %i) - Location: %s", GetPlayerNameEx(i), i, PlayerInfo[i][pConnectHours], zone);
					SendClientMessageEx(playerid, COLOR_WHITE, szNoobs);
				}
			}
		}
	}
	return 1;
}

CMD:paused(playerid, params[]) {
    if(PlayerInfo[playerid][pAdmin] >= 2) {

    	new
			szMessage[42 + MAX_PLAYER_NAME];

	    SendClientMessageEx(playerid,COLOR_WHITE,"Listing all paused players...");
	    foreach(new i: Player)
	    {
			if(playerTabbed[i] != 0) {

				if(playerTabbed[i] > 60) format(szMessage, sizeof(szMessage), "* %s (ID %d), tabbed for %d minutes.", GetPlayerNameEx(i), i, playerTabbed[i] / 60);
				else format(szMessage, sizeof(szMessage), "* %s (ID %d), tabbed for %d seconds.", GetPlayerNameEx(i), i, playerTabbed[i]);

				if(PlayerInfo[i][pAdmin] >= 2) SendClientMessageEx(playerid,COLOR_RED, szMessage);
				else SendClientMessageEx(playerid,COLOR_GREY, szMessage);
			}
		}
   	}
    else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	return 1;
}

CMD:afk(playerid, params[]) {
    if(PlayerInfo[playerid][pAdmin] >= 2) {

    	new
			szMessage[36 + MAX_PLAYER_NAME];

	    SendClientMessageEx(playerid,COLOR_WHITE,"Danh sach nguoi choi dang AFK...");
	    foreach(new i: Player)
	    {
			if(playerAFK[i] != 0 && playerAFK[i] > 60) {
				format(szMessage,sizeof(szMessage),"* %s (ID: %d), Da AFK %d phut.", GetPlayerNameEx(i), i, playerAFK[i] / 60);
				if(PlayerInfo[i][pAdmin] >= 2) SendClientMessageEx(playerid,COLOR_RED,szMessage);
				else SendClientMessageEx(playerid,COLOR_GREY,szMessage);
			}
  		}
   	}
    else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	return 1;
}

CMD:destroypvehicle(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], giveplayerid, vehicleid;
		if(sscanf(params, "ud", giveplayerid, vehicleid)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /destroypvehicle [player] [vehicleid]");
		if(!(400 <= GetVehicleModel(vehicleid) <= 612)) return SendClientMessageEx(playerid, COLOR_GREY, "Invalid vehicle specified.");
		new playervehicleid = GetPlayerVehicle(giveplayerid, vehicleid);
		if(playervehicleid == -1) return SendClientMessageEx(playerid, COLOR_GREY, "ERROR: That person doesn't own that vehicle.");

		format(string, sizeof(string), "You have deleted %s's %s (vehicle ID %d).", GetPlayerNameEx(giveplayerid), GetVehicleName(vehicleid), vehicleid);
		SendClientMessageEx(playerid, COLOR_WHITE, string);
		format(string, sizeof(string), "An Administrator has deleted your %s.", GetVehicleName(vehicleid));
		SendClientMessageEx(giveplayerid, COLOR_GREY, string);
		format(string, sizeof(string), "%s has destroyed %s's(%d) %s.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetVehicleName(vehicleid));
		Log("logs/playervehicle.log", string);
		DestroyPlayerVehicle(giveplayerid, playervehicleid);
	}
	else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay.");
	return 1;
}

CMD:setsec(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 99999)
	{
	    new giveplayerid, task[8], string[128];
	    if(sscanf(params, "us[8]", giveplayerid, task))
		{
			SendClientMessage(playerid, COLOR_GREY, "SU DUNG: /setsec [playerid] [tuy chon (power)]");
			SendClientMessage(playerid, COLOR_GRAD6, "Power Admin: FMod, GMod, SO, BA, ST, PR, HR, Sec, BM, ASM");
			SendClientMessage(playerid, COLOR_GRAD6, "Power Assit: ST2");
			SendClientMessage(playerid, COLOR_GRAD6, "Power Head of: HoFM, HoST, HoPR, HoGM");
			SendClientMessage(playerid, COLOR_GRAD6, "Power Advisor: SPEC");
			return 1;
		}
		if(giveplayerid != INVALID_PLAYER_ID)
		{
				if(strcmp(task, "fmod", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pFactionModerator] == 0)
					{
						PlayerInfo[giveplayerid][pFactionModerator] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a Faction Moderator");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a Faction Moderator");
						format(string, sizeof(string), "%s da duoc cho Faction Moderator to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued faction moderator");
					}
					else
					{
						PlayerInfo[giveplayerid][pFactionModerator] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Faction Moderator");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Faction Moderator taken");
						format(string, sizeof(string), "%s has taken Faction Moderator from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from faction moderator");
					}
				}
				else if(strcmp(task, "hofm", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pFactionModerator] == 0)
					{
						PlayerInfo[giveplayerid][pFactionModerator] = 2;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a level 2 member of Faction Moderator.");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a level 2 member of Faction Moderator.");
						format(string, sizeof(string), "%s da duoc cho level 2 Faction Moderator permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued faction moderator");
					}
					else
					{
						PlayerInfo[giveplayerid][pFactionModerator] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Faction Moderator permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Faction Moderator permissions taken");
						format(string, sizeof(string), "%s has taken Faction Moderator permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from faction moderator");
					}
				}
				else if(strcmp(task, "gmod", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pGangModerator] == 0)
					{
						PlayerInfo[giveplayerid][pGangModerator] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a Gang Moderator");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a Gang Moderator");
						format(string, sizeof(string), "%s da duoc cho Gang Moderator to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued gang moderator");
					}
					else
					{
						PlayerInfo[giveplayerid][pGangModerator] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Gang Moderator");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Gang Moderator taken");
						format(string, sizeof(string), "%s has taken Gang Moderator from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from gang moderator");
					}
				}
				else if(strcmp(task, "hogm", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pGangModerator] == 0)
					{
						PlayerInfo[giveplayerid][pGangModerator] = 2;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a level 2 member of Gang Moderator.");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a level 2 member of Gang Moderator.");
						format(string, sizeof(string), "%s da duoc cho level 2 Gang Moderator permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued gang moderator");
					}
					else
					{
						PlayerInfo[giveplayerid][pGangModerator] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Gang Moderator permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Gang Moderator permissions taken");
						format(string, sizeof(string), "%s has taken Gang Moderator permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from gang moderator");
					}
				}
				else if(strcmp(task, "so", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pUndercover] == 0)
					{
						PlayerInfo[giveplayerid][pUndercover] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a Special Operative");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a Special Operative");
						format(string, sizeof(string), "%s da duoc cho Special Operative to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued special ops");
					}
					else
					{
						PlayerInfo[giveplayerid][pUndercover] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Special Operative");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Special Operative permissions taken");
						format(string, sizeof(string), "%s has taken Special Operative permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from special ops");
					}
				}
				else if(strcmp(task, "ba", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pBanAppealer] == 0)
					{
						PlayerInfo[giveplayerid][pBanAppealer] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a Ban Appealer");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a Ban Appealer");
						format(string, sizeof(string), "%s da duoc cho Ban Appealer to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued ban appealer");
					}
					else
					{
						PlayerInfo[giveplayerid][pBanAppealer] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Ban Appealer");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Ban Appealer taken");
						format(string, sizeof(string), "%s has taken Ban Appealer from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from ban appealer");
					}
				}
				else if(strcmp(task, "st", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pShopTech] == 0)
					{
						PlayerInfo[giveplayerid][pShopTech] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a Shop Technician");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a Shop Technician");
						format(string, sizeof(string), "%s da duoc cho Shop Technician to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued shop tech");
					}
					else
					{
						PlayerInfo[giveplayerid][pShopTech] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Shop Technician");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Shop Technician taken");
						format(string, sizeof(string), "%s has taken Shop Technician from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from shop tech");
					}
				}
				else if(strcmp(task, "st2", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pShopTech] == 0)
					{
						PlayerInfo[giveplayerid][pShopTech] = 2;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a level 2 member of Shop Technician.");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a level 2 member of Shop Technician.");
						format(string, sizeof(string), "%s da duoc cho level 2 Shop Technician permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued shop tech");
					}
					else
					{
						PlayerInfo[giveplayerid][pShopTech] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Shop Technician permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Shop Technician permissions taken");
						format(string, sizeof(string), "%s has taken Shop Technician permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from shop tech");
					}
				}
				else if(strcmp(task, "host", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pShopTech] == 0)
					{
						PlayerInfo[giveplayerid][pShopTech] = 3;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a level 3 member of Shop Technician.");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a level 3 member of Shop Technician.");
						format(string, sizeof(string), "%s da duoc cho level 2 Shop Technician permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued shop tech");
					}
					else
					{
						PlayerInfo[giveplayerid][pShopTech] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Shop Technician permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Shop Technician permissions taken");
						format(string, sizeof(string), "%s has taken Shop Technician permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from shop tech");
					}
				}
				else if(strcmp(task, "pr", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pPR] == 0)
					{
						PlayerInfo[giveplayerid][pPR] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a member of Public Relations");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a member of Public Relations");
						format(string, sizeof(string), "%s da duoc cho Public Relations permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued public relations");
					}
					else
					{
						PlayerInfo[giveplayerid][pPR] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Public Relations permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Public Relations permissions taken");
						format(string, sizeof(string), "%s has taken Public Relations permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from public relations");
					}
				}
				else if(strcmp(task, "hopr", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pPR] == 0)
					{
						PlayerInfo[giveplayerid][pPR] = 2;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a level 2 member of Public Relations");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a level 2 member of Public Relations");
						format(string, sizeof(string), "%s da duoc cho level 2 Public Relations permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued public relations");
					}
					else
					{
						PlayerInfo[giveplayerid][pPR] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Public Relations permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Public Relations permissions taken");
						format(string, sizeof(string), "%s has taken Public Relations permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from public relations");
					}
				}
				else if(strcmp(task, "hr", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pHR] == 0)
					{
						PlayerInfo[giveplayerid][pHR] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a member of Human Resources");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a member of Human Resources");
						format(string, sizeof(string), "%s da duoc cho Human Resources permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued human resources");
					}
					else
					{
						PlayerInfo[giveplayerid][pHR] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Human Resources permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Human Resources permissions taken");
						format(string, sizeof(string), "%s has taken Human Resources permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from human resources");
					}
				}
				else if(strcmp(task, "dosm", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pHR] == 0)
					{
						PlayerInfo[giveplayerid][pHR] = 2;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a level 2 member of Human Resources");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a level 2 member of Human Resources");
						format(string, sizeof(string), "%s da duoc cho level 2 Human Resources permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued human resources");
					}
					else
					{
						PlayerInfo[giveplayerid][pHR] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Human Resources permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Human Resources permissions taken");
						format(string, sizeof(string), "%s has taken Human Resources permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from human resources");
					}
				}
				else if(strcmp(task, "sec", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pSecurity] == 0)
					{
						PlayerInfo[giveplayerid][pSecurity] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a member of Security");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a member of Security");
						format(string, sizeof(string), "%s da duoc cho Security permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued security");
					}
					else
					{
						PlayerInfo[giveplayerid][pSecurity] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Security permissions");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Security permissions taken");
						format(string, sizeof(string), "%s has taken Security permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from security");
					}
				}
				else if(strcmp(task, "bm", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pBM] == 0)
					{
						PlayerInfo[giveplayerid][pBM] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them a Business Moderator");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made a Business Moderator");
						format(string, sizeof(string), "%s da duoc cho Business Moderator permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued business moderator");
					}
					else
					{
						PlayerInfo[giveplayerid][pBM] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Business Moderator");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Business Moderator taken");
						format(string, sizeof(string), "%s has taken Business Moderator permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from business moderator");
					}
				}
				else if(strcmp(task, "spec", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pPWSpec] == 0)
					{
						PlayerInfo[giveplayerid][pPWSpec] = 1;
						format(string, sizeof(string), "Ban da dua Power Spec cho %s", GetPlayerNameEx(giveplayerid));
						SendClientMessage(playerid, COLOR_WHITE, string);
						SendClientMessage(giveplayerid, COLOR_WHITE, "Ban da nhan duoc mot Power Spec boi Admin.");
						format(string, sizeof(string), "%s da dua Power Spec cho %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued Power Spec");
					}
					else
					{
						PlayerInfo[giveplayerid][pPWSpec] = 0;
						format(string, sizeof(string), "Ban da tich thu Power Spec cua %s", GetPlayerNameEx(giveplayerid));
						SendClientMessageEx(playerid, COLOR_GREY, string);
						SendClientMessage(giveplayerid, COLOR_GREY, "Ban da bi tich thu Power Spec boi Admin");
						format(string, sizeof(string), "%s da tich thu Power Spec cua %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from Power Spec");
					}
				}
				else if(strcmp(task, "asm", true) == 0)
				{
					if(PlayerInfo[giveplayerid][pASM] == 0)
					{
						PlayerInfo[giveplayerid][pASM] = 1;
						SendClientMessage(playerid, COLOR_WHITE, "You have made them an Assistant Shift Manager");
						SendClientMessage(giveplayerid, COLOR_WHITE, "You have been made an Assistant Shift Manager");
						format(string, sizeof(string), "%s da duoc cho Assistant Shift Manager permissions to %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "issued Assistant Shift Manager");
					}
					else
					{
						PlayerInfo[giveplayerid][pASM] = 0;
						SendClientMessageEx(playerid, COLOR_GREY, "You have taken their Assistant Shift Manager");
						SendClientMessage(giveplayerid, COLOR_GREY, "You have had your Assistant Shift Manager taken");
						format(string, sizeof(string), "%s has taken Assistant Shift Manager permissions from %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
						Log("logs/admin.log", string);
						DBLog(playerid, giveplayerid, "Admin", "removed from Assistant Shift Manager");
					}
				}
		}
		else SendClientMessageEx(playerid, COLOR_GRAD2, "That person is not connected.");
	}
	else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:removepvehicle(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new giveplayerid;
		if(sscanf(params, "u", giveplayerid)) {
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /removepvehicle [player]");
			return 1;
		}

		szMiscArray[0] = 0;

		for(new i, iModelID; i < GetPlayerVehicleSlots(giveplayerid); i++) {
			if((iModelID = PlayerVehicleInfo[giveplayerid][i][pvModelId] - 400) >= 0) {
				if(PlayerVehicleInfo[giveplayerid][i][pvImpounded]) {
					format(szMiscArray, sizeof(szMiscArray), "%s\n%s (impounded)", szMiscArray, VehicleName[iModelID]);
				}
				else if(PlayerVehicleInfo[giveplayerid][i][pvDisabled]) {
					format(szMiscArray, sizeof(szMiscArray), "%s\n%s (disabled)", szMiscArray, VehicleName[iModelID]);
				}
				else if(!PlayerVehicleInfo[giveplayerid][i][pvSpawned]) {
					format(szMiscArray, sizeof(szMiscArray), "%s\n%s (stored)", szMiscArray, VehicleName[iModelID]);
				}
				else format(szMiscArray, sizeof(szMiscArray), "%s\n%s (spawned)", szMiscArray, VehicleName[iModelID]);
			}
			else strcat(szMiscArray, "\nEmpty");
		}
		new string[64];
		SetPVarInt(playerid, "vehcheck_giveplayerid", giveplayerid);
		format(string, sizeof(string), "%s's Vehicle List", GetPlayerNameEx(giveplayerid));
		ShowPlayerDialogEx(playerid, ADMIN_VEHCHECK, DIALOG_STYLE_LIST, string, szMiscArray, "Delete Car", "Cancel");
	}
	return 1;
}

CMD:makeadmin(playerid, params[])  {

	if(PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pAP] >= 2 || PlayerInfo[playerid][pHR] >= 3) {

		new
			iAdminValue,
			iTargetID;

		if(sscanf(params, "ui", iTargetID, iAdminValue)) {
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /makeadmin [player] [lvl admin]");
		}
		else if(IsPlayerConnected(iTargetID)) {
			if(PlayerInfo[iTargetID][pHelper] >= 1) {
				SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the make mot Advisor thanh Admin!");
			}
			if(PlayerInfo[iTargetID][pAdmin] == iAdminValue) return SendClientMessageEx(playerid, COLOR_GREY, "This person already has this administrator level.");
			else {

				if(PlayerInfo[iTargetID][pStaffBanned] >= 1) return SendClientMessage(playerid, COLOR_WHITE, "That player is currently staff banned.");

				/*new
					szMessage[47 + (MAX_PLAYER_NAME * 2)];*/

                PriorityReport[iTargetID] = TextDrawCreate(261.000000, 373.000000, "New Report");
				TextDrawBackgroundColor(PriorityReport[iTargetID], 255);
				TextDrawFont(PriorityReport[iTargetID], 2);
				TextDrawLetterSize(PriorityReport[iTargetID], 0.460000, 1.800000);
				TextDrawColor(PriorityReport[iTargetID], -65281);
				TextDrawSetOutline(PriorityReport[iTargetID], 0);
				TextDrawSetProportional(PriorityReport[iTargetID], 1);
				TextDrawSetShadow(PriorityReport[iTargetID], 1);


				new szRank[128];
				switch(iAdminValue) {
					case 0: format(szRank, sizeof(szRank), "AdmCmd: %s has removed %s's administrator rank.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 1: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s a Server Moderator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 2: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s a Junior Administrator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 3: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s a General Administrator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 4: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s a Senior Administrator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 5: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s an Script Developer.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 1337: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s a Head Administrator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 1338: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s a Director Administrator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					case 99999: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s an Executive Administrator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
					default: format(szRank, sizeof(szRank), "AdmCmd: %s has made %s an undefined level administrator.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
				}

				PlayerInfo[iTargetID][pAdmin] = iAdminValue;
				ABroadCast(COLOR_LIGHTRED, szRank, 2);
				Log("logs/admin.log", szRank);

				switch(iAdminValue) {
					case 0: format(szRank, sizeof(szRank), "Your administrator rank has been removed by %s.", GetPlayerNameEx(playerid));
					case 1: format(szRank, sizeof(szRank), "You have been made a Server Moderator by %s.", GetPlayerNameEx(playerid));
					case 2: format(szRank, sizeof(szRank), "You have been made a Junior Administrator by %s.", GetPlayerNameEx(playerid));
					case 3: format(szRank, sizeof(szRank), "You have been made a General Administrator by %s.", GetPlayerNameEx(playerid));
					case 4: format(szRank, sizeof(szRank), "You have been made a Senior Administrator by %s.", GetPlayerNameEx(playerid));
					case 5: format(szRank, sizeof(szRank), "You have been made an Script Developer by %s.", GetPlayerNameEx(playerid));
					case 1337: format(szRank, sizeof(szRank), "You have been made a Head Administrator by %s.", GetPlayerNameEx(playerid));
					case 1338: format(szRank, sizeof(szRank), "You have been made a Director Administrator by %s.", GetPlayerNameEx(playerid));
					case 99999: format(szRank, sizeof(szRank), "You have been made an Executive Administrator by %s.", GetPlayerNameEx(playerid));
					default: format(szRank, sizeof(szRank), "You have been made an undefined level administrator by %s.", GetPlayerNameEx(playerid));
				}
				SendClientMessageEx(iTargetID, COLOR_LIGHTBLUE, szRank);

				switch(iAdminValue) {
					case 0: format(szRank, sizeof(szRank), "You have removed %s's administrator rank.", GetPlayerNameEx(iTargetID));
					case 1: format(szRank, sizeof(szRank), "You have made %s an Server Moderator.", GetPlayerNameEx(iTargetID));
					case 2: format(szRank, sizeof(szRank), "You have made %s an Junior Administrator.", GetPlayerNameEx(iTargetID));
					case 3: format(szRank, sizeof(szRank), "You have made %s an General Administrator.", GetPlayerNameEx(iTargetID));
					case 4: format(szRank, sizeof(szRank), "You have made %s an Senior Administrator.", GetPlayerNameEx(iTargetID));
					case 5: format(szRank, sizeof(szRank), "You have made %s an Script Developer.", GetPlayerNameEx(iTargetID));
					case 1337: format(szRank, sizeof(szRank), "You have made %s an Head Administrator.", GetPlayerNameEx(iTargetID));
					case 1338: format(szRank, sizeof(szRank), "You have made %s an Director Administrator.", GetPlayerNameEx(iTargetID));
					case 99999: format(szRank, sizeof(szRank), "You have made %s an Executive Administrator.", GetPlayerNameEx(iTargetID));
					default: format(szRank, sizeof(szRank), "You have made %s an undefined level administrator.", GetPlayerNameEx(iTargetID));
				}
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, szRank);

				format(szMiscArray, sizeof(szMiscArray), "was made a %s (%d)", GetAdminRankName(iAdminValue), iAdminValue);
				DBLog(playerid, iTargetID, "Admin", szMiscArray);

			}
		}
		else SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid player specified.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:apark(playerid, params[]) {
    if (PlayerInfo[playerid][pAdmin] >= 3)
	{
        foreach(new ownerid: Player)
		{
			for(new d = 0 ; d < MAX_PLAYERVEHICLES; d++)
			{
				if(IsPlayerInVehicle(playerid, PlayerVehicleInfo[ownerid][d][pvId]))
				{
					if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) return SendClientMessageEx(playerid, COLOR_GREY, "Ban phai ngoi o ghe lai xe.");
					new Float:x, Float:y, Float:z, Float:angle, Float:health;
					if(PlayerInfo[playerid][pLockCar] == GetPlayerVehicleID(playerid)) PlayerInfo[playerid][pLockCar] = INVALID_VEHICLE_ID;
					if(IsARC(GetPlayerVehicleID(playerid))) // RC Vehicles
					{
						new Float:vehPos[3];
						GetVehiclePos(GetPlayerVehicleID(playerid),vehPos[0], vehPos[1], vehPos[2]);
						SetPlayerPos(playerid,vehPos[0], vehPos[1]+0.5, vehPos[2]+0.5);
					}
					GetVehicleHealth(PlayerVehicleInfo[ownerid][d][pvId], health);
					GetVehiclePos(PlayerVehicleInfo[ownerid][d][pvId], x, y, z);
					GetVehicleZAngle(PlayerVehicleInfo[ownerid][d][pvId], angle);
					SurfingCheck(GetPlayerVehicleID(playerid));
					UpdatePlayerVehicleParkPosition(ownerid, d, x, y, z, angle, health, GetPlayerVirtualWorld(ownerid), GetPlayerInterior(ownerid));
					IsPlayerEntering{playerid} = true;
					DangLenXe[playerid] = GetPlayerVehicleID(playerid);
					PutPlayerInVehicle(playerid, GetPlayerVehicleID(playerid), 0);
					SetPlayerArmedWeapon(playerid, 0);

					new szMessage[128];

					format(szMessage, sizeof(szMessage),"* You have parked %s's %s.",GetPlayerNameEx(ownerid), VehicleName[PlayerVehicleInfo[ownerid][d][pvModelId] - 400]);
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE, szMessage);

					format(szMessage, sizeof(szMessage), "Your %s has been parked at another location by an admin. Use /trackcar to find it.", VehicleName[PlayerVehicleInfo[ownerid][d][pvModelId] - 400]);
					SendClientMessageEx(ownerid, COLOR_LIGHTBLUE, szMessage);
					return 1;
				}
			}
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:a(playerid, params[]) {
	return callcmd::admin(playerid, params);
}

CMD:admin(playerid, params[])  {
	if(PlayerInfo[playerid][pAdmin] >= 2) {
		if(!isnull(params)) {

			new
				szMessage[128];

			format(szMessage, sizeof(szMessage), "{FFFF00}* %s %s: %s", GetAdminRankName(PlayerInfo[playerid][pAdmin]), GetPlayerNameEx(playerid), params);
			foreach(new i: Player)
			{
				if(PlayerInfo[i][pAdmin] >= 2)
				{
					SendClientMessage(i, COLOR_WHITE, szMessage);
				}
			}

			format(szMessage, sizeof(szMessage), "%s %s: %s", GetAdminRankName(PlayerInfo[playerid][pAdmin]), GetPlayerNameEx(playerid), params);
			// SendDiscordMessage(0, szMessage);
		}
		else SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: (/a)dmin [noi dung]");
	}
	return 1;
}

CMD:ha(playerid, params[]) {
	return callcmd::headadmin(playerid, params);
}

CMD:headadmin(playerid, params[])  {
	if(PlayerInfo[playerid][pAdmin] >= 1337) {
		if(!isnull(params)) {

			new
				szMessage[128];

			format(szMessage, sizeof(szMessage), "(PRIVATE) %s %s: %s", GetAdminRankName(PlayerInfo[playerid][pAdmin]), GetPlayerNameEx(playerid), params);
			foreach(new i: Player)
			{
				if(PlayerInfo[i][pAdmin] >= 1337)
				{
					SendClientMessage(i, COLOR_GREEN, szMessage);
				}
			}

			format(szMessage, sizeof(szMessage), "%s %s: %s", GetAdminRankName(PlayerInfo[playerid][pAdmin]), GetPlayerNameEx(playerid), params);
			// SendDiscordMessage(2, szMessage);
		}
		else SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: (/ha)eadmin [Head admin+ chat]");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:dev(playerid, params[])  {
	if(PlayerInfo[playerid][pAdmin] >= 5) {
		if(!isnull(params)) {

			new
				szMessage[128];

			format(szMessage, sizeof(szMessage), "(DEV CHAT) %s %s: %s", GetAdminRankName(PlayerInfo[playerid][pAdmin]), GetPlayerNameEx(playerid), params);
			foreach(new i: Player)
			{
				if(PlayerInfo[i][pAdmin] >= 5)
				{
					SendClientMessage(i, 0xFF006FFF, szMessage);
				}
			}

			format(szMessage, sizeof(szMessage), "%s %s: %s", GetAdminRankName(PlayerInfo[playerid][pAdmin]), GetPlayerNameEx(playerid), params);
			// SendDiscordMessage(2, szMessage);
		}
		else SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /dev [Dev Chat]");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:staff(playerid, params[]) {
	if((PlayerInfo[playerid][pHelper] >= 2 || PlayerInfo[playerid][pAdmin] >= 1 || PlayerInfo[playerid][pVIPMod] || PlayerInfo[playerid][pWatchdog] >= 1) && PlayerInfo[playerid][pToggledChats][15] == 0) {
		if(PlayerInfo[playerid][pJailTime] && strfind(PlayerInfo[playerid][pPrisonReason], "[OOC]", true) != -1) return SendClientMessageEx(playerid, COLOR_GREY, "OOC prisoners are restricted to only speak in /b");
		if(!isnull(params)) {

			szMiscArray[0] = 0;

			if(PlayerInfo[playerid][pAdmin] == 2) format(szMiscArray, sizeof(szMiscArray), "Junior Admin %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pAdmin] == 3) format(szMiscArray, sizeof(szMiscArray), "General Admin %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pAdmin] == 4) format(szMiscArray, sizeof(szMiscArray), "Senior Admin %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pAdmin] == 5) format(szMiscArray, sizeof(szMiscArray), "Script Developer %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pAdmin] == 1337) format(szMiscArray, sizeof(szMiscArray), "Head Admin %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pAdmin] == 1338) format(szMiscArray, sizeof(szMiscArray), "Director Admin %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pAdmin] == 99999) format(szMiscArray, sizeof(szMiscArray), "Executive Admin %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pHelper] == 2) format(szMiscArray, sizeof(szMiscArray), "Community Advisor %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pHelper] == 3) format(szMiscArray, sizeof(szMiscArray), "Senior Advisor %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pHelper] >= 4) format(szMiscArray, sizeof(szMiscArray), "Chief Advisor %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pAdmin] == 1)
			{
				if(PlayerInfo[playerid][pSMod] != 0) format(szMiscArray, sizeof(szMiscArray), "Senior Moderator %s: %s", GetPlayerNameEx(playerid), params);
				else format(szMiscArray, sizeof(szMiscArray), "Server Moderator %s: %s", GetPlayerNameEx(playerid), params);
			}
			else if(PlayerInfo[playerid][pVIPMod] == 1) format(szMiscArray, sizeof(szMiscArray), "VIP Moderator %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pVIPMod] == 2) format(szMiscArray, sizeof(szMiscArray), "Senior VIP Moderator %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pWatchdog] == 1) format(szMiscArray, sizeof(szMiscArray), "Watchdog %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pWatchdog] == 2) format(szMiscArray, sizeof(szMiscArray), "Senior Watchdog %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pWatchdog] == 3) format(szMiscArray, sizeof(szMiscArray), "RP Specialist %s: %s", GetPlayerNameEx(playerid), params);
			else if(PlayerInfo[playerid][pWatchdog] == 4) format(szMiscArray, sizeof(szMiscArray), "Director of RP Improvement %s: %s", GetPlayerNameEx(playerid), params);
			else format(szMiscArray, sizeof(szMiscArray), "Undefined Admin (%d) %s: %s", PlayerInfo[playerid][pAdmin], GetPlayerNameEx(playerid), params);

			SendAdvisorMessage(COLOR_COMBINEDCHAT, szMiscArray);
			Log("logs/staffchat.log", szMiscArray);
			ChatDBLog(playerid, "StaffChat", szMiscArray);
		}
		else SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /staff [chat]");
	}
	return 1;
}

CMD:cnn(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1) {
		if(!isnull(params)) {

			format(szMiscArray, sizeof(szMiscArray), "~b~%s: ~w~%s",GetPlayerNameEx(playerid), params);
			foreach(new i: Player)
			{
				GameTextForPlayer(i, szMiscArray, 5000, 6);
			}
		}
		else SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /cnn [noi dung]. ~n~ = new line, ~r~ = red, ~g~ = green, ~b~ = blue, ~w~ = white, ~y~ = yellow.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:veh(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pASM] >= 1) {

		new
			iVehicle,
			iColors[2];

		if(sscanf(params, "iD(0)D(0)", iVehicle, iColors[0], iColors[1])) {
			SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /veh [model ID] [color 1] [color 2]");
		}
		else if(!(400 <= iVehicle <= 611)) {
			SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid model specified (model IDs start at 400, and end at 611).");
		}
		else if(IsATrain(iVehicle)) {
			SendClientMessageEx(playerid, COLOR_GREY, "Trains cannot be spawned during runtime.");
		}
		else if(!(0 <= iColors[0] <= 255 && 0 <= iColors[1] <= 255)) {
			SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid color specified (IDs start at 0, and end at 255).");
		}
		else for(new iIterator; iIterator < sizeof(CreatedCars); iIterator++) if(iIterator >= 49) {
			return SendClientMessageEx(playerid, COLOR_GRAD1, "The maximum limit of 50 spawned vehicles has been reached.");
		}
		else if(CreatedCars[iIterator] == INVALID_VEHICLE_ID) {

			new
				Float: fVehPos[4];

			new fVW = GetPlayerVirtualWorld(playerid);
			GetPlayerPos(playerid, fVehPos[0], fVehPos[1], fVehPos[2]);
			GetPlayerFacingAngle(playerid, fVehPos[3]);
			CreatedCars[iIterator] = CreateVehicle(iVehicle, fVehPos[0], fVehPos[1], fVehPos[2], fVehPos[3], iColors[0], iColors[1], -1);
			VehicleFuel[CreatedCars[iIterator]] = 100.0;
			Vehicle_ResetData(CreatedCars[iIterator]);
			LinkVehicleToInterior(CreatedCars[iIterator], GetPlayerInterior(playerid));
			SetVehicleVirtualWorld(CreatedCars[iIterator], fVW);
			return SendClientMessageEx(playerid, COLOR_GREY, "Da khoi tao mot phuong tien trong he thong.");
		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:cnnn(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1337) {

		new
			iTextID,
			szMessage[128];

		if(sscanf(params, "is[128]", iTextID, szMessage)) {
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /cnnn [type 1-6)] [noi dung]. ~n~ = new line, ~r~ = red, ~g~ = green, ~b~ = blue, ~w~ = white, ~y~ = yellow.");
		}
		else if(!(0 <= iTextID <= 6 && iTextID != 2)) {
			SendClientMessageEx(playerid, COLOR_GRAD2, "Text ID must be between 0 and 6, but not 2 (due to SA:MP bugs).");
		}
		else GameTextForAll(szMessage, 5000, iTextID);
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:gotopveh(playerid, params[]) {
    if(PlayerInfo[playerid][pAdmin] >= 2) {

        new iTargetID;

        if(sscanf(params, "u", iTargetID)) {
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /gotopveh [player]");
		}
		else if(IsPlayerConnected(iTargetID)) {

			new szVehString[8024], icount = GetPlayerVehicleSlots(iTargetID);
			if(!GetPlayerVehicleCount(iTargetID)) return SendClientMessageEx(playerid, COLOR_GREY, "ERROR: Player doesn't own any vehicles.");
			new szCarLocation[MAX_ZONE_NAME];
			for(new i, iModelID; i < icount; i++)
			{
				Get3DZone(PlayerVehicleInfo[iTargetID][i][pvPosX], PlayerVehicleInfo[iTargetID][i][pvPosY], PlayerVehicleInfo[iTargetID][i][pvPosZ], szCarLocation, sizeof(szCarLocation));
				if((iModelID = PlayerVehicleInfo[iTargetID][i][pvModelId] - 400) >= 0)
				{
					if(PlayerVehicleInfo[iTargetID][i][pvImpounded]) {
						format(szVehString, sizeof(szVehString), "%s\n%s (dang bi giam) | Vi tri: DMV Dillimore", szVehString, VehicleName[iModelID]);
					}
					else if(PlayerVehicleInfo[iTargetID][i][pvDisabled]) {
						format(szVehString, sizeof(szVehString), "%s\n%s (vo hieu hoa) | Vi tri: Unknown", szVehString, VehicleName[iModelID]);
					}
					else if(!PlayerVehicleInfo[iTargetID][i][pvSpawned]) {
						format(szVehString, sizeof(szVehString), "%s\n%s (trong kho)", szVehString, VehicleName[iModelID]);
					}
					else format(szVehString, sizeof(szVehString), "%s\n%s (ID: %i) | Vi tri: %s", szVehString, VehicleName[iModelID], PlayerVehicleInfo[iTargetID][i][pvId], szCarLocation);
				}
			}
		    ShowPlayerDialogEx(playerid, GOTOPLAYERCAR, DIALOG_STYLE_LIST, "Dich chuyen den phuong tien", szVehString, "Dich chuyen", "Thoat");
       		SetPVarInt(playerid, "playeraffectedcarTP", iTargetID);
		}
		else SendClientMessageEx(playerid, COLOR_GREY, "Invalid player specified.");
		{

		}
  	}
	return 1;
}

CMD:reloadpvehicles(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] < 3)
	{
        SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay.");
        return 1;
    }

	new string[128], giveplayerid;
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /reloadpvehicles [player]");

	if(!IsPlayerConnected(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi choi khong truc tuyen!");
	UnloadPlayerVehicles(giveplayerid);
	LoadPlayerVehicles(giveplayerid);

	format(string, sizeof(string), " You have successfully reloaded %s's Vehicles.", GetPlayerNameEx(giveplayerid));
	SendClientMessageEx(playerid, COLOR_GREY, string);

	return 1;
}

CMD:reloadpveh(playerid, params[])
{
	return callcmd::reloadpvehicles(playerid, params);
}

CMD:unloadpvehicles(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1337) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co quyen de thuc hien lenh nay!");

	foreach(new p: Player)
	{
		UnloadPlayerVehicles(p);
	}
	SendClientMessageEx(playerid, COLOR_GREY, "Ban da unload toan bo phuong tien.");
	return 1;
}

CMD:loadpvehicles(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1337) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co quyen de thuc hien lenh nay!");

	foreach(new p: Player)
	{
		LoadPlayerVehicles(p);
	}
	SendClientMessageEx(playerid, COLOR_GREY, "Ban da load lai toan bo phuong tien.");
	return 1;
}

CMD:admtaoxe(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pShopTech] >= 2)
	{
		new iColors[2], iTargetID, iModelID;

		if(sscanf(params, "uiD(0)D(0)", iTargetID, iModelID, iColors[0], iColors[1])) SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /createpvehicle [player] [model] [color 1] [color 2]");
		else if(!(400 <= iModelID <= 611)) SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid model specified (model IDs start at 400, and end at 611).");
		else if(IsATrain(iModelID)) SendClientMessageEx(playerid, COLOR_GREY, "Trains cannot be spawned during runtime.");
		else if(!(0 <= iColors[0] <= 255 && 0 <= iColors[1] <= 255)) SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid color specified (IDs start at 0, and end at 255).");
		else if(!vehicleCountCheck(iTargetID)) SendClientMessageEx(playerid, COLOR_GREY, "That person can't have more vehicles - they own too many.");
		else if(!vehicleSpawnCountCheck(iTargetID)) SendClientMessageEx(playerid, COLOR_GREY, "That person has too many vehicles spawned - they must store one first.");
		else if(PlayerInfo[iTargetID][pLevel] == 1 && PlayerInfo[iTargetID][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_RED, "You can't use /givemoney on level 1's");
		else
		{
			new Float: arr_fPlayerPos[4], szMessage[84];

			GetPlayerPos(iTargetID, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2]);
			GetPlayerFacingAngle(iTargetID, arr_fPlayerPos[3]);
			CreatePlayerVehicle(iTargetID, GetPlayerFreeVehicleId(iTargetID), iModelID, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], iColors[0], iColors[1], 2000000, GetPlayerVirtualWorld(iTargetID), GetPlayerInterior(iTargetID));

			format(szMessage, sizeof(szMessage), "You have successfully created a %s for %s.", VehicleName[iModelID - 400], GetPlayerNameEx(iTargetID));
			SendClientMessageEx(playerid, COLOR_WHITE, szMessage);
			format(szMessage, sizeof(szMessage), "%s created a %s (%i) for %s(%d)", GetPlayerNameEx(playerid), VehicleName[iModelID - 400], iModelID, GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID));
			Log("logs/playervehicle.log", szMessage);
			format(szMiscArray, sizeof(szMiscArray), "created a %s (%d)", VehicleName[iModelID - 400], iModelID);
			DBLog(playerid, iTargetID, "PlayerVehicle", szMiscArray);
		}
	}
	else SendClientMessageEx(playerid, COLOR_GREY, " Ban khong duoc phep su dung lenh nay.");
    return 1;
}

CMD:ip(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		if(isnull(params)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /ip [ip]");

		new string[128], IP[32];

		foreach(new i: Player)
		{
			GetPlayerIp(i, IP, sizeof(IP));
			if(strfind(IP, params, true) != -1 && PlayerInfo[i][pAdmin] <= PlayerInfo[playerid][pAdmin])
			{
				format(string, sizeof(string), "Accounts: %s (ID: %d) (Level: %d) | IP: %s", GetPlayerNameEx(i), i, PlayerInfo[i][pLevel],  IP);
				SendClientMessageEx(playerid, COLOR_GRAD1, string);
				format(string, sizeof(string), "%s has IP Checked %s(%d)", GetPlayerNameEx(playerid), GetPlayerNameEx(i), GetPlayerSQLId(i));
				if(PlayerInfo[i][pAdmin] >= 2) {
					Log("logs/adminipcheck.log", string);
					DBLog(playerid, i, "AdminIPCheck", "performed an IP check");
				}
				else {
					Log("logs/ipcheck.log", string);
					DBLog(playerid, i, "IPCheck", "performed an IP check");
				}
			}
		}
	}

	return 1;
}

CMD:unlockveh(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
		new vehicleid;
		if(sscanf(params, "d", vehicleid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /unlockveh [vehicle id]");

		if(IsValidVehicleID(vehicleid))
		{
			vehicle_unlock_doors(vehicleid);
			GameTextForPlayer(playerid, "~g~unlocked", 1000, 6);
			PlayerPlaySound(playerid, 1145, 0.0, 0.0, 0.0);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid vehicle ID");
		}
	}
	return 1;
}

CMD:ounsuspend(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pAP] >= 2 || PlayerInfo[playerid][pHR] >= 3)
	{
		new string[128], query[512], tmpName[24];
		if(isnull(params)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /ounsuspend [player name]");

		mysql_escape_string(params, tmpName);
		SetPVarString(playerid, "OnSetSuspended", tmpName);
		mysql_format(MainPipeline, query,sizeof(query),"UPDATE `accounts` SET `Disabled` = 0 WHERE `Username` = '%s' AND `AdminLevel` < 1338 AND `AdminLevel` > 1", tmpName);
		mysql_tquery(MainPipeline, query, "OnSetSuspended", "ii", playerid, false);

		format(string,sizeof(string),"Attempting to unsuspend %s's account...",tmpName);
		SendClientMessageEx(playerid,COLOR_YELLOW,string);
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:osetrmutes(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pAP] >= 2 || PlayerInfo[playerid][pHR] >= 3) {

		new
			szPlayerName[MAX_PLAYER_NAME],
			iMuteCount;

		if(sscanf(params, "s[24]i", szPlayerName, iMuteCount)) {
			return SendClientMessageEx(playerid, COLOR_WHITE, "USAGE: /osetrmutes [player name] [mutes]");
		}
		else if(iMuteCount >= 0) {

			new
				szQuery[128];

			mysql_escape_string(szPlayerName, szPlayerName);
			mysql_format(MainPipeline, szQuery, sizeof szQuery, "UPDATE `accounts` SET `ReportMutedTotal` = %i, `ReportMuted` = 0, `ReportMutedTime` = 0 WHERE `Username` = '%s'", iMuteCount, szPlayerName);
			mysql_tquery(MainPipeline, szQuery, "Query_OnExecution", "ii", playerid);
			SetPVarString(playerid, "QueryEx_Name", szPlayerName);
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Mutes cannot be set to less than zero.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do!");
	return 1;
}

CMD:destroycar(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pASM] >= 1) {
		if(IsPlayerInAnyVehicle(playerid)) {
			for(new i = 0; i < sizeof(CreatedCars); ++i) if(CreatedCars[i] == GetPlayerVehicleID(playerid)) {
				DestroyVehicle(CreatedCars[i]);
				CreatedCars[i] = INVALID_VEHICLE_ID;
				return SendClientMessageEx(playerid, COLOR_GREY, "You have successfully despawned this vehicle.");
			}
			SendClientMessageEx(playerid, COLOR_GRAD1, "This vehicle is not admin-spawned.");
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong dung tai any vehicle.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:setfightstyle(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], giveplayerid, fightstyle;
		if(sscanf(params, "ud", giveplayerid, fightstyle))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setfightstyle [player] [Tuy chon]");
			SendClientMessageEx(playerid, COLOR_GRAD2, "Tuy chon: 4, 5, 6, 7, 15, 26.");
			return 1;
		}

		if(fightstyle > 3 && fightstyle < 8 || fightstyle == 15 || fightstyle == 26)
		{
			format(string, sizeof(string), " Your fighting style has been changed to %d.", fightstyle);
			SendClientMessageEx(giveplayerid,COLOR_YELLOW,string);
			format(string, sizeof(string), " You have changed %s's fighting style to %d.", GetPlayerNameEx(giveplayerid), fightstyle);
			SendClientMessageEx(playerid,COLOR_YELLOW,string);
			SetPlayerFightingStyle(giveplayerid, fightstyle);
			PlayerInfo[playerid][pFightStyle] = fightstyle;
			return 1;
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:setmyname(playerid, params[])
{
	new string[128], query[128];
	if(isnull(params)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /setmyname [newname]");

	if (PlayerInfo[playerid][pUndercover] >= 1 || PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1 || PlayerInfo[playerid][pFactionModerator] >= 4)
	{
		if(GetPVarInt(playerid, "TempName") == 0)
		{
		    if(strlen(params) > MAX_PLAYER_NAME)
			{
				format(string, sizeof(string), "You can't select a name that's above %d characters.", MAX_PLAYER_NAME);
				return SendClientMessageEx(playerid, COLOR_WHITE, string);
			}
			new tmpName[24];
			mysql_escape_string(params, tmpName);

			mysql_format(MainPipeline, query, sizeof(query), "SELECT `Username` FROM `accounts` WHERE `Username`='%s'", tmpName);
			SetPVarString(playerid, "OnSetMyName", tmpName);
			mysql_tquery(MainPipeline, query, "OnSetMyName", "i", playerid);
		}
		else
		{
			new name[MAX_PLAYER_NAME];
			GetPVarString(playerid, "TempNameName", name, sizeof(name));
			if(strlen(name) > 0)
			{
				SetPlayerName(playerid, name);
				SetPVarInt(playerid, "TempName", 0);
				format(string, sizeof(string), "You changed your name back to %s.", name);
				SendClientMessageEx(playerid, COLOR_YELLOW, string);
				SendClientMessageEx(playerid, COLOR_GRAD2, "NOTE: Your stats will now save again.");
			}
		}
	}
	return 1;
}

CMD:admsetname(playerid, params[])
{
	new giveplayerid, string[128], name[MAX_PLAYER_NAME];
	if(sscanf(params, "us[24]", giveplayerid, name)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /setname [playerid] [newname]");

	if(IsPlayerConnected(giveplayerid))
	{
		if (PlayerInfo[playerid][pAdmin] >= 1337)
		{
		    if(strlen(name) > MAX_PLAYER_NAME)
			{
				format(string, sizeof(string), "You can't select a name that's above %d characters.", MAX_PLAYER_NAME);
				return SendClientMessageEx(playerid, COLOR_WHITE, string);
			}
			new query[128], tmpName[MAX_PLAYER_NAME];
			mysql_escape_string(name, tmpName);
			if(strcmp(name, tmpName, false) == 0)
			{
	   			SetPVarString(playerid, "OnSetName", tmpName);

				mysql_format(MainPipeline, query, sizeof(query), "SELECT `Username` FROM `accounts` WHERE `Username`='%s'", tmpName);
				mysql_tquery(MainPipeline, query, "OnSetName", "ii", playerid, giveplayerid);
			}
			else return SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid characters!");
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong duoc phep su dung lenh nay.");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD2, "No Such Player");
	}
	return 1;
}

CMD:blowup(playerid, params[])
{
	new string[128], giveplayerid;
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /blowup [player]");
	if((PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin]) && giveplayerid != playerid) return SendClientMessageEx(playerid, COLOR_GREY, "You cannot use this command on the same/greater level admin than you!");
	if(IsPlayerConnected(giveplayerid))
	{
		if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
		{
			if(IsPlayerConnected(giveplayerid))
			{
				format(string, sizeof(string), "You have successfully exploded %s (ID: %d).",GetPlayerNameEx(giveplayerid),giveplayerid);
				SendClientMessageEx(playerid,COLOR_GRAD2,string);
				new Float:boomx, Float:boomy, Float:boomz;
				GetPlayerPos(giveplayerid,boomx, boomy, boomz);
				CreateExplosion(boomx, boomy , boomz, 7, 1);
				format(string, sizeof(string), "AdmCmd: %s has exploded %s(%d)", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid));
				Log("logs/admin.log", string);
				DBLog(playerid, giveplayerid, "Admin", "exploded");
			}
			else SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh do.");
		}
	}
	return 1;
}

CMD:givenos(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /givenos [player]");

		if(giveplayerid == INVALID_PLAYER_ID) return 1;
		if(!IsPlayerConnected(giveplayerid)) return 1;
		if(IsPlayerInAnyVehicle(giveplayerid))
		{
			new VehicleID = GetPlayerVehicleID(giveplayerid), Model = GetVehicleModel(VehicleID);
			switch(Model)
			{
			case 448,461,462,463,468,471,509,510,521,522,523,581,586,449: return
				SendClientMessageEx(playerid,COLOR_GRAD1,"ERROR: You can not tune this vehicle!");
			}
			AddVehicleComponent(VehicleID, 1010); PlayerPlaySound(giveplayerid,1133,0.0,0.0,0.0);//NOS
			format(string, sizeof(string), " Successfully added nos to %s's vehicle.", GetPlayerNameEx(giveplayerid));
			SendClientMessageEx(playerid,COLOR_GRAD1,string);
			format(string, sizeof(string), "AdmCmd: %s da duoc cho nos to %s(%d)", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid));
			Log("logs/admin.log", string);
			DBLog(playerid, giveplayerid, "Admin", "gave nos");
		}
		else
		{
			SendClientMessageEx(playerid,COLOR_GRAD1,"ERROR: person must be in chiec xe.");
		}
	}
	else
	{
		SendClientMessageEx(playerid,COLOR_GRAD1,"Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:countdown(playerid, params[])
{
	if(IsARacer(playerid) && PlayerInfo[playerid][pTogReports] == 1 && PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pTogReports] == 1 && PlayerInfo[playerid][pASM] >= 1) {
	    if(CountDown == 0) {
        	SetTimerEx("Countdown", 100, false, "i", playerid); //Keep this at 100milliseconds
        } else {
            SendClientMessageEx(playerid, COLOR_WHITE, "There is already a countdown currently started.");
        }
    }
    else if(IsARacer(playerid)) {
        if(CountDown == 0) {
        	SetTimerEx("Countdown", 100, false, "i", playerid); //Keep this at 100milliseconds
        } else {
            SendClientMessageEx(playerid, COLOR_WHITE, "There is already a countdown currently started.");
        }
    }
    else if(PlayerInfo[playerid][pAdmin] >= 3 && PlayerInfo[playerid][pTogReports] == 0) {
        if(CountDown == 0) {
        	SetTimerEx("Countdown", 100, false, "i", playerid); //Keep this at 100milliseconds
        } else {
            SendClientMessageEx(playerid, COLOR_WHITE, "There is already a countdown currently started.");
        }
    }
    return 1;
}

CMD:ipwhitelist(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], query[256], giveplayer[MAX_PLAYER_NAME], ip[16];
		if(sscanf(params, "s[24]s[16]", giveplayer, ip))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /ipwhitelist [admin name] [IP]");
			return 1;
		}

		new tmpName[24], tmpIP[16];
		mysql_escape_string(giveplayer, tmpName);
		mysql_escape_string(ip, tmpIP);
		SetPVarString(playerid, "OnIPWhitelist", tmpName);

		mysql_format(MainPipeline, query, sizeof(query), "UPDATE `accounts` SET `SecureIP`='%s' WHERE `Username`='%s' AND `AdminLevel` <= %d", tmpIP, tmpName, PlayerInfo[playerid][pAdmin]);
		mysql_tquery(MainPipeline, query, "OnIPWhitelist", "i", playerid);

		format(string, sizeof(string), "Attempting to whitelist %s on %s's account...", tmpIP, tmpName);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);
	}
	return 1;
}

CMD:hosp(playerid, params[]) {
	return callcmd::hospital(playerid, params);
}

CMD:hospital(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid))
		{
			if(PlayerInfo[playerid][pHospital] > 0)
			{
				ClearAnimationsEx(playerid);
				SetPVarInt(playerid, "_SpawningAtHospital", 2);
				return SendClientMessageEx(playerid, COLOR_GREY, "Ban da xuat vien.");
			}
			else return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /hospital [player]");
		}
		else
		{
			if(IsPlayerConnected(giveplayerid))
			{
				if(PlayerInfo[giveplayerid][pHospital] > 0)
				{
					format(string, sizeof(string), "You have forced %s out of the hospital.", GetPlayerNameEx(giveplayerid));
					SendClientMessageEx(playerid, COLOR_WHITE, string);
					SendClientMessageEx(giveplayerid, COLOR_WHITE, "Ban da duoc xuat vien som hon boi Admin.");
					ClearAnimationsEx(giveplayerid);
					SetPVarInt(giveplayerid, "_SpawningAtHospital", 2);
				}
				else SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi choi khong nam trong benh vien!");
			}
			else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
		}
	}
	return 1;
}

CMD:revive(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /revive [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(GetPVarInt(giveplayerid, "Injured") == 1)
			{
				format(string, sizeof(string), "Ban da hoi sinh nguoi choi %s.", GetPlayerNameEx(giveplayerid));
				SendClientMessageEx(playerid, COLOR_WHITE, string);
				SendClientMessageEx(giveplayerid, COLOR_WHITE, "Ban da duoc hoi sinh boi Admin.");
				format(string, sizeof(string), "AdmCmd: %s(%d) da duoc hoi sinh boi %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid));
				Log("logs/admin.log", string);
				DBLog(playerid, giveplayerid, "Admin", "revived");

				KillEMSQueue(giveplayerid);
   				ClearAnimationsEx(giveplayerid);
   				SetHealth(giveplayerid, 100);
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi choi khong bi thuong!");
			}
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:revivenear(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], radius, count;
		if(sscanf(params, "d", radius)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /revivenear [pham vi]");

		if(radius < 1 || radius > 100)
		{
			SendClientMessageEx(playerid, COLOR_WHITE, "Pham vi thap nhat la 1 va cao nhat la 100!");
			return 1;
		}
        foreach(new i: Player)
        {
        	if(ProxDetectorS(radius, playerid, i))
			{
				if(GetPVarInt(i, "Injured") == 1)
				{

					SetHealth(i, 100);
					count++;
					SendClientMessageEx(i, COLOR_WHITE, "You have been revived by an Admin.");
					KillEMSQueue(i);
					ClearAnimationsEx(i);
					SetHealth(i, 100);
					format(string, sizeof(string), "AdmCmd: %s(%d) has been revived by %s", GetPlayerNameEx(i), GetPlayerSQLId(i), GetPlayerNameEx(playerid));
					Log("logs/admin.log", string);
					DBLog(playerid, i, "Admin", "revived (/revivenear)");
				}
			}
        }
		format(string, sizeof(string), "You have revived everyone (%d) nearby.", count);
		SendClientMessageEx(playerid, COLOR_WHITE, string);
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:forcedeath(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 3)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /forcedeath [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(GetPVarInt(giveplayerid, "Injured") == 1)
			{
				format(string, sizeof(string), " You have forced %s to death.", GetPlayerNameEx(giveplayerid));
				SendClientMessageEx(playerid, COLOR_WHITE, string);
				SendClientMessageEx(giveplayerid, COLOR_WHITE, "You have been forced to death by an Admin.");
				KillEMSQueue(giveplayerid);
				ResetPlayerWeaponsEx(giveplayerid);
				SpawnPlayer(giveplayerid);
				format(string, sizeof(string), "AdmCmd: %s has forced death %s(%d)", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid));
				Log("logs/admin.log", string);
				DBLog(playerid, giveplayerid, "Admin", "forced death");
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "That person is not injured!");
			}
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:ipcheck(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /ipcheck [player]");

		if(giveplayerid == INVALID_PLAYER_ID) return 1;
		if(!IsPlayerConnected(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");

		if(PlayerInfo[giveplayerid][pAdmin] <= 1 || (PlayerInfo[giveplayerid][pAdmin] <= PlayerInfo[playerid][pAdmin] && PlayerInfo[playerid][pAdmin] >= 1337))
		{
			new playerip[32];
			GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "(ID: %d) - (Name: %s) - (IP: %s)", giveplayerid, GetPlayerNameEx(giveplayerid), playerip);
			SendClientMessageEx(playerid, COLOR_WHITE, string);
			format(string, sizeof(string), "%s has IP Checked %s(%d)", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid));
			if(PlayerInfo[giveplayerid][pAdmin] >= 2) {
				Log("logs/adminipcheck.log", string);
				DBLog(playerid, giveplayerid, "AdminIPCheck", "performed an IP check");
			}
			else {
				Log("logs/ipcheck.log", string);
				DBLog(playerid, giveplayerid, "IPCheck", "performed an IP check");
			}
			return 1;
		}
		if(PlayerInfo[giveplayerid][pAdmin] >= 2)
		{
			if(PlayerInfo[giveplayerid][pAdmin] > PlayerInfo[playerid][pAdmin])
			{
				format(string, sizeof(string), "%s has tried to check the IP address of a higher admin\nPlease report this to SIU/OED or an EA", GetPlayerNameEx(playerid));
				foreach(new i : Player)
				{
					if(PlayerInfo[i][pAdmin] >= 4) ShowPlayerDialogEx(i, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, "{FFFF00}AdminWarning - {FF0000}Report ASAP", string, "Close", "");
				}
			}
			format(string, sizeof(string), "%s tried to IP check %s(%d)", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid));
			Log("logs/adminipcheck.log", string);
			DBLog(playerid, giveplayerid, "AdminIPCheck", "tried to IP check a higher admin");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:pfine(playerid, params[])
{
	new string[128], giveplayerid, percentage, minimum, reason[64];
	if(sscanf(params, "udds[64]", giveplayerid, percentage, minimum, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /pfine [player] [percentage] [minimum] [reason]");

	if (PlayerInfo[playerid][pAdmin] >= 3)
	{
		if(IsPlayerConnected(giveplayerid))
		{
			new totalwealth = PlayerInfo[giveplayerid][pAccount] + GetPlayerCash(giveplayerid);
			if(PlayerInfo[giveplayerid][pPhousekey] != INVALID_HOUSE_ID && HouseInfo[PlayerInfo[giveplayerid][pPhousekey]][hOwnerID] == GetPlayerSQLId(giveplayerid)) totalwealth += HouseInfo[PlayerInfo[giveplayerid][pPhousekey]][hSafeMoney];
			if(PlayerInfo[giveplayerid][pPhousekey2] != INVALID_HOUSE_ID && HouseInfo[PlayerInfo[giveplayerid][pPhousekey2]][hOwnerID] == GetPlayerSQLId(giveplayerid)) totalwealth += HouseInfo[PlayerInfo[giveplayerid][pPhousekey2]][hSafeMoney];
			if(PlayerInfo[giveplayerid][pPhousekey3] != INVALID_HOUSE_ID && HouseInfo[PlayerInfo[giveplayerid][pPhousekey3]][hOwnerID] == GetPlayerSQLId(giveplayerid)) totalwealth += HouseInfo[PlayerInfo[giveplayerid][pPhousekey3]][hSafeMoney];
			if(totalwealth < 1) return SendClientMessageEx(giveplayerid, COLOR_GRAD2, "That person does not have any money!");

			new fine = percentage * totalwealth / 100;
			if(percentage < 1 || percentage > 100) return SendClientMessageEx(playerid, COLOR_GRAD2, "Percentage must be greater than 0 and below 100.");
			else if(minimum < 1) return SendClientMessageEx(playerid, COLOR_GRAD2, "Minimum amount must be greater than 0.");

			if(minimum > fine)
			{
				//GivePlayerCash(giveplayerid, -minimum);
				GivePlayerCashEx(giveplayerid, TYPE_ONHAND, -minimum);
				format(string, sizeof(string), "AdmCmd: %s(%d) was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), number_format(minimum), GetPlayerNameEx(playerid), reason);
				Log("logs/admin.log", string);
				format(szMiscArray, sizeof(szMiscArray), "was fined $%s (%s)", number_format(minimum), reason);
				DBLog(playerid, giveplayerid, "Admin", szMiscArray);
				format(string, sizeof(string), "AdmCmd: %s was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), number_format(minimum), GetPlayerNameEx(playerid), reason);
			}
			else
			{
				//GivePlayerCash(giveplayerid, -fine);
				GivePlayerCashEx(giveplayerid, TYPE_ONHAND, -fine);
				format(string, sizeof(string), "AdmCmd: %s(%d) was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), number_format(fine), GetPlayerNameEx(playerid), reason);
				Log("logs/admin.log", string);
				format(szMiscArray, sizeof(szMiscArray), "was fined $%s (%s)", number_format(fine), reason);
				DBLog(playerid, giveplayerid, "Admin", szMiscArray);
				format(string, sizeof(string), "AdmCmd: %s was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), number_format(fine), GetPlayerNameEx(playerid), reason);
			}

			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			//OnPlayerStatsUpdate(giveplayerid);
			return 1;
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:fine(playerid, params[])
{
	new string[128], giveplayerid, amount, reason[64];
	if(sscanf(params, "uds[64]", giveplayerid, amount, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /fine [player] [so tien] [ly do]");

	if (PlayerInfo[playerid][pAdmin] >= 3)
	{
		if(strcmp(GetPlayerIpEx(playerid), PlayerInfo[playerid][pSecureIP], false, 16) != 0)
		{
			format(string, sizeof(string), "[/FINE] %s has had their account disabled for not matching their whitelisted ip, contact a member of security.", GetPlayerNameEx(playerid));
			ABroadCast(COLOR_YELLOW, string, 4);
			Log("logs/admin.log", string);
			DBLog(playerid, INVALID_PLAYER_ID, "Admin", "Account auto-disabled (whitelist fail)");
			PlayerInfo[playerid][pDisabled] = 1;
			Kick(playerid);
			return 1;
		}
		if(IsPlayerConnected(giveplayerid))
		{
			if (amount < 1)
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Amount must be greater than 0");
				return 1;
			}
			format(string, sizeof(string), "AdmCmd: %s(%d) was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
			Log("logs/admin.log", string);
			format(szMiscArray, sizeof(szMiscArray), "fined $%s (%s)", number_format(amount), reason);
			DBLog(playerid, giveplayerid, "Admin", szMiscArray);
			format(string, sizeof(string), "AdmCmd: %s was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
			GivePlayerCash(giveplayerid, -amount);
			OnPlayerStatsUpdate(giveplayerid);
			return 1;
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "You're not a level three admin.");
	}
	return 1;
}

CMD:sfine(playerid, params[])
{
	new string[128], giveplayerid, amount, reason[64];
	if(sscanf(params, "uds[64]", giveplayerid, amount, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /sfine [player] [so tien] [ly do]");

	if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		if(strcmp(GetPlayerIpEx(playerid), PlayerInfo[playerid][pSecureIP], false, 16) != 0)
		{
			format(string, sizeof(string), "[/SFINE] %s has had their account disabled for not matching their whitelisted ip, contact a member of security.", GetPlayerNameEx(playerid));
			ABroadCast(COLOR_YELLOW, string, 4);
			Log("logs/admin.log", string);
			DBLog(playerid, INVALID_PLAYER_ID, "Admin", "Account auto-disabled (whitelist fail)");
			PlayerInfo[playerid][pDisabled] = 1;
			Kick(playerid);
			return 1;
		}
		if(IsPlayerConnected(giveplayerid))
		{
			if (amount < 1)
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Amount must be greater than 0");
				return 1;
			}
			format(string, sizeof(string), "AdmCmd: %s(%d) was silent fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
			Log("logs/admin.log", string);
			format(szMiscArray, sizeof(szMiscArray), "silent fined $%s (%s)", number_format(amount), reason);
			DBLog(playerid, giveplayerid, "Admin", szMiscArray);
			format(string, sizeof(string), "AdmCmd: %s was silent fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
			ABroadCast(COLOR_LIGHTRED, string, 2);
			format(string, sizeof(string), "You have been silent fined $%s by %s, reason: %s", number_format(amount), GetPlayerNameEx(playerid), reason);
			SendClientMessageEx(giveplayerid, COLOR_LIGHTRED, string);
			GivePlayerCash(giveplayerid, -amount);
			OnPlayerStatsUpdate(giveplayerid);
			return 1;
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "You're not a level three admin.");
	}
	return 1;
}

CMD:listguns(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /listguns [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			new weapons[13][2], weaponname[50];
			if(GetPVarInt(giveplayerid, "EventToken") != 0 || GetPVarType(giveplayerid, "IsInArena"))
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "That person is at an event/paintball so the weapons may appear as non-server sided.");
			}
			SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
			format(string, sizeof(string), "Weapons on %s:", GetPlayerNameEx(giveplayerid));
			SendClientMessageEx(playerid, COLOR_WHITE, string);
			for (new i = 0; i < 13; i++)
			{
				GetPlayerWeaponData(giveplayerid, i, weapons[i][0], weapons[i][1]);
				if(weapons[i][0] > 0)
				{
					if(PlayerInfo[giveplayerid][pGuns][i] == weapons[i][0])
					{
						GetWeaponName(weapons[i][0], weaponname, sizeof(weaponname));
						format(string, sizeof(string), "%s (%d).", weaponname, weapons[i][0]);
						SendClientMessageEx(playerid, COLOR_GRAD1, string);
					}
					else
					{
						GetWeaponName(weapons[i][0], weaponname, sizeof(weaponname));
						format(string, sizeof(string), "%s (%d) (non server-side).", weaponname, weapons[i][0]);
						SendClientMessageEx(playerid, COLOR_GRAD1, string);
					}
				}
			}
			SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:oipcheck(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 3)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do!");
		return 1;
	}

	new query[128], name[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", name)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /oipcheck [tai khoan]");

	new tmpName[24];
	mysql_escape_string(name, tmpName);

	mysql_format(MainPipeline, query, sizeof(query), "SELECT `AdminLevel`, `Username`, `IP` FROM `accounts` WHERE `Username` = '%s'", tmpName);
	mysql_tquery(MainPipeline, query, "OnIPCheck", "i", playerid);
	return 1;
}

CMD:serverstats(playerid, params[])
{
	new
		string[128],
		iVehCount,
		x;

	while(x < MAX_VEHICLES) if(GetVehicleModel(++x)) ++iVehCount;

	format(string,sizeof(string),"Server Statistics - Version %s (recorded since the 20th of August, 2010).",SERVER_GM_TEXT);
	SendClientMessageEx(playerid, COLOR_WHITE, string);
	format(string, sizeof(string), "* Objects: %d | Pickups: %d | Map icons: %d | 3D text labels: %d | Text draws: %d | Loaded houses: %d",CountDynamicObjects(),CountDynamicPickups(),CountDynamicMapIcons(),CountDynamic3DTextLabels(),textdrawscount,MAX_HOUSES);
	SendClientMessageEx(playerid, COLOR_GREY, string);
	format(string, sizeof(string), "* Logins: %d | Connections: %d | Registrations: %d | Hackers autobanned: %d | Uptime: %d hours",TotalLogin, TotalConnect, TotalRegister, TotalAutoBan, TotalUptime);
	SendClientMessageEx(playerid, COLOR_GREY, string);
	format(string, sizeof(string), "* Players connected: %d | Peak person count: %d (%d/%d/%d) | person vehicles loaded: %d | Total vehicles: %i",Iter_Count(Player),MaxPlayersConnected,MPDay,MPMonth,MPYear,PlayerCars, iVehCount);
	SendClientMessageEx(playerid, COLOR_GREY, string);
	return 1;
}

CMD:payday(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1337) {
	    PlayerInfo[playerid][pConnectSeconds] = 3600;
		PayDay(playerid);
	}
	return 1;
}

CMD:ofine(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 3)
	{

		new string[128], query[256], name[MAX_PLAYER_NAME], amount, reason[64];
		if(sscanf(params, "s[24]ds[64]", name, amount, reason)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /ofine [name] [so tien] [ly do]");
        new giveplayerid = ReturnUser(name);
		if(IsPlayerConnected(giveplayerid))
		{
            if (amount < 1) return SendClientMessageEx(playerid, COLOR_GRAD2, "Amount must be greater than 0");
			format(string, sizeof(string), "AdmCmd: %s(%d) was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
			Log("logs/admin.log", string);
			format(szMiscArray, sizeof(szMiscArray), "fined $%s (%s)", number_format(amount), reason);
			DBLog(playerid, giveplayerid, "Admin", szMiscArray);
			format(string, sizeof(string), "AdmCmd: %s was fined $%s by %s, reason: %s", GetPlayerNameEx(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			GivePlayerCash(giveplayerid, -amount);
			StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
		}
		else
		{
			new tmpName[24];
			mysql_escape_string(name, tmpName);
			SetPVarString(playerid, "OnFine", tmpName);
			SetPVarInt(playerid, "OnFineAmount", amount);
			SetPVarString(playerid, "OnFineReason", reason);


			mysql_format(MainPipeline, query, sizeof(query), "UPDATE `accounts` SET `Money` = `Money` - %d WHERE `PermBand` < 3 AND `Band` = 0 AND `AdminLevel` < 2 AND `Username`='%s'", amount, tmpName);
			mysql_tquery(MainPipeline, query, "OnFine", "i", playerid);

			format(string, sizeof(string), "Attempting to fine $%s from %s's account...", number_format(amount), tmpName);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "You're not a level three admin.");
	}
	return 1;
}

CMD:check(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		new giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /check [player]");
		if(IsPlayerConnected(giveplayerid)) ShowStats(playerid, giveplayerid);
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	return 1;
}

CMD:checkinv(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		new giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /checkinv [player]");
		if(IsPlayerConnected(giveplayerid)) ShowInventory(playerid, giveplayerid);
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	return 1;

}

CMD:mole(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], log_x[128];
		if(isnull(params)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /mole [noi dung]");

		format(string, sizeof(string), "[MOLE] %s", params);
		foreach(new i: Player)
		{
			SendClientMessageEx(i, COLOR_ORANGEYELLOW, string);
			//SendAudioToPlayer(i, 47, 100);
		}
		format(log_x, sizeof(log_x), "[MOLE] %s sent: %s", GetPlayerNameEx(playerid), params);
		Log("logs/admin.log", log_x);
		ChatDBLog(playerid, "AdminMole", params);
	}
	else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

// Both below were adjusted to Head Admin because of them now being able to roleplay on their admin account. - Winterfield

CMD:togspec(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
	{
	    if(GetPVarType(playerid, "EASpecable"))
	    {
	        SendClientMessage(playerid, COLOR_WHITE, "You can not be spectated anymore");
	        DeletePVar(playerid, "EASpecable");
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_WHITE, "You can now be spectated again");
	        SetPVarInt(playerid, "EASpecable", 1);
	    }
	}
	return 1;
}

CMD:togtp(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
	{
	    if(GetPVarType(playerid, "EATeleportable"))
	    {
	        SendClientMessage(playerid, COLOR_WHITE, "You can not be teleported to anymore");
	        DeletePVar(playerid, "EATeleportable");
	    }
	    else
	    {
	        SendClientMessage(playerid, COLOR_WHITE, "You can now be teleported to again");
	        SetPVarInt(playerid, "EATeleportable", 1);
	    }
	}
	return 1;
}
/*
CMD:spec(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][pPWSpec] < 1 && PlayerInfo[playerid][pHelper] < 3 && !GetPVarType(playerid, "pWatchdogWatching"))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay.");
		return 1;
	}

	if(strcmp(params, "off", true) == 0)
	{
		if(Spectating[playerid] > 0 && PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pHelper] >= 3 && Spectating[playerid] > 0)
		{
		    if(GetPVarType(playerid, "pWatchdogWatching"))
			{
			    SendClientMessage(playerid, COLOR_WHITE, "You have stopped DM Watching.");
				DeletePVar(playerid, "pWatchdogWatching");
			}
			GettingSpectated[Spectate[playerid]] = INVALID_PLAYER_ID;
			Spectating[playerid] = 0;
			Spectate[playerid] = INVALID_PLAYER_ID;
			SetPVarInt(playerid, "SpecOff", 1 );
			TogglePlayerSpectating(playerid, false);
			SetCameraBehindPlayer(playerid);
			return 1;
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You're not spectating anyone.");
			return 1;
		}
	}

	new giveplayerid;
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /spec (playerid/off)");
	if(IsPlayerConnected(giveplayerid))
	{
	    if((PlayerInfo[playerid][pHelper] >= 3 && !(2 <= PlayerInfo[giveplayerid][pHelper] <= 4)) && !GetPVarType(playerid, "pWatchdogWatching"))
	    {
	        SendClientMessageEx(playerid, COLOR_GREY, "You can only spectate other advisors");
			return 1;
		}
		if(GetPVarType(playerid, "pWatchdogWatching") && (GetPVarInt(playerid, "pWatchdogWatching") != giveplayerid))
		{
		    SendClientMessageEx(playerid, COLOR_GREY, "You can only spectate the person you are DM Watching.");
			return 1;
		}
		if(PlayerInfo[giveplayerid][pAdmin] == 99999 && !GetPVarType(giveplayerid, "EASpecable")) return SendClientMessageEx(playerid, COLOR_WHITE, "You cannot spectate this person.");
		if(PlayerInfo[playerid][pAdmin] >= 4 && Spectate[giveplayerid] != INVALID_PLAYER_ID && Spectating[giveplayerid] == 1)
		{
			new string[128];
			format(string, sizeof(string), "Admin %s is speccing %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(Spectate[giveplayerid]));
			SendClientMessageEx(playerid, COLOR_GREEN, string);
			return 1;
		}
		SpectatePlayer(playerid, giveplayerid);
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "Target is not available.");
	}
	return 1;
}
*/
CMD:rcreset(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1337) {

		new
			iTargetID;

		if(sscanf(params, "u", iTargetID)) {
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /rcreset [player]");
		}
		else if(!IsPlayerConnected(iTargetID)) {
			SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
		}
		else {

			new
				i = 0,
				szMessage[96];

			format(szMessage, sizeof szMessage, "AdmCmd: %s has reset %s's restricted vehicle warnings.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID));
			ABroadCast(COLOR_LIGHTRED, szMessage, 2);

			format(szMessage, sizeof szMessage, "%s has reset your restricted vehicle warnings.", GetPlayerNameEx(playerid));
			SendClientMessageEx(iTargetID, COLOR_WHITE, szMessage);

			DBLog(playerid, iTargetID, "Admin", "Reset Restricted Veh Warns");

			PlayerInfo[iTargetID][pRVehWarns] = 0;
			PlayerInfo[iTargetID][pLastRVehWarn] = 0;
			PlayerInfo[iTargetID][pRVehRestricted] = 0;

			while(i != MAX_PLAYERVEHICLES) {
				if(PlayerVehicleInfo[iTargetID][i][pvRestricted] != 0) {
					PlayerVehicleInfo[iTargetID][i][pvRestricted] = 0;
				}
				++i;
			}
		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:rcabuse(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1) {

		new
			iTargetID;

		if(sscanf(params, "u", iTargetID)) SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /rcabuse [player]");
		else if(!IsPlayerConnected(iTargetID)) SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
		else if(GetPlayerState(iTargetID) == PLAYER_STATE_DRIVER && IsRestrictedVehicle(GetVehicleModel(GetPlayerVehicleID(iTargetID))))
		{
			new
				iVehicleID = GetPlayerVehicleID(iTargetID),
				iVehIndex = GetPlayerVehicle(iTargetID, iVehicleID),
				Float: fPlayerPos[3],
				szMessage[256]; // Dialog string - don't kill me!!!!!1

			if(iVehIndex != -1) { // Owned by player
				switch(++PlayerInfo[iTargetID][pRVehWarns]) {
					case 1: {

						PlayerVehicleInfo[iTargetID][iVehIndex][pvRestricted] = gettime() + 28800;

						--PlayerCars;
						VehicleSpawned[iTargetID]--;

						PlayerVehicleInfo[iTargetID][iVehIndex][pvSpawned] = 0;
						PlayerVehicleInfo[iTargetID][iVehIndex][pvFuel] = VehicleFuel[iVehicleID];

						DestroyVehicle(iVehicleID);
						PlayerVehicleInfo[iTargetID][iVehIndex][pvId] = INVALID_PLAYER_VEHICLE_ID;
						g_mysql_SaveVehicle(iTargetID, iVehIndex);
						CheckPlayerVehiclesForDesync(iTargetID);

						GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);

						format(szMessage, sizeof szMessage, "%s da dua roi mot canh cao cho viec lam dung cua ban %s.\n\nVi day la canh bao dau tien, no se bi han che su dung trong 8 tieng.", GetPlayerNameEx(playerid), GetVehicleName(iVehicleID));
						ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
						SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");

					}
					case 2: {

						PlayerInfo[iTargetID][pRVehRestricted] = gettime() + 172800;

						--PlayerCars;
						VehicleSpawned[iTargetID]--;

						PlayerVehicleInfo[iTargetID][iVehIndex][pvSpawned] = 0;
						PlayerVehicleInfo[iTargetID][iVehIndex][pvFuel] = VehicleFuel[iVehicleID];

						DestroyVehicle(iVehicleID);
						PlayerVehicleInfo[iTargetID][iVehIndex][pvId] = INVALID_PLAYER_VEHICLE_ID;
						g_mysql_SaveVehicle(iTargetID, iVehIndex);
						CheckPlayerVehiclesForDesync(iTargetID);

						GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);

						format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing your %s.\n\nAs this is your second warning, you will be unable to use restricted vehicles for two days.", GetPlayerNameEx(playerid), GetVehicleName(iVehicleID));
						ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
						SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");
					}
					case 3: {

						PlayerInfo[iTargetID][pRVehRestricted] = gettime() + 604800;
						PlayerInfo[iTargetID][pRVehWarns] = 0;
						DestroyPlayerVehicle(iTargetID, iVehIndex);

						GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);

						format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing your %s.\n\nAs this is your third warning, you will be unable to use restricted vehicles for a week, and the vehicle in question has been removed.", GetPlayerNameEx(playerid), GetVehicleName(iVehicleID));
						ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
						SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");
					}
				}
			}
			else foreach(new i: Player)
			{
				if((iVehIndex = GetPlayerVehicle(i, iVehicleID)) != -1) { // Owned by another player
					switch(++PlayerInfo[iTargetID][pRVehWarns]) {
						case 1: {

							SetVehicleToRespawn(iVehicleID);
							CheckPlayerVehiclesForDesync(i);

							GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
							SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);

							format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing %s's %s.\n\nAs this is your first warning, one of your restricted vehicles (if any) will not be able to be used for two days.", GetPlayerNameEx(playerid), GetPlayerNameEx(i), GetVehicleName(iVehicleID));
							ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
							SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");

							for(new x = 0; x != MAX_PLAYERVEHICLES; ++x) if(IsRestrictedVehicle(PlayerVehicleInfo[iTargetID][iVehIndex][pvModelId])) {
								PlayerVehicleInfo[iTargetID][iVehIndex][pvRestricted] = gettime() + 28800;
								break;
							}
						}
						case 2: {

							PlayerInfo[iTargetID][pRVehRestricted] = gettime() + 172800;

							SetVehicleToRespawn(iVehicleID);
							CheckPlayerVehiclesForDesync(i);

							GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
							SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);

							format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing %s's %s.\n\nAs this is your second warning, you will be unable to use restricted vehicles for two days.", GetPlayerNameEx(playerid), GetPlayerNameEx(i), GetVehicleName(iVehicleID));
							ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
							SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");
						}
						case 3: {

							PlayerInfo[iTargetID][pRVehRestricted] = gettime() + 604800;
							PlayerInfo[iTargetID][pRVehWarns] = 0;

							GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
							SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);

							format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing %s's %s.\n\nAs this is your third warning, you will be unable to use restricted vehicles for a week.", GetPlayerNameEx(playerid), GetPlayerNameEx(i), GetVehicleName(iVehicleID));
							ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
							SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");
						}
					}
					format(szMessage, sizeof szMessage, "%s has issued %s a warning for abusing your %s.\n\nThe vehicle in question has been respawned. Please be mindful of your restricted vehicles.", GetPlayerNameEx(playerid), GetPlayerNameEx(iTargetID), GetVehicleName(iVehicleID));
					ShowPlayerDialogEx(i, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
					SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");
					break;
				}
			}
			if(iVehIndex == -1 && IsACop(iTargetID)) { // Not person owned
				SetVehicleToRespawn(iVehicleID);
				switch(++PlayerInfo[iTargetID][pRVehWarns]) {
					case 1: {
						GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing your faction's %s.\n\nAs this is your first warning, you will face no punishment.", GetPlayerNameEx(playerid), GetVehicleName(iVehicleID));
						ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
						SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");
					}
					case 2: {

						PlayerInfo[iTargetID][pRVehRestricted] = gettime() + 1209600;

						GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing your faction's %s.\n\nAs this is your second warning, you will be unable to use restricted vehicles for two weeks and prisoned for two hours.", GetPlayerNameEx(playerid), GetVehicleName(iVehicleID));
						ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
						SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");

						GameTextForPlayer(iTargetID, "~w~Welcome to ~n~~r~Fort DeMorgan", 5000, 3);
						ResetPlayerWeaponsEx(iTargetID);
						format(szMessage, sizeof(szMessage), "AdmCmd: %s(%d) has been prisoned by %s, reason: Abuse of faction vehicles.", GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID), GetPlayerNameEx(playerid));
						Log("logs/admin.log", szMessage);
						DBLog(playerid, iTargetID, "Admin", "[Prisoned] Restricted Vehicle Abuse");
						format(szMessage, sizeof(szMessage), "AdmCmd: %s has been prisoned by %s, reason: Abuse of faction vehicles.", GetPlayerNameEx(iTargetID), GetPlayerNameEx(playerid));
						SendClientMessageToAllEx(COLOR_LIGHTRED, szMessage);
						PlayerInfo[iTargetID][pJailTime] = 120 * 60;
						strcpy(PlayerInfo[iTargetID][pPrisonReason], "[OOC][PRISON] Abuse of faction vehicles", 128);
						strcpy(PlayerInfo[iTargetID][pPrisonedBy], GetPlayerNameEx(playerid), MAX_PLAYER_NAME);
						PhoneOnline[iTargetID] = 1;
						SetPlayerInterior(iTargetID, 1);
						PlayerInfo[iTargetID][pInt] = 1;
						new rand = random(sizeof(OOCPrisonSpawns));
						Streamer_UpdateEx(iTargetID, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
						SetPlayerPos(iTargetID, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
						SetPlayerSkin(iTargetID, 50);
						SetPlayerColor(iTargetID, TEAM_APRISON_COLOR);
						Player_StreamPrep(iTargetID, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2], FREEZE_TIME);
					}
					case 3: {

						PlayerInfo[iTargetID][pRVehRestricted] = gettime() + 1814400;
						PlayerInfo[iTargetID][pRVehWarns] = 0;

						GetPlayerPos(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						SetPlayerPosFindZ(iTargetID, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
						format(szMessage, sizeof szMessage, "%s has issued you a warning for abusing your faction's %s.\n\nAs this is your third warning, you will be unable to use restricted vehicles for three weeks, kicked from your faction and banned for two days.", GetPlayerNameEx(playerid), GetVehicleName(iVehicleID));
						ShowPlayerDialogEx(iTargetID, 0, DIALOG_STYLE_MSGBOX, "Restricted Vehicle Warning", szMessage, "Exit", "");
						SendClientMessageEx(playerid, COLOR_GRAD1, "You have warned this person for abusing their restricted vehicle.");

						new playerip[32];
						GetPlayerIp(iTargetID, playerip, sizeof(playerip));
						format(szMessage, sizeof(szMessage), "AdmCmd: %s(%d) (IP:%s) was banned by %s, reason: Abuse of faction vehicles", GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID), playerip, GetPlayerNameEx(playerid));
						Log("logs/ban.log", szMessage);
						format(szMessage, sizeof(szMessage), "AdmCmd: %s was banned by %s, reason: Abuse of faction vehicles", GetPlayerNameEx(iTargetID), GetPlayerNameEx(playerid));
						SendClientMessageToAllEx(COLOR_LIGHTRED, szMessage);
						PlayerInfo[iTargetID][pBanned] = 1;
						AddBan(playerid, iTargetID, "Abuse of faction vehicles.");
						SetTimerEx("KickEx", 1000, 0, "i", iTargetID);
					}
				}
			}
			PlayerInfo[iTargetID][pLastRVehWarn] = gettime();
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "That person is not using a restricted vehicle.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:calc(playerid, params[]) {
	return callcmd::calculate(playerid, params);
}

CMD:calculate(playerid, params[])
{
	new string[128], method[20], value1, value2;
	if(sscanf(params, "ds[20]d", value1, method, value2))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /calculate [value] [operation] [value].");
		SendClientMessageEx(playerid, COLOR_GRAD2, "Operations: Add, Subtract, Multiply, Divide.");
		return 1;
	}

	if(strcmp(method,"multiply",true) == 0 || strcmp(method,"*",true) == 0)
	{
		new sum = value1*value2;
		format(string,sizeof(string),"%s * %s = %s.", number_format(value1), number_format(value2), number_format(sum));
		SendClientMessageEx(playerid,COLOR_WHITE,string);
	}
	if(strcmp(method,"divide",true) == 0 || strcmp(method,"/",true) == 0)
	{
		if(value2 == 0)
		{
			SendClientMessageEx(playerid,COLOR_WHITE,"The world will implode in 10 seconds - you divided by zero, idiot!");
			return 1;
		}
		new sum = value1/value2;
		format(string,sizeof(string),"%s / %s = %s.", number_format(value1), number_format(value2), number_format(sum));
		SendClientMessageEx(playerid,COLOR_WHITE,string);
	}
	if(strcmp(method,"add",true) == 0 || strcmp(method,"+",true) == 0)
	{
		new sum = value1+value2;
		format(string,sizeof(string),"%s + %s = %s.", number_format(value1), number_format(value2), number_format(sum));
		SendClientMessageEx(playerid,COLOR_WHITE,string);
	}
	if(strcmp(method,"subtract",true) == 0 || strcmp(method,"-",true) == 0)
	{
		new sum = value1-value2;
		format(string,sizeof(string),"%s - %s = %s.", number_format(value1), number_format(value2), number_format(sum));
		SendClientMessageEx(playerid,COLOR_WHITE,string);
	}
	return 1;
}

CMD:suspend(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pAP] >= 2 || PlayerInfo[playerid][pHR] >= 3 || PlayerInfo[playerid][pSecurity] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /suspend [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			format(string, sizeof(string), "AdmCmd: %s(%d) has been suspended by %s.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid));
			Log("logs/admin.log", string);
			DBLog(playerid, giveplayerid, "Admin", "account suspended");
			format(string, sizeof(string), "AdmCmd: %s has been suspended by %s.", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid));
			ABroadCast(COLOR_LIGHTRED, string, 2);
			PlayerInfo[giveplayerid][pAdmin] = 0;
			PlayerInfo[giveplayerid][pHR] = 0;
			PlayerInfo[giveplayerid][pAP] = 0;
			PlayerInfo[giveplayerid][pPR] = 0;
			PlayerInfo[giveplayerid][pSecurity] = 0;
			PlayerInfo[giveplayerid][pShopTech] = 0;
			PlayerInfo[giveplayerid][pFactionModerator] = 0;
			PlayerInfo[giveplayerid][pGangModerator] = 0;
			PlayerInfo[giveplayerid][pUndercover] = 0;
			PlayerInfo[giveplayerid][pBanAppealer] = 0;
			PlayerInfo[giveplayerid][pLeader] = 0;
			PlayerInfo[giveplayerid][pMember] = 0;
			PlayerInfo[giveplayerid][pSecureIP][0] = 0;
			PlayerInfo[giveplayerid][pSMod] = 0;
			PlayerInfo[giveplayerid][pDonateRank] = 0;
			PlayerInfo[giveplayerid][pBanAppealer] = 0;
			PlayerInfo[giveplayerid][pShopTech] = 0;
			PlayerInfo[giveplayerid][pDisabled] = 1;
			Kick(giveplayerid);
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:osuspend(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pAP] >= 2 || PlayerInfo[playerid][pHR] >= 3 || PlayerInfo[playerid][pSecurity] >= 2)
	{
		new string[128], query[512], tmpName[MAX_PLAYER_NAME];
		if(isnull(params)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /osuspend [player name]");

		mysql_escape_string(params, tmpName);
		SetPVarString(playerid, "OnSetSuspended", tmpName);

		mysql_format(MainPipeline, query,sizeof(query),"UPDATE `accounts` SET `Disabled` = 1, `AdminLevel` = 0, `HR` = 0, `AP` = 0, `Security` = 0, `ShopTech` = 0, `FactionModerator` = 0, `GangModerator` = 0, \
		`Undercover` = 0, `BanAppealer` = 0, `Leader` = 0, `Member` = 0, `SecureIP` = '0.0.0.0', `SeniorModerator` = 0, `BanAppealer` = 0, `ShopTech` = 0 WHERE `Username`= '%s' AND `AdminLevel` < 1338 AND `AdminLevel` > 1", tmpName);
		mysql_tquery(MainPipeline, query, "OnSetSuspended", "ii", playerid, true);

		format(string, sizeof(string), "Attempting to suspend %s's account.", tmpName);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}
/*
CMD:prisonaccount(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], name[MAX_PLAYER_NAME], minutes, reason[64];
		if(sscanf(params, "s[24]ds[64]", name, minutes, reason)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /prisonaccount [player name] [thoi gian (phut)] [ly do]");

        new giveplayerid = ReturnUser(name);
        if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin])
			{
				SendClientMessageEx(playerid, COLOR_WHITE, "You can't perform this action on an equal or higher level administrator.");
				return 1;
			}
			//if(strlen(reason) >= 25) return SendClientMessageEx(playerid, COLOR_WHITE, "Please provide a shorter reason. The maximum length for a prison reason is 25.");
		}
		else
		{
			new tmpName[24], tmpPrisonedBy[24], tmpPrisonReason[64], query[512];
			format(tmpPrisonReason, 64, "[OOC][PRISON OFF] %s", reason);
			format(tmpPrisonedBy, 24, "%s", GetPlayerNameEx(playerid));
			mysql_escape_string(name, tmpName);
			mysql_escape_string(tmpPrisonReason, tmpPrisonReason);

			SetPVarString(playerid, "OnPrisonAccount", tmpName);
			SetPVarString(playerid, "OnPrisonAccountReason", tmpPrisonReason);

			format(string, sizeof(string), "Attempting to prison %s's account for %d minutes...", tmpName, minutes);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			format(string, sizeof(string), "[PrisonAccount] %s da bi bo tu trong vong %d phut boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), minutes, GetPlayerNameEx(playerid), reason);
			Log("logs/prisonaccount.log", string);

			mysql_format(MainPipeline, query,sizeof(query),"UPDATE `accounts` SET `PrisonReason` = '%s', `PrisonedBy` = '%s', `JailTime` = %d WHERE `PermBand` < 3 AND `Band` < 1 AND `AdminLevel` < %d AND `Username` = '%s'", tmpPrisonReason, tmpPrisonedBy, minutes*60, PlayerInfo[playerid][pAdmin], tmpName);
			mysql_tquery(MainPipeline, query, "OnPrisonAccount", "i", playerid);
		}
	}
	return 1;
}*/
CMD:prisonaccount(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], name[MAX_PLAYER_NAME], minutes, reason[64];
		if(sscanf(params, "s[24]ds[64]", name, minutes, reason)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /prisonaccount [player name] [time (minutes)] [reason]");

        new giveplayerid = ReturnUser(name);
        if(IsPlayerConnected(giveplayerid))
		{
			SetPlayerArmedWeapon(giveplayerid, 0);

			if(GetPVarInt(giveplayerid, "IsInArena") >= 0)
			{
				LeavePaintballArena(giveplayerid, GetPVarInt(giveplayerid, "IsInArena"));
			}

			GameTextForPlayer(giveplayerid, "~w~Welcome to Prison ~n~~r~Fort DeMorgan", 5000, 3);
			ResetPlayerWeaponsEx(giveplayerid);
			format(string, sizeof(string), "[Prison]: %s has been prisoned off boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
			Log("logs/prisonaccount.log", string);
			SendClientMessageEx(playerid, COLOR_WHITE, "The person is online and has been prisoned!");
			format(string, sizeof(string), "[Prison]: %s has been prisoned off boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
			ABroadCast(COLOR_YELLOW,string,2);
			PlayerInfo[giveplayerid][pWantedLevel] = 0;
			SetPlayerWantedLevel(giveplayerid, 0);
			PlayerInfo[giveplayerid][pJailTime] = minutes*60;
			SetPVarInt(giveplayerid, "_rAppeal", gettime()+60);			format(PlayerInfo[giveplayerid][pPrisonReason], 128, "[OOC][PRISON] %s", reason);
			format(PlayerInfo[giveplayerid][pPrisonedBy], MAX_PLAYER_NAME, "%s", GetPlayerNameEx(playerid));
			SetPlayerInterior(giveplayerid, 1);
			PlayerInfo[giveplayerid][pInt] = 1;
			new rand = random(sizeof(OOCPrisonSpawns));
			Streamer_UpdateEx(giveplayerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
			SetPlayerPos(giveplayerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
			SetPlayerColor(giveplayerid, TEAM_APRISON_COLOR);
			Player_StreamPrep(giveplayerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2], FREEZE_TIME);
		}
		else
		{
			new tmpName[24], tmpPrisonedBy[24], tmpPrisonReason[64], query[512];
			format(tmpPrisonReason, 64, "[OOC][PRISONACC] %s", reason);
			format(tmpPrisonedBy, 24, "%s", GetPlayerNameEx(playerid));
			mysql_escape_string(name, tmpName);
			mysql_escape_string(tmpPrisonReason, tmpPrisonReason);

			SetPVarString(playerid, "OnPrisonAccount", tmpName);
			SetPVarString(playerid, "OnPrisonAccountReason", tmpPrisonReason);

			format(string, sizeof(string), "Attempting to prison %s's account for %d minutes...", tmpName, minutes);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);

			mysql_format(MainPipeline, query,sizeof(query),"UPDATE `accounts` SET `PrisonReason` = '%s', `PrisonedBy` = '%s', `JailTime` = %d WHERE `PermBand` < 3 AND `Band` < 1 AND `AdminLevel` < %d AND `Username` = '%s'", tmpPrisonReason, tmpPrisonedBy, minutes*60, PlayerInfo[playerid][pAdmin], tmpName);
			mysql_tquery(MainPipeline, query, "OnPrisonAccount", "i", playerid);
		}
	}
	return 1;
}

CMD:jailaccount(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
		new string[128], name[MAX_PLAYER_NAME], minutes, reason[64];
		if(sscanf(params, "s[24]ds[64]", name, minutes, reason)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /jailaccount [player name] [thoi gian (phut)] [ly do]");

		new tmpName[24], tmpPrisonedBy[24], tmpPrisonReason[64], query[512];
		format(tmpPrisonReason, 64, "[OOC][JAILACC] %s", reason);
		format(tmpPrisonedBy, 24, "%s", GetPlayerNameEx(playerid));
		mysql_escape_string(name, tmpName);
		mysql_escape_string(tmpPrisonReason, tmpPrisonReason);

		SetPVarString(playerid, "OnJailAccount", tmpName);
		SetPVarString(playerid, "OnJailAccountReason", tmpPrisonReason);

		format(string, sizeof(string), "Attempting to jail %s's account for %d minutes...", tmpName, minutes);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);

		mysql_format(MainPipeline, query,sizeof(query),"UPDATE `accounts` SET `PrisonReason` = '%s', `PrisonedBy` = '%s', `JailTime` = %d WHERE `PermBand` < 3 AND `Band` < 1 AND `AdminLevel` < %d AND `Username` = '%s'", tmpPrisonReason, tmpPrisonedBy, minutes*60, PlayerInfo[playerid][pAdmin], tmpName);
		mysql_tquery(MainPipeline, query, "OnJailAccount", "i", playerid);
	}
	return 1;
}

CMD:release(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], giveplayerid, reason[64];
		if(sscanf(params, "us[64]", giveplayerid, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /release [player] [ly do]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pJailTime] == 0)
			{
				SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi nay khong o tu!");
			}
			else
			{
				format(string, sizeof(string), "AdmCmd: %s (%d) da duoc tha tu boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid), reason);
				Log("logs/admin.log", string);
				DBLog(playerid, giveplayerid, "Admin", "released from prison");
				format(string, sizeof(string), "[Release] %s da duoc tha tu boi Admin %s, ly do: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
				SendClientMessageToAllEx(COLOR_LIGHTRED, string);
				PhoneOnline[giveplayerid] = 0;
				PlayerInfo[giveplayerid][pWantedLevel] = 0;
				PlayerInfo[giveplayerid][pBeingSentenced] = 0;
				SetPlayerToTeamColor(giveplayerid);
				SetHealth(giveplayerid, 100);
				SetPlayerWantedLevel(giveplayerid, 0);
				PlayerInfo[giveplayerid][pJailTime] = 0;
				SetPlayerPos(giveplayerid, 1529.6,-1691.2,13.3);
				SetPlayerInterior(giveplayerid,0);
				PlayerInfo[giveplayerid][pInt] = 0;
				SetPlayerVirtualWorld(giveplayerid, 0);
				PlayerInfo[giveplayerid][pVW] = 0;
				strcpy(PlayerInfo[giveplayerid][pPrisonReason], "None", 128);
				SetPlayerToTeamColor(giveplayerid);
			}
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:sprison(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pUndercover] >= 1 || PlayerInfo[playerid][pASM] >= 1)
	{
		new giveplayerid, minutes, reason[64];
		if(sscanf(params, "uds[64]", giveplayerid, minutes, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /sprison [player] [phut] [ly do]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin]) return SendClientMessageEx(playerid, COLOR_WHITE, "You can't perform this action on an equal or higher level administrator.");
			//if(strlen(reason) >= 25) return SendClientMessageEx(playerid, COLOR_WHITE, "Please provide a shorter reason. The maximum length for a prison reason is 25.");
			if(PrisonPlayer(playerid, giveplayerid, reason, minutes, .silent=1, .custom=1) == 0) return 1;
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:jail(playerid, params[])
{
	new giveplayerid, minutes, reason[64];
	if(sscanf(params, "uds[64]", giveplayerid, minutes, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /jail [player] [phut] [ly do]");

	if(minutes < 15 || minutes > 45) return SendClientMessageEx(playerid, COLOR_WHITE, "Jail phai thap nhat la 15 phut hoac cao nhat la 45 phut!");
	if (PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(PlayerInfo[playerid][pSMod] < 1 && PlayerInfo[playerid][pAdmin] == 1) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
		if(IsPlayerConnected(giveplayerid))
		{
			if((PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin]) || (PlayerInfo[playerid][pAdmin] == 1 && (PlayerInfo[giveplayerid][pHelper] >= 2 || PlayerInfo[giveplayerid][pWatchdog] >= 2))) return SendClientMessageEx(playerid, COLOR_WHITE, "You can't perform this action on an equal or higher level administrator.");
			if(PrisonPlayer(playerid, giveplayerid, reason, .time=minutes, .custom=1) == 0) return 1;
		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:gnsetstatst(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pShopTech] >= 2)
	{

		new string[128], giveplayerid, statcode, amount;
		if(sscanf(params, "udd", giveplayerid, statcode, amount))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setstat [player] [statcode] [amount]");
			SendClientMessageEx(playerid, COLOR_GRAD4, "|1 Level |2 ArmorUpgrade |3 UpgradePoints |4 Model |5 BankAccount |6 PhoneNumber |7 RespectPoints |8 House1 |9 House2 |10 House3");
			SendClientMessageEx(playerid, COLOR_GRAD2, "|11 Not Used |12 Det |13 Lawyer |14 Fixer |17 Drug |18 Sex |19 Box |20 Arms |21 Materials |22 Pot |23 Crack");
			SendClientMessageEx(playerid, COLOR_GRAD2, "|24 Fishing |25 Job |26 Rank |27 Packages |28 Crates |29 Smuggler |30 Insurance |31 Warnings |32 Screwdriver");
			SendClientMessageEx(playerid, COLOR_GRAD1, "|33 Age |34 Gender |35 NMute |36 AdMute |37 Faction |38 Restricted Weapon Time |39 Gang Warns |40 RMute |41 Reward Hours");
			SendClientMessageEx(playerid, COLOR_GRAD1, "|42 Playing Hours |43 Gold Box Tokens |44 Computer Drawings |45 Papers |46 Business |47 BusinessRank | 48 Spraycan");
			SendClientMessageEx(playerid, COLOR_GRAD1, "|49 Heroin |50 RawOpium |51 Syringes |52 Hunger |53 Fitness |54 Event Tokens |55 Modkit");
			SendClientMessageEx(playerid, COLOR_GRAD2, "|56 Car Jack Skill |57 Lock Pick Vehicle Count |58 Lock Pick Vehicle Time |59 Tool Box |60 Crowbar");
			return 1;
		}
		if(giveplayerid == INVALID_PLAYER_ID || giveplayerid < 0 || giveplayerid > MAX_PLAYERS) return SendClientMessage(playerid, -1, "Nguoi choi do khong ton tai");
		if(IsPlayerConnected(giveplayerid))
		{
			switch (statcode)
			{
				case 1:
				{
					PlayerInfo[giveplayerid][pLevel] = amount;
					format(string, sizeof(string), "   %s's(%d) Level has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
					SetPlayerScore(giveplayerid, PlayerInfo[giveplayerid][pLevel]);
				}
				case 2:
				{
					PlayerInfo[giveplayerid][pSHealth] = amount;
					format(string, sizeof(string), "   %s's(%d) ArmorUpgrade has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 3:
				{
					PlayerInfo[giveplayerid][gPupgrade] = amount;
					format(string, sizeof(string), "   %s's(%d) Upgrade Points has been set %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 4:
				{
					PlayerInfo[giveplayerid][pModel] = amount;
					format(string, sizeof(string), "   %s's(%d) Model has been set %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 5:
				{
					PlayerInfo[giveplayerid][pAccount] = amount;
					format(string, sizeof(string), "   %s's(%d) Bank Account has been set to $%d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 6:
				{
					if(amount == 0)
					{
						PlayerInfo[giveplayerid][pPnumber] = amount;
						format(string, sizeof(string), "   %s had their phone removed", GetPlayerNameEx(giveplayerid));
					}
					else
					{
						new query[128];
						SetPVarInt(giveplayerid, "WantedPh", amount);
						SetPVarInt(giveplayerid, "CurrentPh", PlayerInfo[giveplayerid][pPnumber]);
						SetPVarInt(giveplayerid, "PhChangeCost", 50000);
						SetPVarInt(giveplayerid, "PhChangerId", playerid);
						mysql_format(MainPipeline, query, sizeof(query), "SELECT `Username` FROM `accounts` WHERE `PhoneNr` = '%d'",amount);
						mysql_tquery(MainPipeline, query, "OnPhoneNumberCheck", "ii", giveplayerid, 4);
						return 1;
					}
				}
				case 7:
				{
					PlayerInfo[giveplayerid][pExp] = amount;
					format(string, sizeof(string), "   %s's(%d) Respect Points have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 8:
				{
					PlayerInfo[giveplayerid][pPhousekey] = amount;
					format(string, sizeof(string), "   %s's(%d) House 1 has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 9:
				{
					PlayerInfo[giveplayerid][pPhousekey2] = amount;
					format(string, sizeof(string), "   %s's(%d) House 2 has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 10:
				{
					PlayerInfo[giveplayerid][pPhousekey3] = amount;
					format(string, sizeof(string), "   %s's(%d) House 3 has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 11:
				{
					return SendClientMessageEx(playerid, COLOR_WHITE, "Family system has been merged to group system!");
				}
				case 12:
				{
					PlayerInfo[giveplayerid][pDetSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Detective Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 13:
				{
					PlayerInfo[giveplayerid][pLawSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Lawyer Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 14:
				{
					PlayerInfo[giveplayerid][pMechSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Car Mechanic Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 17:
				{
					return 1;
				}
				case 18:
				{
					PlayerInfo[giveplayerid][pSexSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Sex Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 19:
				{
					PlayerInfo[giveplayerid][pBoxSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Box Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 20:
				{
					PlayerInfo[giveplayerid][pArmsSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Arms Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 21:
				{
					PlayerInfo[giveplayerid][pMats] = amount;
					format(string, sizeof(string), "   %s's(%d) Materials have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 22:
				{
					PlayerInfo[giveplayerid][pDrugs][0] = amount;
					format(string, sizeof(string), "   %s's(%d) Pot has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 23:
				{
					PlayerInfo[giveplayerid][pDrugs][1] = amount;
					format(string, sizeof(string), "   %s's(%d) Crack has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 24:
				{
					PlayerInfo[playerid][pFishingSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Fishing Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 25:
				{
					PlayerInfo[giveplayerid][pJob] = amount;
					format(string, sizeof(string), "   %s's(%d) Job has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 26:
				{
					PlayerInfo[giveplayerid][pRank] = amount;
					format(string, sizeof(string), "   %s's(%d) Rank has been to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 27:
				{
					SetPVarInt(giveplayerid, "Packages", amount);
					format(string, sizeof(string), "   %s's(%d) Materials Packages have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 28:
				{
					PlayerInfo[giveplayerid][pCrates] = amount;
					format(string, sizeof(string), "   %s's(%d) Drug Crates have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 29:
				{
					PlayerInfo[giveplayerid][pDrugSmuggler] = amount;
					format(string, sizeof(string), "   %s's(%d) Smuggler Skill has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 30:
				{
					PlayerInfo[giveplayerid][pInsurance] = amount;
					format(string, sizeof(string), "   %s's(%d) Insurance has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 31:
				{
					PlayerInfo[giveplayerid][pWarns] = amount;
					format(string, sizeof(string), "   %s's(%d) Warnings have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 32:
				{
					PlayerInfo[giveplayerid][pScrewdriver] = amount;
					format(string, sizeof(string), "   %s's(%d) Screwdrivers have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				/*case 33:
				{
					PlayerInfo[giveplayerid][pBirthDate] = amount;
					format(string, sizeof(string), "   %s's(%d) Age has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}*/
				case 34:
				{
					PlayerInfo[giveplayerid][pSex] = amount;
					format(string, sizeof(string), "   %s's(%d) Gender has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 35:
				{
					PlayerInfo[giveplayerid][pNMuteTotal] = amount;
					format(string, sizeof(string), "   %s's(%d) Total Newbie Mutes has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 36:
				{
					PlayerInfo[giveplayerid][pADMuteTotal] = amount;
					format(string, sizeof(string), "   %s's(%d) Total Ad Mutes has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 37:
				{
					PlayerInfo[giveplayerid][pMember] = amount;
					format(string, sizeof(string), "   %s's(%d) Faction has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 38:
				{
					if(PlayerInfo[giveplayerid][pConnectHours] >= 2) {
						PlayerInfo[giveplayerid][pWRestricted] = amount;
						if(amount) ResetPlayerWeaponsEx(giveplayerid);
						format(string, sizeof(string), "   %s's(%d) Weapon Restricted Time has been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
					}
					else {
						return SendClientMessageEx(playerid, COLOR_GREY, "You cannot set this on a person who has under 2 playing hours.");
					}
				}
				case 39:
				{
					PlayerInfo[giveplayerid][pGangWarn] = amount;
					format(string, sizeof(string), "   %s's(%d) Gang Warns have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 40:
				{
					PlayerInfo[giveplayerid][pRMutedTotal] = amount;
					format(string, sizeof(string), "   %s's(%d) Report Mutes have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 41:
				{
					PlayerInfo[giveplayerid][pRewardHours] = amount;
					format(string, sizeof(string), "   %s's(%d) Reward Playing Hours have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 42:
				{
					PlayerInfo[giveplayerid][pConnectHours] = amount;
					format(string, sizeof(string), "   %s's(%d) Playing Hours have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 43:
				{
					PlayerInfo[giveplayerid][pGoldBoxTokens] = amount;
					format(string, sizeof(string), "   %s's(%d) Box Tokens have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 44:
				{
					PlayerInfo[giveplayerid][pRewardDrawChance] = amount;
					format(string, sizeof(string), "   %s's(%d) Computer Drawings have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 45:
				{
					PlayerInfo[giveplayerid][pPaper] = amount;
					format(string, sizeof(string), "   %s's(%d) Papers have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 46:
				{
				    if (amount < 0 || amount >= MAX_BUSINESSES) return 1;
					PlayerInfo[giveplayerid][pBusiness] = amount;
					format(string, sizeof(string), "   %s's(%d) Business have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 47:
				{
				    if (amount < 0 || amount > 5) return 1;
					PlayerInfo[giveplayerid][pBusinessRank] = amount;
					format(string, sizeof(string), "   %s's(%d) Business Rank have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 48:
				{
                	PlayerInfo[giveplayerid][pSpraycan] = amount;
					format(string, sizeof(string), "   %s's(%d) Spraycans have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 49:
			    {
			        PlayerInfo[giveplayerid][pHeroin] = amount;
			        format(string, sizeof(string), "   %s's(%d) Heroin have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
			    }
				case 50:
				{
                	PlayerInfo[giveplayerid][pRawOpium] = amount;
					format(string, sizeof(string), "   %s's(%d) raw opium have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 51:
				{
                	PlayerInfo[giveplayerid][pSyringes] = amount;
					format(string, sizeof(string), "   %s's(%d) Syringes have been set to %d.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}

				case 52:
				{
					return 1;
				}

				case 53:
				{
					return 1;
				}

				case 54:
				{
					PlayerInfo[giveplayerid][pEventTokens] = amount;
					format(string, sizeof(string), "   %s's(%d) Event Tokens have been set to %i.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 55:
				{
					PlayerInfo[giveplayerid][pRimMod] = amount;
					format(string, sizeof(string), "   %s's(%d) Rim Kits have been set to %i.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 56:
				{
					PlayerInfo[giveplayerid][pCarLockPickSkill] = amount;
					format(string, sizeof(string), "   %s's(%d) Car Lock Pick Skill have been set to %i.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 57:
				{
					PlayerInfo[giveplayerid][pLockPickVehCount] = amount;
					format(string, sizeof(string), "   %s's(%d) Lock Pick Vehicle Count have been set to %i.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 58:
				{
					PlayerInfo[giveplayerid][pLockPickTime] = amount;
					format(string, sizeof(string), "   %s's(%d) Lock Pick Vehicle Time have been set to %i.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 59:
				{
					PlayerInfo[giveplayerid][pToolBox] = amount;
					format(string, sizeof(string), "   %s's(%d) Tool Box usages have been set to %i.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}
				case 60:
				{
					PlayerInfo[giveplayerid][pCrowBar] = amount;
					format(string, sizeof(string), "   %s's(%d) Crowbar usages have been set to %i.", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), amount);
				}

				default:
				{
					format(string, sizeof(string), "   Invalid stat code.", amount);
				}
			}
			format(string, sizeof(string), "%s by %s", string, GetPlayerNameEx(playerid));
			Log("logs/stats.log", string);
			SendClientMessageEx(playerid, COLOR_GRAD1, string);
		}
		else return SendClientMessageEx(playerid, COLOR_GREY, "Invalid player specified.");
	}
	return 1;
}

CMD:setmystat(playerid, params[])
{
	if(PlayerInfo[playerid][pUndercover] >= 1 || PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], statcode, amount;
		if(sscanf(params, "dd", statcode, amount))
		{

			if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1) {
				SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setmystat [statcode] [amount]");
				SendClientMessageEx(playerid, COLOR_GRAD4, "|1 Level |2 ArmorUpgrade |3 UpgradePoints |4 Model |5 BankAccount |6 PhoneNumber |7 RespectPoints |8 House1 |9 House2 |10 House3");
				SendClientMessageEx(playerid, COLOR_GRAD2, "|11 Not Used |12 Det |13 Lawyer |14 Fixer |17 Drug |18 Sex |19 Box |20 Arms |21 Materials |22 Cannabis |23 Crack");
				SendClientMessageEx(playerid, COLOR_GRAD2, "|24 Fishing |25 Job |26 Rank |27 Packages |28 Crates |29 Smuggler |30 Insurance |31 Warnings |32 Screwdriver");
				SendClientMessageEx(playerid, COLOR_GRAD1, "|33 Age |34 Gender |35 NMute |36 AdMute |37 Faction |38 Restricted Weapon Time |39 Gang Warns |40 RMute |41 Reward Hours");
				SendClientMessageEx(playerid, COLOR_GRAD1, "|42 Playing Hours |43 Gold Box Tokens |44 Computer Drawings |45 Papers |46 Business |47 BusinessRank | 48 Spraycan");
				SendClientMessageEx(playerid, COLOR_GRAD1, "|49 Heroin |50 RawOpium |51 Syringes |52 Hunger |53 Fitness |54 Event Tokens |55 Modkit");
				SendClientMessageEx(playerid, COLOR_GRAD2, "|56 Car Lock Pick Skill |57 Lock Pick Vehicle Count |58 Lock Pick Vehicle Time");
				return 1;
			}
			else if (PlayerInfo[playerid][pUndercover] >= 1) {
				SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setmystat [statcode] [amount]");
				SendClientMessageEx(playerid, COLOR_GRAD4, "|1 Level |6 PhoneNumber |26 Rank |33 Age |34 Gender |37 Faction ");
				return 1;
			}

		}

		if((PlayerInfo[playerid][pUndercover] >= 1 && PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pASM] < 1) && statcode != 1 && statcode != 6 && statcode != 26 && statcode != 33
				&& statcode != 34 && statcode != 37 && statcode != 52) return 1;

		switch (statcode)
		{
		case 1:
			{
				PlayerInfo[playerid][pLevel] = amount;
				format(string, sizeof(string), "   %s's Level has been set to %d.", GetPlayerNameEx(playerid), amount);
				SetPlayerScore(playerid, PlayerInfo[playerid][pLevel]);
			}
		case 2:
			{
				PlayerInfo[playerid][pSHealth] = amount;
				format(string, sizeof(string), "   %s's ArmorUpgrade has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 3:
			{
				PlayerInfo[playerid][gPupgrade] = amount;
				format(string, sizeof(string), "   %s's Upgrade Points has been set %d.", GetPlayerNameEx(playerid), amount);
			}
		case 4:
			{
				PlayerInfo[playerid][pModel] = amount;
				format(string, sizeof(string), "   %s's Model has been set %d.", GetPlayerNameEx(playerid), amount);
			}
		case 5:
			{
				PlayerInfo[playerid][pAccount] = amount;
				format(string, sizeof(string), "   %s's Bank Account has been set to $%d.", GetPlayerNameEx(playerid), amount);
			}
		case 6:
			{
				if(amount == 0)
				{
					PlayerInfo[playerid][pPnumber] = amount;
					format(string, sizeof(string), "   %s had their phone removed", GetPlayerNameEx(playerid));
				}
				else
				{
					new query[128];
					SetPVarInt(playerid, "WantedPh", amount);
					SetPVarInt(playerid, "CurrentPh", PlayerInfo[playerid][pPnumber]);
					SetPVarInt(playerid, "PhChangeCost", 50000);
					SetPVarInt(playerid, "PhChangerId", playerid);
					mysql_format(MainPipeline, query, sizeof(query), "SELECT `Username` FROM `accounts` WHERE `PhoneNr` = '%d'",amount);
					mysql_tquery(MainPipeline, query, "OnPhoneNumberCheck", "ii", playerid, 4);
					return 1;
				}
			}
		case 7:
			{
				PlayerInfo[playerid][pExp] = amount;
				format(string, sizeof(string), "   %s's Respect Points have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 8:
			{
				PlayerInfo[playerid][pPhousekey] = amount;
				format(string, sizeof(string), "   %s's House 1 has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 9:
			{
				PlayerInfo[playerid][pPhousekey2] = amount;
				format(string, sizeof(string), "   %s's House 2 has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 10:
			{
				PlayerInfo[playerid][pPhousekey3] = amount;
				format(string, sizeof(string), "   %s's House 3 has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 11:
			{
				SendClientMessageEx(playerid, COLOR_WHITE, "Family system has been merged to group system!");
			}
		case 12:
			{
				PlayerInfo[playerid][pDetSkill] = amount;
				format(string, sizeof(string), "   %s's Detective Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 13:
			{
				PlayerInfo[playerid][pLawSkill] = amount;
				format(string, sizeof(string), "   %s's Lawyer Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 14:
			{
				PlayerInfo[playerid][pMechSkill] = amount;
				format(string, sizeof(string), "   %s's Car Mechanic Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 17:
			{
				PlayerInfo[playerid][pDrugSmuggler] = amount;
				format(string, sizeof(string), "   %s's Drug Smuggler Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 18:
			{
				PlayerInfo[playerid][pSexSkill] = amount;
				format(string, sizeof(string), "   %s's Sex Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 19:
			{
				PlayerInfo[playerid][pBoxSkill] = amount;
				format(string, sizeof(string), "   %s's Box Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 20:
			{
				PlayerInfo[playerid][pArmsSkill] = amount;
				format(string, sizeof(string), "   %s's Arms Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 21:
			{
				PlayerInfo[playerid][pMats] = amount;
				format(string, sizeof(string), "   %s's Materials have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 22:
			{
				PlayerInfo[playerid][pDrugs][0] = amount;
				format(string, sizeof(string), "   %s's Cannabis has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 23:
			{
				PlayerInfo[playerid][pDrugs][1] = amount;
				format(string, sizeof(string), "   %s's Crack has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 24:
			{
				PlayerInfo[playerid][pFishingSkill] = amount;
				format(string, sizeof(string), "   %s's Fishing Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 25:
			{
				PlayerInfo[playerid][pJob] = amount;
				format(string, sizeof(string), "   %s's Job has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 26:
			{
				PlayerInfo[playerid][pRank] = amount;
				format(string, sizeof(string), "   %s's Rank has been to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 27:
			{
				SetPVarInt(playerid, "Packages", amount);
				format(string, sizeof(string), "   %s's Materials Packages have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 28:
			{
				PlayerInfo[playerid][pCrates] = amount;
				format(string, sizeof(string), "   %s's Drug Crates have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 29:
			{
				PlayerInfo[playerid][pDrugSmuggler] = amount;
				format(string, sizeof(string), "   %s's Smuggler Skill has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 30:
			{
				PlayerInfo[playerid][pInsurance] = amount;
				format(string, sizeof(string), "   %s's Insurance has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 31:
			{
				PlayerInfo[playerid][pWarns] = amount;
				format(string, sizeof(string), "   %s's Warnings have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 32:
			{
				PlayerInfo[playerid][pScrewdriver] = amount;
				format(string, sizeof(string), "   %s's Screwdrivers have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		/*case 33:
			{
				PlayerInfo[playerid][pBirthDate] = amount;
				format(string, sizeof(string), "   %s's Age has been set to %d.", GetPlayerNameEx(playerid), amount);
			}*/
		case 34:
			{
				PlayerInfo[playerid][pSex] = amount;
				format(string, sizeof(string), "   %s's Gender has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 35:
			{
				PlayerInfo[playerid][pNMuteTotal] = amount;
				format(string, sizeof(string), "   %s's Total Newbie Mutes has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 36:
			{
				PlayerInfo[playerid][pADMuteTotal] = amount;
				format(string, sizeof(string), "   %s's Total Ad Mutes has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 37:
			{
				PlayerInfo[playerid][pMember] = amount;
				format(string, sizeof(string), "   %s's Faction has been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 38:
			{
				if(PlayerInfo[playerid][pConnectHours] >= 2) {
					PlayerInfo[playerid][pWRestricted] = amount;
					format(string, sizeof(string), "   %s's Weapon Restricted Time has been set to %d.", GetPlayerNameEx(playerid), amount);
				}
				else {
					return SendClientMessageEx(playerid, COLOR_GREY, "You cannot set this on a person who has under 2 playing hours.");
				}
			}
		case 39:
			{
				PlayerInfo[playerid][pGangWarn] = amount;
				format(string, sizeof(string), "   %s's Gang Warns have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 40:
			{
				PlayerInfo[playerid][pRMutedTotal] = amount;
				format(string, sizeof(string), "   %s's Report Mutes have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 41:
			{
				PlayerInfo[playerid][pRewardHours] = amount;
				format(string, sizeof(string), "   %s's Reward Playing Hours have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 42:
			{
				PlayerInfo[playerid][pConnectHours] = amount;
				format(string, sizeof(string), "   %s's Playing Hours have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 43:
			{
				PlayerInfo[playerid][pGoldBoxTokens] = amount;
				format(string, sizeof(string), "   %s's Box Tokens have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 44:
			{
				PlayerInfo[playerid][pRewardDrawChance] = amount;
				format(string, sizeof(string), "   %s's Computer Drawings have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 45:
			{
				PlayerInfo[playerid][pPaper] = amount;
				format(string, sizeof(string), "   %s's Papers have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 46:
			{
				if (amount < 0 || amount >= MAX_BUSINESSES) return 1;
				PlayerInfo[playerid][pBusiness] = amount;
				format(string, sizeof(string), "   %s's Business have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 47:
			{
				if (amount < 0 || amount > 5) return 1;
				PlayerInfo[playerid][pBusinessRank] = amount;
				format(string, sizeof(string), "   %s's Business Rank have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 48:
			{
				PlayerInfo[playerid][pSpraycan] = amount;
				format(string, sizeof(string), "   %s's Spraycans have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 49:
			{
				PlayerInfo[playerid][pHeroin] = amount;
				format(string, sizeof(string), "   %s's Heroin have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 50:
			{
				PlayerInfo[playerid][pRawOpium] = amount;
				format(string, sizeof(string), "   %s's raw opium have been set to %d.", GetPlayerNameEx(playerid), amount);
			}
		case 51:
			{
				PlayerInfo[playerid][pSyringes] = amount;
				format(string, sizeof(string), "   %s's Syringes have been set to %d.", GetPlayerNameEx(playerid), amount);
			}

		case 52:
			{
				return 1;
			}

		case 53:
			{
				return 1;
			}

		case 54:
			{
				PlayerInfo[playerid][pEventTokens] = amount;
				format(string, sizeof(string), "   %s's Event Tokens have been set to %i.", GetPlayerNameEx(playerid), amount);
			}
		case 55:
			{
				PlayerInfo[playerid][pRimMod] = amount;
				format(string, sizeof(string), "   %s's Rim Kits have been set to %i.", GetPlayerNameEx(playerid), amount);
			}
		case 56:
			{
				PlayerInfo[playerid][pCarLockPickSkill] = amount;
				format(string, sizeof(string), "   %s's Car Lock Pick Skill have been set to %i.", GetPlayerNameEx(playerid), amount);
			}
		case 57:
			{
				PlayerInfo[playerid][pLockPickVehCount] = amount;
				format(string, sizeof(string), "   %s's Lock Pick Vehicle Count have been set to %i.", GetPlayerNameEx(playerid), amount);
			}
		case 58:
			{
				PlayerInfo[playerid][pLockPickTime] = amount;
				format(string, sizeof(string), "   %s's Lock Pick Vehicle Time have been set to %i.", GetPlayerNameEx(playerid), amount);
			}
		case 59:
			{
				PlayerInfo[playerid][pToolBox] = amount;
				format(string, sizeof(string), "   %s's Tool Box usages have been set to %i.", GetPlayerNameEx(playerid), amount);
			}
		case 60:
			{
				PlayerInfo[playerid][pCrowBar] = amount;
				format(string, sizeof(string), "   %s's Crowbar usages have been set to %i.", GetPlayerNameEx(playerid), amount);
			}

		default:
			{
				format(string, sizeof(string), "   Invalid stat code.", amount);
			}
		}

		format(string, sizeof(string), "%s by %s", string, GetPlayerNameEx(playerid));
		Log("logs/undercover.log", string);
		SendClientMessageEx(playerid, COLOR_GRAD1, string);
	}
	return 1;
}

CMD:setvw(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	new giveplayerid, vw;
	if(sscanf(params, "ud", giveplayerid, vw)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setvw [player] [virtual world]");
	if(!IsPlayerConnected(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "Nguoi choi khong truc tuyen.");
	new string[128];
	if(GetPVarType(giveplayerid, "IsInArena"))
	{
		SetPVarInt(playerid, "tempPBP", giveplayerid);
		format(string, sizeof(string), "%s (ID: %d) is currently in an active Paintball game.\n\nDo you want to force this player out?", GetPlayerNameEx(giveplayerid), giveplayerid);
		ShowPlayerDialogEx(playerid, PBFORCE, DIALOG_STYLE_MSGBOX, "Paintball", string, "Yes", "No");
		return 1;
	}
	PlayerInfo[giveplayerid][pVW] =  vw;
	SetPlayerVirtualWorld(giveplayerid,  vw);
	format(string, sizeof(string), "Ban da thiet lap Virtual World cho %s (%d) thanh %d.", GetPlayerNameEx(giveplayerid), giveplayerid, vw);
	SendClientMessageEx(playerid, COLOR_GRAD2, string);
	return 1;
}

CMD:setint(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	new giveplayerid, int;
	if(sscanf(params, "ud", giveplayerid, int)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setint [player] [interiorid]");
	if(!IsPlayerConnected(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "Nguoi choi khong truc tuyen.");
	new string[128];
	PlayerInfo[giveplayerid][pInt] = int;
	SetPlayerInterior(giveplayerid, int);
	format(string, sizeof(string), "You have set %s's interior to %d.", GetPlayerNameEx(giveplayerid), int);
	SendClientMessageEx(playerid, COLOR_GRAD2, string);
	return 1;
}
CMD:ssc(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pShopTech] >= 2)
	{
		new string[128], giveplayerid, skinid;
		if(sscanf(params, "ud", giveplayerid, skinid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setskincustom [player] [skinid]");

		if(IsPlayerConnected(giveplayerid))
		{
			if((PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin]) && giveplayerid != playerid) return SendClientMessageEx(playerid, COLOR_GREY, "You cannot use this command on a the same/greater level admin than you!");
			if(!IsInvalidSkin(skinid) || (21001 <= skinid <= 21100 ) )
			{
				if(GetPlayerSkin(giveplayerid) == skinid)
				{
					SendClientMessageEx( playerid, COLOR_WHITE, "The person you're trying to change skins of already is using the skin you're trying to set." );
				}
				else
				{
					PlayerInfo[giveplayerid][pModel] = skinid;
					format(string, sizeof(string), "Ban da duoc set skin boi admin %s.", GetPlayerNameEx(playerid));
					SendClientMessageEx(giveplayerid, COLOR_WHITE, string);
					format(string, sizeof(string), "Ban da cho %s skin ID %d.", GetPlayerNameEx(giveplayerid), skinid);
					SendClientMessageEx(playerid, COLOR_WHITE, string);
					SetPlayerSkin(giveplayerid, PlayerInfo[giveplayerid][pModel]);
					format(szMiscArray, sizeof(szMiscArray), "Skin changed %d", skinid);
					DBLog(playerid, giveplayerid, "Admin", szMiscArray);
				}
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ID Skin khong hop le!");
			}
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:setskin(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], giveplayerid, skinid;
		if(sscanf(params, "ud", giveplayerid, skinid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setskin [player] [skinid]");

		if(IsPlayerConnected(giveplayerid))
		{
			if((PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin]) && giveplayerid != playerid) return SendClientMessageEx(playerid, COLOR_GREY, "You cannot use this command on a the same/greater level admin than you!");
			if(!IsInvalidSkin(skinid) )
			{
				if(GetPlayerSkin(giveplayerid) == skinid)
				{
					SendClientMessageEx( playerid, COLOR_WHITE, "The person you're trying to change skins of already is using the skin you're trying to set." );
				}
				else
				{
					PlayerInfo[giveplayerid][pModel] = skinid;
					format(string, sizeof(string), "Ban da duoc set skin boi admin %s.", GetPlayerNameEx(playerid));
					SendClientMessageEx(giveplayerid, COLOR_WHITE, string);
					format(string, sizeof(string), "Ban da cho %s skin ID %d.", GetPlayerNameEx(giveplayerid), skinid);
					SendClientMessageEx(playerid, COLOR_WHITE, string);
					SetPlayerSkin(giveplayerid, PlayerInfo[giveplayerid][pModel]);
					format(szMiscArray, sizeof(szMiscArray), "Skin changed %d", skinid);
					DBLog(playerid, giveplayerid, "Admin", szMiscArray);
				}
			}
			else
			{
				SendClientMessageEx(playerid, COLOR_GREY, "ID Skin khong hop le!");
			}
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:entercar(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 3)
	{
		new carid, seatid;
		if(sscanf(params, "ii", carid, seatid))	return SendClientMessage(playerid, COLOR_WHITE, "SU DUNG: /entercar [carid] [seatid]");
		if(!(1 <= carid <= MAX_VEHICLES)) return SendClientMessageEx(playerid, COLOR_GREY, "ID phuong tien it nhat la 1 hoac cao nhat la 2000.");
		if(seatid < 0 || seatid > 3) return SendClientMessageEx(playerid, COLOR_GREY, "Seat ID khong hop le (0>4)!");
		else if(!IsVehicleOccupied(carid, seatid)) IsPlayerEntering{playerid} = true, DangLenXe[playerid] = carid, PutPlayerInVehicle(playerid, carid, seatid), SendClientMessageEx(playerid, COLOR_GRAD1, "   You have been teleported!");
		else SendClientMessageEx(playerid, COLOR_GREY, "Seat ID nay da co nguoi ngoi.");
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:gotocar(playerid, params[])
{
	new string[128];
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		new carid;
		if(sscanf(params, "d", carid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /gotocar [carid]");
		if(carid == INVALID_VEHICLE_ID || GetVehicleModel(carid) < 400) return SendClientMessage(playerid, -1, "Chiec xe nay khong ton tai");
		new Float:cwx2,Float:cwy2,Float:cwz2;
		GetVehiclePos(carid, cwx2, cwy2, cwz2);
		if (GetPlayerState(playerid) == 2)
		{
			new tmpcar = GetPlayerVehicleID(playerid);
			SetVehiclePos(tmpcar, cwx2, cwy2, cwz2);
			fVehSpeed[playerid] = 0.0;
		}
		else
		{
			SetPlayerPos(playerid, cwx2, cwy2, cwz2);
		}

		format(string, sizeof(string), "Ban da dich chuyen den phuong tien ID %d (%s)", carid, GetVehicleModel(carid) >= 400 ? GetVehicleName(GetVehicleModel(carid)) : "None");
		SendClientMessageEx(playerid, COLOR_GRAD1, string);
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, GetVehicleVirtualWorld(carid));
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:gotoid(playerid, params[])
{
	new giveplayerid;
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /gotoid [player]");

	new Float:plocx,Float:plocy,Float:plocz;
	if (IsPlayerConnected(giveplayerid))
	{
		if (PlayerInfo[playerid][pAdmin] >= 2)
		{
			if(GetPlayerState(giveplayerid) == PLAYER_STATE_SPECTATING)
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi choi dang SPEC.");
				return 1;
			}
			if(GetPlayerState(playerid) == PLAYER_STATE_SPECTATING)
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the lam dieu nay khi dang SPEC.");
				return 1;
			}
			if(PlayerInfo[giveplayerid][pAdmin] >= 1337 && !GetPVarType(giveplayerid, "EATeleportable")) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the dich chuyen den nguoi nay");
			GetPlayerPos(giveplayerid, plocx, plocy, plocz);
			SetPlayerVirtualWorld(playerid, PlayerInfo[giveplayerid][pVW]);
			Streamer_UpdateEx(playerid, plocx, plocy, plocz);

			if (GetPlayerState(playerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(playerid);
				SetVehiclePos(tmpcar, plocx, plocy+4, plocz);
				fVehSpeed[playerid] = 0.0;
			}
			else
			{
				SetPlayerPos(playerid,plocx,plocy+2, plocz);
				SetPlayerInterior(playerid, GetPlayerInterior(giveplayerid));
				SetPlayerVirtualWorld(playerid, GetPlayerVirtualWorld(giveplayerid));
			}

			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban da duoc dich chuyen!");
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
		}

	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	return 1;
}

CMD:sendtoid(playerid, params[])
{
	new string[128];
	new giveplayerid;
	new targetplayerid;
	if(sscanf(params, "uu", giveplayerid, targetplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /sendtoid [player] [target player]");

	new Float:plocx,Float:plocy,Float:plocz;

	if(IsPlayerConnected(giveplayerid) && IsPlayerConnected(targetplayerid))
	{
		if (PlayerInfo[playerid][pAdmin] >= 2)
		{
			if(GetPlayerState(giveplayerid) == PLAYER_STATE_SPECTATING || GetPlayerState(targetplayerid) == PLAYER_STATE_SPECTATING)
			{
				return SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi do dang Spec.");
			}
			if(giveplayerid == playerid)
			{
				return SendClientMessageEx(playerid, COLOR_GRAD2, "Hay su dung /gotoid de dich chuyen den do!");
			}
			if(targetplayerid == playerid)
			{
				return SendClientMessageEx(playerid, COLOR_GRAD2, "Hay su dung /gethere de dich chuyen den do!");
			}
			if(PlayerInfo[targetplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin])
			{
				return SendClientMessageEx(playerid, COLOR_GRAD2, "You cannot use this command on a Admin with the same/greater Administrative Level than you.");
			}
			if(GetPVarType(giveplayerid, "IsInArena"))
			{
			    SetPVarInt(playerid, "tempPBP", giveplayerid);
			    format(string, sizeof(string), "%s (ID: %d) is currently in an active Paintball game.\n\nDo you want to force this player out?", GetPlayerNameEx(giveplayerid), giveplayerid);
			    return ShowPlayerDialogEx(playerid, PBFORCE, DIALOG_STYLE_MSGBOX, "Paintball", string, "Yes", "No");
			}
			if(PlayerInfo[giveplayerid][pAdmin] == 99999 && !GetPVarType(giveplayerid, "EATeleportable")) return SendClientMessageEx(playerid, COLOR_WHITE, "You cannot teleport them");
			if(PlayerInfo[targetplayerid][pAdmin] == 99999 && !GetPVarType(targetplayerid, "EATeleportable")) return SendClientMessageEx(playerid, COLOR_WHITE, "You cannot teleport to them");
			GetPlayerPos(targetplayerid, plocx, plocy, plocz);
			SetPlayerVirtualWorld(giveplayerid, PlayerInfo[targetplayerid][pVW]);
			Streamer_UpdateEx(giveplayerid, plocx, plocy, plocz);
			DeletePVar(giveplayerid, "BusinessesID");
			if (GetPlayerState(giveplayerid) == 2)
			{
				new tmpcar = GetPlayerVehicleID(giveplayerid);
				SetVehiclePos(tmpcar, plocx, plocy+4, plocz);
				fVehSpeed[giveplayerid] = 0.0;
			}
			else
			{
				SetPlayerPos(giveplayerid,plocx,plocy+2, plocz);
				SetPlayerInterior(giveplayerid, GetPlayerInterior(targetplayerid));
				SetPlayerVirtualWorld(giveplayerid, GetPlayerVirtualWorld(targetplayerid));
			}

			format(string, sizeof(string), "Ban da duoc dich chuyen den %s", GetPlayerNameEx(targetplayerid));
			SendClientMessageEx(giveplayerid, COLOR_GRAD1, string);
			format(string, sizeof(string), "Ban da dich chuyen %s den %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(targetplayerid));
			SendClientMessageEx(playerid, COLOR_GRAD1, string);
		}
		else
		{
			return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
		}

	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
	return 1;
}

CMD:gethere(playerid, params[])
{
	new giveplayerid;
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /gethere [player]");

	new Float:plocx,Float:plocy,Float:plocz;
	if (IsPlayerConnected(giveplayerid))
	{
		if (PlayerInfo[playerid][pAdmin] >= 2)
		{
			if(PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin])
			{
				SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the GETHERE mot Admin cung cap bac hoac cao hon ban!");
				return 1;
			}
			if(GetPlayerState(giveplayerid) == PLAYER_STATE_SPECTATING)
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi do dang SPEC mot ai do!");
				return 1;
			}
			if(GetPVarType(giveplayerid, "IsInArena"))
			{
			    new string[128];
			    SetPVarInt(playerid, "tempPBP", giveplayerid);
			    format(string, sizeof(string), "%s (ID: %d) is currently in an active Paintball game.\n\nDo you want to force this player out?", GetPlayerNameEx(giveplayerid), giveplayerid);
			    ShowPlayerDialogEx(playerid, PBFORCE, DIALOG_STYLE_MSGBOX, "Paintball", string, "Yes", "No");
			    return 1;
			}
			Furniture_ResetPVars(playerid);
			GetPlayerPos(playerid, plocx, plocy, plocz);
			SetPlayerVirtualWorld(giveplayerid, PlayerInfo[playerid][pVW]);
			Streamer_UpdateEx(giveplayerid, plocx, plocy, plocz);
			DeletePVar(giveplayerid, "BusinessesID");
			if (GetPlayerState(giveplayerid) == 2)
			{
				fVehSpeed[giveplayerid] = 0.0;
				new tmpcar = GetPlayerVehicleID(giveplayerid);
				SetVehiclePos(tmpcar, plocx, plocy+4, plocz);
				LinkVehicleToInterior(GetPlayerVehicleID(giveplayerid), GetPlayerInterior(playerid));
				SetPlayerInterior(giveplayerid, GetPlayerInterior(playerid));
				SetVehicleVirtualWorld(GetPlayerVehicleID(giveplayerid), GetPlayerVirtualWorld(playerid));
				SetPlayerVirtualWorld(giveplayerid, GetPlayerVirtualWorld(playerid));
				if(IsValidDynamicArea(iVehEnterAreaID[tmpcar])) {
					// Streamer_SetIntData(STREAMER_TYPE_AREA, iVehEnterAreaID[tmpcar], E_STREAMER_WORLD_ID, tmpcar);
				}
			}
			else
			{
				SetPlayerPos(giveplayerid,plocx,plocy+2, plocz);
				SetPlayerInterior(giveplayerid, GetPlayerInterior(playerid));
				SetPlayerVirtualWorld(giveplayerid, GetPlayerVirtualWorld(playerid));
			}

			SendClientMessageEx(giveplayerid, COLOR_GRAD1, "Ban da duoc dich chuyen!");
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
		}

	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	return 1;
}

CMD:getcar(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pHelper] >= 2)
	{
		new carid;
		if(sscanf(params, "d", carid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /getcar [carid]");
		if(carid == INVALID_VEHICLE_ID || carid >= MAX_VEHICLES) return SendClientMessage(playerid, -1, "Xe khong ton tai");
		new Float:plocx,Float:plocy,Float:plocz;

		GetPlayerPos(playerid, plocx, plocy, plocz);
		SetVehiclePos(carid,plocx,plocy+4, plocz);
		SetVehicleVirtualWorld(carid, GetPlayerVirtualWorld(playerid));
		LinkVehicleToInterior(carid, GetPlayerInterior(playerid));
		if(IsValidDynamicArea(iVehEnterAreaID[carid])) {
			// Streamer_SetIntData(STREAMER_TYPE_AREA, iVehEnterAreaID[carid], E_STREAMER_WORLD_ID, carid);
		}

	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:respawncars(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 3)
	{
		new string[128], radius;
		if(sscanf(params, "d", radius)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /respawncars [Pham vi(1>41)]");

		if(radius < 1 || radius > 40)
		{
			SendClientMessageEx(playerid, COLOR_WHITE, "Pham vi it nhat la 0 hoac thap nhat la 41!");
			return 1;
		}
		RespawnNearbyVehicles(playerid, radius);
		format(string, sizeof(string), "Ban da respawn tat ca phuong tien trong pham vi %d met.", radius);
		SendClientMessageEx(playerid, COLOR_GREY, string);
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:respawncar(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], carid;
		if(sscanf(params, "d", carid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /respawncar [carid]");

		SetVehicleToRespawn(carid);
		format(string, sizeof(string), "Ban da respawn phuong tien (%d).", carid);
		SendClientMessageEx(playerid, COLOR_GREY, string);
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:takeadminweapons(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /takeadminweapons [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			for(new s = 0; s < 12; s++)
			{
				if(PlayerInfo[giveplayerid][pAGuns][s] != 0)
				{
					RemovePlayerWeapon(giveplayerid, PlayerInfo[giveplayerid][pAGuns][s]);
				}
			}
			format(string,sizeof(string),"You have removed %s's admin spawned weapons.", GetPlayerNameEx(giveplayerid));
			SendClientMessageEx(playerid, COLOR_WHITE, string);
		}
	}
	return 1;
}

CMD:gotoco(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
		new Float: pos[3], int, vw;
		if(sscanf(params, "p<,>fffD(0)D(0)", pos[0], pos[1], pos[2], int, vw)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /gotoco [x coordinate] [y coordinate] [z coordinate] [interior] [vw]");

		SendClientMessageEx(playerid, COLOR_GRAD2, "Ban da duoc dich chuyen den toa do duoc chi dinh.");
		SetPlayerPos(playerid, pos[0], pos[1], pos[2]);
		SetPlayerInterior(playerid, int);
		SetPlayerVirtualWorld(playerid, vw);
	}
	return 1;
}

CMD:setweather(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pASM] < 1)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
		return 1;
	}

	new weather;
	if(sscanf(params, "d", weather)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setweather [weatherid]");

	if(weather < 0||weather > 45) { SendClientMessageEx(playerid, COLOR_GREY, "WeatherID phai lon hon 1 hoac thap hon 45!"); return 1; }
	SetWeather(weather);
	gWeather = weather;
	SendClientMessageEx(playerid, COLOR_GREY, "Ban da set weather ID cho tat ca moi nguoi!");
	return 1;
}

CMD:admsettien(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1337)
	{
		new string[128], giveplayerid, money;
		if(sscanf(params, "ud", giveplayerid, money)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setmoney [player] [so tien]");
		if(IsPlayerConnected(giveplayerid))
		{
			ResetPlayerCash(giveplayerid);
			GivePlayerCash(giveplayerid, money);
			format(string, sizeof(string), "You have set %s's money to $%d !",GetPlayerNameEx(giveplayerid),money);
			SendClientMessageEx(playerid, COLOR_WHITE, string);
			format(string, sizeof(string), "%s has set %s's(%d) to $%d (/setmoney)", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), money);
			Log("logs/stats.log", string);
			format(szMiscArray, sizeof(szMiscArray), "Money set to $%s", number_format(money));
			DBLog(playerid, giveplayerid, "Admin", szMiscArray);
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:admgivetien(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1337)
	{
		new string[128], giveplayerid, money;
		if(sscanf(params, "ud", giveplayerid, money)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /givemoney [player] [so tien]");
		if(money < 1) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the give money it hon 1$.");
		if(IsPlayerConnected(giveplayerid))
		{
			GivePlayerCash(giveplayerid, money);
			format(string, sizeof(string), "Ban da set cho %s ($%s).",GetPlayerNameEx(giveplayerid), number_format(money));
			SendClientMessageEx(playerid, COLOR_GREEN, string);
			format(string, sizeof(string), "%s da duoc cho %s(%d) $%s (/givemoney)", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), number_format(money));
			Log("logs/stats.log", string);
			format(szMiscArray, sizeof(szMiscArray), "Money given $%s", number_format(money));
			DBLog(playerid, giveplayerid, "Admin", szMiscArray);
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:slap(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pWatchdog] == 2)
	{
	    new szString[128], giveplayerid, Float:posx, Float:posy, Float:posz, Float:shealth;
	    if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /slap [player]");
	    if(!IsPlayerConnected(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "Nguoi choi khong truc tuyen.");
	    if((PlayerInfo[giveplayerid][pAdmin] && PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin]) && giveplayerid != playerid) {
			format(szString, sizeof(szString), "AdmCmd: %s dang co gang slap ban!", GetPlayerNameEx(playerid));
			SendClientMessageEx(giveplayerid, COLOR_YELLOW, szString);
			SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the slap mot admin bang cap bac voi ban hoac cao hon!");
			PlayerPlaySound(giveplayerid, 1130, posx, posy, posz);
			return 1;
		}
		else {
		    GetHealth(giveplayerid, shealth);
			SetHealth(giveplayerid, shealth-5);
			GetPlayerPos(giveplayerid, posx, posy, posz);
			SetPlayerPos(giveplayerid, posx, posy, posz+5);
			PlayerPlaySound(giveplayerid, 1130, posx, posy, posz+5);
			if(giveplayerid != playerid) {
				format(szString, sizeof(szString), "[SLAP] %s da bi slap boi %s.", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid));
				ABroadCast(COLOR_LIGHTRED, szString, 2);
			}
		}
	}
	else return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the su dung lenh nay!");
	return 1;
}

CMD:kills(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pWatchdog] >= 2)
	{
		new string[256], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /kills [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			SendClientMessageEx(playerid, COLOR_GREEN, "________________________________________________");
			format(string, sizeof(string), "<< Last 10 Kills/Deaths of %s >>", GetPlayerNameEx(giveplayerid));
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			GetLatestKills(playerid, giveplayerid);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:okills(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 3)
	{
		if(isnull(params)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /okills [name]");

		new query[256], giveplayerid;
		giveplayerid = ReturnUser(params);
		if(giveplayerid != INVALID_PLAYER_ID) return SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi choi nay dang truc tuyen, hay su dung lenh /kills de kiem tra.");

		new tmpName[24];
		mysql_escape_string(params, tmpName);

		mysql_format(MainPipeline, query, sizeof(query), "SELECT `id` FROM `accounts` WHERE `Username` = '%s'", tmpName);
		mysql_tquery(MainPipeline, query, "OnGetOKills", "is", playerid, tmpName);
	}
	else return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do!");
	return 1;
}

CMD:mute(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /mute [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(giveplayerid == playerid)
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the su dung lenh nay len chinh minh!");
				return 1;
			}

			if(PlayerInfo[giveplayerid][pMuted] == 0)
			{
				if(PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin])
				{
					format(string, sizeof(string), "%s dang co gang /mute ban.",GetPlayerNameEx(playerid));
					SendClientMessageEx(giveplayerid, COLOR_YELLOW, string);
					SendClientMessageEx(playerid, COLOR_LIGHTRED, "Ban khong the cam chat admin cap cao hon ban.");
					return 1;
				}
				PlayerInfo[giveplayerid][pMuted] = 1;
				format(string, sizeof(string), "AdmCmd: %s da bi cam chat boi %s.",GetPlayerNameEx(giveplayerid),GetPlayerNameEx(playerid));
				ABroadCast(COLOR_LIGHTRED,string,2);
				DBLog(playerid, giveplayerid, "Admin", "Was silenced (/mute)");
			}
			else
			{
				PlayerInfo[giveplayerid][pMuted] = 0;
				format(string, sizeof(string), "AdmCmd: %s da duoc mo cam chat boi %s.",GetPlayerNameEx(giveplayerid),GetPlayerNameEx(playerid));
				ABroadCast(COLOR_LIGHTRED,string,2);
				DBLog(playerid, giveplayerid, "Admin", "Was unsilenced (/mute)");
			}
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:kick(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1 || PlayerInfo[playerid][pHelper] >= 2 || PlayerInfo[playerid][pWatchdog] >= 2)
	{
		new string[128], giveplayerid, reason[64];
		if(sscanf(params, "us[64]", giveplayerid, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /kick [player] [ly do]");

		if(giveplayerid != INVALID_PLAYER_ID)
		{
			if(playerid == giveplayerid) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the tu kick chinh minh, hay su dung lenh /q!");
			if(PlayerInfo[playerid][pAdmin] == 1 && (PlayerInfo[giveplayerid][pHelper] >= 2 || PlayerInfo[giveplayerid][pWatchdog] >= 2)) return SendClientMessageEx(playerid, COLOR_WHITE, "You can't perform this action on an equal or higher level administrator.");
			if(PlayerInfo[giveplayerid][pAdmin] >= PlayerInfo[playerid][pAdmin] && (PlayerInfo[giveplayerid][pHelper] >= 2 || PlayerInfo[giveplayerid][pAdmin] > 0) && playerid != giveplayerid && PlayerInfo[giveplayerid][pWatchdog] >= PlayerInfo[playerid][pWatchdog]) return SendClientMessageEx(playerid, COLOR_WHITE, "You can't perform this action on an equal or higher level administrator.");
			else
			{
				new playerip[32];
				GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
				format(string, sizeof(string), "AdmCmd: %s(%d) (IP:%s) da bi kick boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), playerip, GetPlayerNameEx(playerid), reason);
				Log("logs/kick.log", string);
				if(PlayerInfo[playerid][pAdmin] == 1) Log("logs/moderator.log", string);
				format(string, sizeof(string), "[Kick] %s (%d) da bi kick boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), giveplayerid ,GetPlayerNameEx(playerid), reason);
				SendClientMessageToAllEx(COLOR_LIGHTRED, string);
				DBLog(playerid, giveplayerid, "Kick", reason);
				StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
				SetTimerEx("KickEx", 1000, 0, "i", giveplayerid);
				if(GetPVarType(giveplayerid, "RepFam_TL")) Rivalry_Toggle(giveplayerid, false);
			}
			return 1;
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong ton tai.");
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:kickres(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] < 99999)
	{
		return 1;
	}

	new level, amount;
	if(sscanf(params, "dd", level, amount)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /kickres [level] [amount]");

	if(level < 0 || level > 5) { SendClientMessageEx(playerid, COLOR_GREY, "   Can only Reserved Slots Kick from level 0 to 5!"); return 1; }
	if(amount < 1 || amount > 10) { SendClientMessageEx(playerid, COLOR_GREY, "   Can only Reserved Slots Kick of a maximum of 10 players!"); return 1; }
	foreach(new i: Player)
	{
		if(PlayerInfo[i][pLevel] == level && PlayerInfo[i][pAdmin] < 1 && PlayerInfo[i][pDonateRank] < 1 && amount > 0)
		{
			DBLog(playerid, i, "Kick", "Reserve slot kicked (/kickres)");
			amount -= 1;
			Kick(i);
		}
	}
	return 1;
}

CMD:warn(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pWatchdog] >= 2)
	{
		new string[128], giveplayerid, reason[64];
		if(sscanf(params, "us[64]", giveplayerid, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /warn [player] [Ly do]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] >= 2) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the WARN mot Admin!");
			PlayerInfo[giveplayerid][pWarns] += 1;
			if(PlayerInfo[giveplayerid][pWarns] >= 3)
			{
				PlayerInfo[giveplayerid][pWarns] = 0;
				CreateBan(playerid, PlayerInfo[giveplayerid][pId], giveplayerid, PlayerInfo[giveplayerid][pIP], "3 Warnings", 14);
				return 1;
			}
			format(string, sizeof(string), "AdmCmd: %s was warned by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
			ABroadCast(COLOR_LIGHTRED, string, 2);
			if(PlayerInfo[playerid][pWatchdog] >= 2)
			{
				foreach(new i: Player) if(PlayerInfo[i][pWatchdog] >= 1 && PlayerInfo[i][pAdmin] < 2) SendClientMessageEx(i, COLOR_LIGHTRED, string);
			}
			format(string, sizeof(string), "AdmCmd: %s(%d) was warned by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid), reason);
			Log("logs/admin.log", string);
			format(szMiscArray, sizeof(szMiscArray), "Was warned (%s)", reason);
			DBLog(playerid, giveplayerid, "Admin", szMiscArray);
			StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
			format(string, sizeof(string), "You were warned by %s, reason: %s", GetPlayerNameEx(playerid), reason);
			SendClientMessageEx(giveplayerid, COLOR_LIGHTRED, string);
			return 1;

		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
	return 1;
}

CMD:swarn(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pUndercover] >= 1)
	{
		new string[128], giveplayerid, reason[64];
		if(sscanf(params, "us[64]", giveplayerid, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /swarn [player] [Ly do]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] >= 2) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the WARN mot Admin!");
			PlayerInfo[giveplayerid][pWarns] += 1;
			if(PlayerInfo[giveplayerid][pWarns] >= 3)
			{
			 	PlayerInfo[giveplayerid][pWarns] = 0;
			 	CreateBan(playerid, PlayerInfo[giveplayerid][pId], giveplayerid, PlayerInfo[giveplayerid][pIP], "3 Warnings", 14);
				return 1;
			}
			format(string, sizeof(string), "AdmCmd: %s was silent warned by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
			ABroadCast(COLOR_LIGHTRED, string, 2);
			format(string, sizeof(string), "AdmCmd: %s(%d) was silent warned by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid), reason);
			Log("logs/admin.log", string);
			format(szMiscArray, sizeof(szMiscArray), "Was warned (%s)", reason);
			DBLog(playerid, giveplayerid, "Admin", szMiscArray);
			StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
			format(string, sizeof(string), "You were warned by an Admin, reason: %s", reason);
			SendClientMessageEx(giveplayerid, COLOR_LIGHTRED, string);
			return 1;

		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
	return 1;
}

CMD:owarn(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 3)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do!");
		return 1;
	}

	new string[128], query[512], name[MAX_PLAYER_NAME], reason[64];
	if(sscanf(params, "s[24]s[64]", name, reason)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /owarn [name] [Ly do]");

	new giveplayerid = ReturnUser(name);
	if(giveplayerid != INVALID_PLAYER_ID)
	{
		SendClientMessageEx(playerid, COLOR_GRAD2, "Nguoi choi do dang truc tuyen, ban hay su dung lenh /warn.");
		return 1;
	}

	new tmpName[24];
	mysql_escape_string(name,tmpName);
	SetPVarString(playerid, "OnWarnPlayer", tmpName);
	SetPVarString(playerid, "OnWarnPlayerReason", reason);

	mysql_format(MainPipeline, query, sizeof(query), "UPDATE `accounts` SET `Warnings`=`Warnings`+1 WHERE `Username`='%s' AND `PermBand` < 3 AND `Band` < 1 AND `AdminLevel` < 2",tmpName);
	mysql_tquery(MainPipeline, query, "OnWarnPlayer", "i", playerid);

	format(string,sizeof(string),"Attempting to warn %s...", tmpName);
	SendClientMessageEx(playerid, COLOR_YELLOW, string);

	return 1;
}

CMD:skick(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pWatchdog] >= 2)
	{
		new string[128], giveplayerid, reason[64];
		if(sscanf(params, "us[64]", giveplayerid, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /skick [player] [Ly do]");

		if(giveplayerid != INVALID_PLAYER_ID)
		{
			if(PlayerInfo[giveplayerid][pAdmin] > PlayerInfo[playerid][pAdmin])
			{
				format(string, sizeof(string), "[Silent Kick]: %s da bi kick (silent) boi he thong, ly do: /skick mot Admin cap cao.", GetPlayerNameEx(playerid));
				ABroadCast(COLOR_LIGHTRED,string,2);
				SetTimerEx("KickEx", 1000, 0, "i", playerid);
				return 1;
			}
			else
			{
				new playerip[32];
				GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
				format(string, sizeof(string), "AdmCmd: %s(%d) (IP:%s) was silent kicked by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), playerip, GetPlayerNameEx(playerid), reason);
				Log("logs/kick.log", string);
				format(string, sizeof(string), "[Silent Kick]: %s da bi kick (slient) boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
				ABroadCast(COLOR_LIGHTRED,string,2);

				StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
				SetTimerEx("KickEx", 1000, 0, "i", giveplayerid);
			}
			return 1;

		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the su dung lenh nay.");
	return 1;
}

CMD:freeze(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /freeze [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] > PlayerInfo[playerid][pAdmin])
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the Freeze Admin cap cao hon ban.");
				return 1;
			}

			TogglePlayerControllable(giveplayerid, 0);
			SetPVarInt(giveplayerid, "IsFrozen", 1);
			format(string, sizeof(string), "[Freeze]: %s da bi Freeze boi %s",GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid));
			ABroadCast(COLOR_LIGHTRED,string, 2);
			DBLog(playerid, giveplayerid, "Admin", "Was frozen");
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:unfreeze(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /unfreeze [player]");


		if(IsPlayerConnected(giveplayerid))
		{
			DeletePVar(giveplayerid, "IsFrozen");
			DeletePVar(giveplayerid, "PlayerCuffed");
			PlayerCuffed[giveplayerid] = 0;
			PlayerTied[giveplayerid] = 0;
			TogglePlayerControllable(giveplayerid, 1);
			format(string, sizeof(string), "[Unfreeze]: %s da duoc Unfreeze boi %s.",GetPlayerNameEx(giveplayerid),GetPlayerNameEx(playerid));
			ABroadCast(COLOR_LIGHTRED,string,2);
			DBLog(playerid, giveplayerid, "Admin", "Was un-frozen");
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_WHITE, "Nguoi choi khong truc tuyen.");
		}

	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:makemoderator(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pAP] >= 2 || PlayerInfo[playerid][pHR] >= 3)
	{
		new string[128], giveplayerid, level;
		if(sscanf(params, "ui", giveplayerid, level)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /makemoderator [player] [cap bac(1-2)]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] >= 2)
			{
				SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the lam dieu nay voi mot Admin!");
				return 1;
			}
			if(PlayerInfo[giveplayerid][pStaffBanned] >= 1) return SendClientMessage(playerid, COLOR_WHITE, "That player is currently staff banned.");
			PlayerInfo[giveplayerid][pAdmin] = 1;
			if(level == 1) {
				PlayerInfo[giveplayerid][pSMod] = 0;
				format(string, sizeof(string), "Ban da duoc thang chuc Server Moderator boi %s", GetPlayerNameEx(playerid));
				SendClientMessageEx(giveplayerid, COLOR_LIGHTBLUE, string);
				format(string, sizeof(string), "Ban thang chuc %s thanh Server Moderator.", GetPlayerNameEx(giveplayerid));
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
				format(string, sizeof(string), "%s(%d) da make Server Moderator cho %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid));
				Log("logs/moderator.log", string);
			}
			else if(level == 2) {
				PlayerInfo[giveplayerid][pSMod] = 1;
				format(string, sizeof(string), "Ban da duoc thang chuc Senior Moderator %s", GetPlayerNameEx(playerid));
				SendClientMessageEx(giveplayerid, COLOR_LIGHTBLUE, string);
				format(string, sizeof(string), "ban thang chuc %s thanh Senior Moderator.", GetPlayerNameEx(giveplayerid));
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
				format(string, sizeof(string), "%s(%d) da make Senior Moderator cho %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid));
				Log("logs/moderator.log", string);
			}
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:removemoderator(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1337)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /removemoderator [player]");

		if(IsPlayerConnected(giveplayerid))
		{

			if(PlayerInfo[giveplayerid][pAdmin] == 1)
			{
				if(GetPVarInt(playerid, "AdvisorDuty") == 1)
				{
					DeletePVar(playerid, "AdvisorDuty");
					Advisors -= 1;
				}
				PlayerInfo[giveplayerid][pAdmin] = 0;
				PlayerInfo[giveplayerid][pSMod] = 0;
				format(string, sizeof(string), "%s da KICK ban ra khoi Moderator Team.", GetPlayerNameEx(playerid));
				SendClientMessageEx(giveplayerid, COLOR_LIGHTBLUE, string);
				format(string, sizeof(string), "Ban da kick %s's ra khoi Moderator Team.", GetPlayerNameEx(giveplayerid));
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
				format(string, sizeof(string), "%s(%d) da take Moderator %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid));
				Log("logs/moderator.log", string);
			}

		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:ahelp(playerid, params[]) {
	return callcmd::ah(playerid, params);
}

CMD:nah(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1) Help_ListCat(playerid, DIALOG_HELPCATADMIN);
	return 1;
 }

CMD:oahelp(playerid, params[]) {
	return callcmd::ah(playerid, params);
}

CMD:ah(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1 || PlayerInfo[playerid][pHelper] >= 1) SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
	if (PlayerInfo[playerid][pAdmin] >= 1)
	{
		if(PlayerInfo[playerid][pSMod] > 0) SendClientMessageEx(playerid, COLOR_GRAD1, "*** {FFFF00}SENIOR SERVER MODERATOR{B4B5B7} --* /jail /kick /staff /togstaff /changename");
		else SendClientMessageEx(playerid, COLOR_GRAD1, "--* {FFFF00}SERVER MODERATOR{B4B5B7} --* /mjail /kick /staff /togstaff");
	}
	if (PlayerInfo[playerid][pWatchdog] >= 3)
	{
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* RP SPECIALIST --* /watchdogs /restrictaccount /unrestrictaccount /togwd /makewatchdog");
	}
	if (PlayerInfo[playerid][pWatchdog] >= 4)
	{
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* Director of RP Improvement --* /watchlistadd /watchlistremove /wdwhitelist");
	}
	if (PlayerInfo[playerid][pAdmin] >= 2)
	{
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* REPORTS --* /reports /ar /tr /sta /nao /st /post /dmr /ts --* MOVEMENT --* /up /dn /fd /bk /lt /rt /fly");
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* {00FF00}JUNIOR ADMIN{BFC0C2} --* /kick /ban /prison /freeze /unfreeze /slap /warn /admins /spec /levelones /sendtoid");
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* {00FF00}JUNIOR ADMIN{BFC0C2} --* /sendto /gotopveh /gotocar /jetpack /god /check /anetstats /ipcheck /ip /nrn /listguns");
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* {00FF00}JUNIOR ADMIN{BFC0C2} --* /setvw /setint /vehname /gethere /gotoid /hospital /goto /revive /bigears /skick /damagecheck");
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* {00FF00}JUNIOR ADMIN{BFC0C2} --* /requestevent /watch /dmwatchlist /mark(2) /n(un)mute /ad(un)mute /checkinv /lastshot");
		SendClientMessageEx(playerid, COLOR_GRAD2,"--* {00FF00}JUNIOR ADMIN{BFC0C2} --* /respawncar /watchlist /watchdogs /flag /viewflag /aflag /aviewflag /transferflag /deleteflag");
	}
	if (PlayerInfo[playerid][pAdmin] >= 3)
	{
		SendClientMessageEx(playerid, COLOR_GRAD3,"--* {00FF00}GENERAL ADMIN{CBCCCE} --* /noooc /nonewbie /fine /pfine /takeadminweapons /prisonaccount /entercar /getcar");
		SendClientMessageEx(playerid, COLOR_GRAD3,"--* {00FF00}GENERAL ADMIN{CBCCCE} --* /mole /setskin /countdown /release /forcedeath /rto(reset) /adviorce /metaldetector");
		SendClientMessageEx(playerid, COLOR_GRAD3,"--* {00FF00}GENERAL ADMIN{CBCCCE} --* /gotoco /leaders /wepreset /owarn /ofine /okills /respawncars /resetvw /aviewrivals");
		SendClientMessageEx(playerid, COLOR_GRAD3,"--* {00FF00}GENERAL ADMIN{CBCCCE} --* /reloadpvehicles /apark /aimpound /dmrmute /dmrlookup /dmtokens /createmetaldetector /metdets");
	}
	if (PlayerInfo[playerid][pAdmin] >= 4)
	{
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /asellbiz /fixvehall /givenos /blowup /setname /savechars /dmstrikereset /cnn /respawnvipcars");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /veh /fixveh /sethp /setarmor /givegun /givemoney /setmoney /setstat /setfightstyle /switchgroup /switchfam");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /fcreate /fdelete /adivorce /destroycar /destroycars /eventhelp /contracts /sprison /banip /unbanip");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /groupban /deletehit /setinsurance /cmotd /givelicense /adestroyplant /tl(edit/text/status/next)");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /gotolabel /createpvehicle /destroypvehicle /vto /vtoreset /admingatepw /gotogate /dedit /fedit");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /hnext /dmpnext /g(status/near/next/edit) /(goto/goin)door /(goto/goin)house /(create/delete/goto)point");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /hedit /dd(edit/next/name/pass) /dmpedit /dmpnear /gotomapicon /gangwarn /gangunban /setcapping /banaccount");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /removepvehicle /rcabuse /createmailbox /adestroymailbox /b(edit/next/name) /adestroycrate /gotocrate /srelease");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /(create/edit/delete)gaspump /(goto/goin)biz /dvcreate /dvstatus /dvrespawn /dvedit /dveditslot /dvplate /checkvouchers");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /checkvouchers /srelease /ovmute /ovunmute /restrictaccount /unrestrictaccount /wdwhitelist /resetexamine");
		SendClientMessageEx(playerid, COLOR_GRAD4,"--* {EE9A4D}SENIOR ADMIN{D8D8D8} --* /makeleader /groupunban /groupcsfunban /eventreset /asellhouse /editgrouptoy /amanagerivals /gotodpoint");
	}
	if (PlayerInfo[playerid][pAdmin] >= 1337)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* {FF0000}HEAD ADMIN{E3E3E3} --* /ha /setweather /pedit /giftall /removemoderator /vipgifts /buddyinvite /rewardplay /setarmorall /dynamicgift");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* {FF0000}HEAD ADMIN{E3E3E3} --* /permaban /setcolor /payday /clearallreports /amotd /motd /vipmotd /givetoken /giftgvip /dvrespawnall");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* {FF0000}HEAD ADMIN{E3E3E3} --* /vmute /vsuspend /togfireworks /togshopnotices /spg /snonrp /smg /skos /undercover /makewatchdog /watchlistadd");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* {FF0000}HEAD ADMIN{E3E3E3} --* /gifts /rcreset /audiourl /audiostopurl /editgrouptoy  /setsec /suspend /osuspend /ounsuspend");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* {FF0000}HEAD ADMIN{E3E3E3} --* /osetrmutes /rmute /clearall /specreset /pausespec /random /vrandom /giftreset /searchvipm /editpoint");
	}
	if (PlayerInfo[playerid][pAdmin] >= 1338)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* {FF5517}DIRECTOR ADMIN{E3E3E3} --* /admgivetien /admsettien /admgivecre /gnsetstatst");
	}
	if (PlayerInfo[playerid][pAdmin] >= 99999)
	{
		SendClientMessageEx(playerid, COLOR_GRAD6,"--* {298EFF}EXECUTIVE ADMIN{F0F0F0} --* /togspec /togtp /kickres /givecredits /setcredits /settotalcredits /setstpay /resetstpay /pmotd");
		SendClientMessageEx(playerid, COLOR_GRAD6,"--* {298EFF}EXECUTIVE ADMIN{F0F0F0} --* /setcode /togdynamicgift /dgedit /viewgiftbox /togpasscomplexity");
	}
	if (PlayerInfo[playerid][pHR] >= 2)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Human Resources --* /givesprize /setsec");
	}
	if(PlayerInfo[playerid][pAP] >= 2 || PlayerInfo[playerid][pHR] >= 3)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - AP/HR --* /makemoderator /makeadmin /rmute /suspend /osuspend /ounsuspend /osetrmutes");
	}
	if (PlayerInfo[playerid][pBanAppealer] >= 1) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Ban Appealer --* /unbanip /unban");
	if (PlayerInfo[playerid][pUndercover] >= 1)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Spec Ops --* /setmystat /setmyname /setmyhp /setmyarmour /sprison /sdm /swarn");
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Spec Ops --* /spg /snonrp /smg /skos");
	}
	if (PlayerInfo[playerid][pGangModerator] >= 1)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Gang Mod --* /switchfam /fedit /feditcolor /gangwarn /gangban /gangunban /fcreate /fdelete /twmenu /dvrespawn");
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Gang Mod --* /gtedit /gtstatus /gtnear /tagperm /tagedit /fires /destroyfire /destroyfires /gotofire /setfstrength");
	}
	if (PlayerInfo[playerid][pGangModerator] >= 2) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - DoGM --* /dvcreate /dvedit /dveditslot /dvplate");
	if (PlayerInfo[playerid][pShopTech] >= 1)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Shop Tech [1] --* /orders /adjustoid /shop(car(del)/house/tokens/exp/plate/laser/vest/firework/viptokens/boombox/object) /gedit /gnear");
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Shop Tech [1] --* /g(status/next) /hnext /goto(gate/door) /goinhouse /setvip /searchvipm /newgvip /renewgvip" );
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Shop Tech [1] --* /shopbusiness /shopbusinessname /brenewal");
	}
	if (PlayerInfo[playerid][pShopTech] >= 2)
	{
		SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Shop Tech [2] --* /shopcredits");
	}

	if(PlayerInfo[playerid][pBM] >= 1)
	{
		SendClientMessageEx(playerid, COLOR_GRAD3, "--* Special - Biz Mod --* /bedit /bname /bnext /bnear /gotobiz /goinbiz /creategaspump /editgaspump /deletegaspump /switchbiz");
		if(PlayerInfo[playerid][pBM] >= 2) SendClientMessageEx(playerid, COLOR_GRAD3, "--* Special - DoBM --* /asellbiz");
	}
	if (PlayerInfo[playerid][pShopTech] >= 3) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Head of Shop Tech --* /pmotd /ovmute /ovunmute /vipm /togdynamicgift /dgedit /viewgiftbox /freeweekend");
	if (PlayerInfo[playerid][pFactionModerator] >= 1) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Faction Mod --* /switchgroup /groupcsfban /groupban /groupkick /leaders /dvrespawn"), SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Faction Mod --* /fires /destroyfire /destroyfires /gotofire /setfstrength");
	if (PlayerInfo[playerid][pFactionModerator] >= 2) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - DoFM --* /dvcreate /dvedit /dveditslot /dvplate /editpoint");
	if (PlayerInfo[playerid][pPR] >= 1) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Special - Public Relations --* /catokens /cmotd /makeadvisor /takeadvisor");
	if (PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pASM] >= 1) // If they're not a senior admin and they're ASM level is 1 or higher.
	{
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /asellbiz /fixvehall /givenos /blowup /setname /savechars /dmstrikereset /cnn /respawnvipcars");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /veh /fixveh /sethp /setarmor /givegun /givemoney /setmoney /setstat /setfightstyle /switchgroup /switchfam");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /fcreate /fdelete /adivorce /destroycar /destroycars /eventhelp /contracts /sprison /banip /unbanip");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /groupban /deletehit /setinsurance /cmotd /givelicense /adestroyplant /tl(edit/text/status/next)");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /gotolabel /createpvehicle /destroypvehicle /vto /vtoreset /admingatepw /gotogate /dedit /fedit");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /hnext /dmpnext /g(status/near/next/edit) /(goto/goin)door /(goto/goin)house /(create/delete/goto)point");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /hedit /dd(edit/next/name/pass) /dmpedit /dmpnear /gotomapicon /gangwarn /gangunban /setcapping /banaccount");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /removepvehicle /rcabuse /createmailbox /adestroymailbox /b(edit/next/name) /adestroycrate /gotocrate /srelease");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /(create/edit/delete)gaspump /(goto/goin)biz /dvcreate /dvstatus /dvrespawn /dvedit /dveditslot /dvplate /checkvouchers");
		SendClientMessageEx(playerid, COLOR_GRAD5,"--* Special - ASM --* /checkvouchers /srelease /ovmute /ovunmute /restrictaccount /unrestrictaccount /wdwhitelist /resetexamine");
	}

	if (PlayerInfo[playerid][pHelper] >= 1) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Helper Advisor --* /advisors /ca /newbquestions /an /tn /spec");
	if (PlayerInfo[playerid][pHelper] >= 2) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Community Advisor --* /caduty /showrequests /accepthelp /finishhelp /findnewb /staff /kick /mjail /rhmute /nmute");
	if (PlayerInfo[playerid][pHelper] >= 3) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Senior Advisor --* /makeadvisor /takeadvisor /requestevent /newbspec");
	if (PlayerInfo[playerid][pHelper] == 4) SendClientMessageEx(playerid, COLOR_GRAD5, "--* Chief Advisor --* /advisormotd /nonewbie /newbspec");

	if ( PlayerInfo[playerid][pAdmin] >= 1 || PlayerInfo[playerid][pHelper] >= 1) SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
	return 1;
}

CMD:admnrn(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 1337 || PlayerInfo[playerid][pShopTech] >= 2)
	{
		new string[128], giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /nrn [player]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pAdmin] >= 2)return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the thuc hien lenh nay doi voi mot Admin!");
			// Can't believe this isn't fixed, happened to me like 2321231321 times - Akatony
			if((PlayerInfo[playerid][pSMod] == 1 || PlayerInfo[playerid][pWatchdog] >= 2) && (PlayerInfo[giveplayerid][pSMod] == 1 || PlayerInfo[giveplayerid][pWatchdog] >= 2)) return SendClientMessageEx(playerid, COLOR_GRAD2, "You cannot use this command on this person!");

			format(string, sizeof(string), "{AA3333}GTN-Warning{FFFF00}: %s (%d) da cho %s (%d) mot phieu doi ten mien phi.", GetPlayerNameEx(playerid), playerid, GetPlayerNameEx(giveplayerid), giveplayerid);
			format(szMiscArray, sizeof(szMiscArray), "%s (SQL ID: %d) da cho %s (SQL ID: %d) mot phieu doi ten mien phi.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid));
			Log("logs/nrnlog.log", szMiscArray);
			foreach(new i: Player)
			{
				if(PlayerInfo[i][pSMod] == 1 || PlayerInfo[i][pWatchdog] >= 2)
				{
					SendClientMessageEx(i, COLOR_YELLOW, string);
				}
			}
			ABroadCast( COLOR_YELLOW, string, 2);
			ShowPlayerDialogEx(giveplayerid, DIALOG_NAMECHANGE2, DIALOG_STYLE_INPUT, "Doi ten mien phi","Ban da nhan duoc mot phieu doi ten mien phi tu Admin.\nHay nhap mot ten moi phu hop voi nhan vat cua ban.", "Thay doi", "Huy" );
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:reloadlist(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
	{
	    ToyList2 = LoadModelSelectionMenu("ToyList.txt");
		CarList2 = LoadModelSelectionMenu("CarList.txt");
		PlaneList = LoadModelSelectionMenu("PlaneList.txt");
		BoatList = LoadModelSelectionMenu("BoatList.txt");
		SendClientMessageEx(playerid, COLOR_CYAN, "Lists have been reloaded.");
	}
	return 1;
}

CMD:mods(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
		new string[3024]; // This is what happens when there is 100 moderators online
		foreach(new i : Player)
		{
			if(PlayerInfo[i][pAdmin] == 1)
			{
				format(string, sizeof(string), "%s\nModerator %s (ID %i)", string, GetPlayerNameEx(i), i);
			}
		}
		ShowPlayerDialogEx(playerid, 0, DIALOG_STYLE_LIST, "Current Online Moderators", string, "Close", "");
	}
	else
		return SendClientMessageEx(playerid, COLOR_GRAD1, "You're not authorized to use this command!");
	return 1;
}

CMD:givesprize(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1338 && PlayerInfo[playerid][pHR] < 2) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh do.");
	new PName[MAX_PLAYER_NAME], choice[16], amount;
	if(sscanf(params, "s[24]s[16]d", PName, choice, amount))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "USAGE: /givesprize [playerid/PlayerName] [Choice] [Amount]");
		SendClientMessageEx(playerid, COLOR_GREY, "Choice: CarSlot | ToySlot | CarVoucher | GiftVoucher");
		SendClientMessageEx(playerid, COLOR_GREY, "Note: This command works offline and online.");
		return 1;
	}
	if(amount < 1) return SendClientMessage(playerid, COLOR_GREY, "Amount cannot go below 1");
	new string[128];
	new pID = ReturnUser(PName);
	if(IsPlayerConnected(pID))
	{
		if(strcmp(choice, "carslot", true) == 0)
		{
			PlayerInfo[pID][pVehicleSlot] += amount;
			LoadPlayerDisabledVehicles(pID);
			format(string, sizeof(string), "AdmCmd: %s da duoc cho %s %d free car slot(s).", GetPlayerNameEx(playerid), GetPlayerNameEx(pID), amount);
			ABroadCast(COLOR_LIGHTRED, string, 2);
			format(string, sizeof(string), "You received %d free car slot(s) from %s.",amount, GetPlayerNameEx(playerid));
			SendClientMessageEx(pID, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "Ban da cho %s %d car slot(s).", GetPlayerNameEx(pID), amount);
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "[Admin] %s(%d)(IP:%s) da duoc cho %s(%d)(IP:%s) %d free car slot(s).", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerIpEx(playerid), GetPlayerNameEx(pID), GetPlayerSQLId(pID), GetPlayerIpEx(pID), amount);
			Log("logs/adminrewards.log", string);
		}
		else if(strcmp(choice, "toyslot", true) == 0)
		{
			PlayerInfo[pID][pToySlot] += amount;
			format(string, sizeof(string), "AdmCmd: %s da duoc cho %s %d free toy slot(s).", GetPlayerNameEx(playerid), GetPlayerNameEx(pID), amount);
			ABroadCast(COLOR_LIGHTRED, string, 2);
			format(string, sizeof(string), "You received %d free toy slot(s) from %s.",amount, GetPlayerNameEx(playerid));
			SendClientMessageEx(pID, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "Ban da cho %s %d toy slot(s).", GetPlayerNameEx(pID), amount);
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "[Admin] %s(%d)(IP:%s) da duoc cho %s(%d)(IP:%s) %d free toy slot(s).", GetPlayerNameEx(playerid), GetPlayerIpEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(pID), GetPlayerSQLId(pID), GetPlayerIpEx(pID), amount);
			Log("logs/adminrewards.log", string);
		}
		else if(strcmp(choice, "carvoucher", true) == 0)
		{
			PlayerInfo[pID][pVehVoucher] += amount;
			format(string, sizeof(string), "AdmCmd: %s da duoc cho %s %d free car voucher(s).", GetPlayerNameEx(playerid), GetPlayerNameEx(pID), amount);
			ABroadCast(COLOR_LIGHTRED, string, 2);
			format(string, sizeof(string), "You received %d free car voucher(s) from %s.",amount, GetPlayerNameEx(playerid));
			SendClientMessageEx(pID, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "Ban da cho %s %d car voucher(s).", GetPlayerNameEx(pID), amount);
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "[Admin] %s(%d)(IP:%s) da duoc cho %s(%d)(IP:%s) %d free car voucher(s).", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerIpEx(playerid), GetPlayerNameEx(pID), GetPlayerSQLId(pID), GetPlayerIpEx(pID), amount);
			Log("logs/adminrewards.log", string);
		}
		else if(strcmp(choice, "giftvoucher", true) == 0)
		{
			PlayerInfo[pID][pGiftVoucher] += amount;
			format(string, sizeof(string), "AdmCmd: %s da duoc cho %s %d free gift reset voucher(s).", GetPlayerNameEx(playerid), GetPlayerNameEx(pID), amount);
			ABroadCast(COLOR_LIGHTRED, string, 2);
			format(string, sizeof(string), "You received %d free gift reset voucher(s) from %s.",amount, GetPlayerNameEx(playerid));
			SendClientMessageEx(pID, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "Ban da cho %s %d gift reset voucher(s).", GetPlayerNameEx(pID), amount);
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
			format(string, sizeof(string), "[Admin] %s(%d)(IP:%s) da duoc cho %s(%d)(IP:%s) %d free gift reset voucher(s).", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerIpEx(playerid), GetPlayerNameEx(pID),  GetPlayerSQLId(pID), GetPlayerIpEx(pID), amount);
			Log("logs/adminrewards.log", string);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Invalid choice.");
		}
	}
	else
	{
		new tmpName[24];
		if(strcmp(choice, "carslot", true) == 0)
		{
			mysql_escape_string(PName, tmpName);
			mysql_format(MainPipeline, string, sizeof(string), "UPDATE `accounts` SET `VehicleSlot` = `VehicleSlot`+%d WHERE `Username`='%s'",amount, tmpName);
			mysql_tquery(MainPipeline, string, "OnStaffPrize", "i", playerid);
			format(string, sizeof(string), "Attempting to give %s %d car slot(s)..", tmpName, amount);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			SetPVarString(playerid, "OnSPrizeType", "Car Slot(s)");
			SetPVarString(playerid, "OnSPrizeName", tmpName);
			SetPVarInt(playerid, "OnSPrizeAmount", amount);
		}
		else if(strcmp(choice, "toyslot", true) == 0)
		{
			mysql_escape_string(PName, tmpName);
			mysql_format(MainPipeline, string, sizeof(string), "UPDATE `accounts` SET `ToySlot` = `ToySlot`+%d WHERE `Username`='%s'",amount, tmpName);
			mysql_tquery(MainPipeline, string, "OnStaffPrize", "i", playerid);
			format(string, sizeof(string), "Attempting to give %s %d toy slot(s)..", tmpName, amount);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			SetPVarString(playerid, "OnSPrizeType", "Toy Slot(s)");
			SetPVarString(playerid, "OnSPrizeName", tmpName);
			SetPVarInt(playerid, "OnSPrizeAmount", amount);
		}
		else if(strcmp(choice, "carvoucher", true) == 0)
		{
			mysql_escape_string(PName, tmpName);
			mysql_format(MainPipeline, string, sizeof(string), "UPDATE `accounts` SET `VehVoucher` = `VehVoucher`+%d WHERE `Username`='%s'",amount, tmpName);
			mysql_tquery(MainPipeline, string, "OnStaffPrize", "i", playerid);
			format(string, sizeof(string), "Attempting to give %s %d car voucher(s)..", tmpName, amount);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			SetPVarString(playerid, "OnSPrizeType", "Car Voucher(s)");
			SetPVarString(playerid, "OnSPrizeName", tmpName);
			SetPVarInt(playerid, "OnSPrizeAmount", amount);
		}
		else if(strcmp(choice, "giftvoucher", true) == 0)
		{
			mysql_escape_string(PName, tmpName);
			mysql_format(MainPipeline, string, sizeof(string), "UPDATE `accounts` SET `GiftVoucher` = `GiftVoucher`+%d WHERE `Username`='%s'",amount, tmpName);
			mysql_tquery(MainPipeline, string, "OnStaffPrize", "i", playerid);
			format(string, sizeof(string), "Attempting to give %s %d gift reset voucher(s)..", tmpName, amount);
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			SetPVarString(playerid, "OnSPrizeType", "Gift Reset Voucher(s)");
			SetPVarString(playerid, "OnSPrizeName", tmpName);
			SetPVarInt(playerid, "OnSPrizeAmount", amount);
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Invalid choice.");
		}
	}
	return 1;
}

CMD:srelease(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], giveplayerid, reason[64];
		if(sscanf(params, "us[64]", giveplayerid, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /srelease [player] [Ly do]");

		if(IsPlayerConnected(giveplayerid))
		{
			if(PlayerInfo[giveplayerid][pJailTime] == 0)
			{
				SendClientMessageEx(playerid, COLOR_GRAD1, "This player is not currently in prison!");
			}
			else
			{
				format(string, sizeof(string), "AdmCmd: %s(%d) has been silent released from prison by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerNameEx(playerid), reason);
				Log("logs/admin.log", string);
				format(string, sizeof(string), "AdmCmd: %s has been silent released from prison by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
				ABroadCast(COLOR_LIGHTRED, string, 2);
				PhoneOnline[giveplayerid] = 0;
				PlayerInfo[giveplayerid][pWantedLevel] = 0;
				PlayerInfo[giveplayerid][pBeingSentenced] = 0;
				SetPlayerToTeamColor(giveplayerid);
				SetHealth(giveplayerid, 100);
				SetPlayerWantedLevel(giveplayerid, 0);
				PlayerInfo[giveplayerid][pJailTime] = 0;
				SetPlayerPos(giveplayerid, 1529.6,-1691.2,13.3);
				SetPlayerInterior(giveplayerid,0);
				PlayerInfo[giveplayerid][pInt] = 0;
				SetPlayerVirtualWorld(giveplayerid, 0);
				PlayerInfo[giveplayerid][pVW] = 0;
				strcpy(PlayerInfo[giveplayerid][pPrisonReason], "None", 128);
				SetPlayerToTeamColor(giveplayerid);
			}
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Invalid player specified.");
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

CMD:undercover(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
	{
		if(!GetPVarType(playerid, "Undercover"))
		{
			SetPVarInt(playerid, "Undercover", 1);
			SendClientMessageEx(playerid, COLOR_WHITE, "** You have went into undercover mode, your admin rank will no longer show up in /v or /fc.");
		}
		else
		{
			DeletePVar(playerid, "Undercover");
			SendClientMessageEx(playerid, COLOR_WHITE, "** You have went out of undercover mode, your admin rank will now show up in /v or /fc.");
		}
	}
	else return SendClientMessageEx(playerid, COLOR_GRAD1, "You're not authorized to use this command!");
	return true;
}


CMD:qs(playerid, params[]) return callcmd::quickstats(playerid, params);

CMD:quickstats(playerid, params[])
{
	new string[128], Float: health, Float: armor;
	GetHealth(playerid, health);
	GetArmour(playerid, armor);

	format(string, sizeof(string), "---===== ** Thong tin cua %s ** =====---", GetPlayerNameEx(playerid));
	SendClientMessageEx(playerid, COLOR_GREEN, string);
	format(string, sizeof(string), "** Cap do: %d | Tien ngan hang: %s | Tien mat: %s | Tan so Radio: %dkhz | Diem canh cao: %d", PlayerInfo[playerid][pLevel],
	number_format(PlayerInfo[playerid][pAccount]), number_format(PlayerInfo[playerid][pCash]), PlayerInfo[playerid][pRadioFreq], PlayerInfo[playerid][pWarns]);
	SendClientMessageEx(playerid, COLOR_GRAD1, string);
	format(string, sizeof(string), "** Mau: %d | Giap: %d", floatround(health), floatround(armor));
	SendClientMessageEx(playerid, COLOR_GRAD1, string);
	SendClientMessageEx(playerid, COLOR_GREEN, "--------------------------------------------------------------------------------------------------------------------");
	return 1;
}

CMD:fps(playerid, params[])
{
	if(!Bit_State(arrPlayerBits[playerid], bitFPS))
	{
		ShowFPSCounter(playerid);
		Bit_On(arrPlayerBits[playerid], bitFPS);
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban da BAT hien thi FPS Counter.");
	}
	else
	{
		HideFPSCounter(playerid);
		Bit_Off(arrPlayerBits[playerid], bitFPS);
		SendClientMessageEx(playerid, COLOR_WHITE, "Ban da TAT hien thi FPS Counter.");
	}
	return true;
}

CMD:akick(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pASM] < 1) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong co quyen de thuc hien lenh nay!");
	new giveplayerid, reason[64];
	if(sscanf(params, "us[64]", giveplayerid, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /akick [player] [Ly do]");
	if(!IsPlayerConnected(giveplayerid)) return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong truc tuyen.");
	new string[128];
	if(PlayerInfo[giveplayerid][pAdmin] > PlayerInfo[playerid][pAdmin])
	{
		format(string, sizeof(string), "AdmCmd: %s da bi KICK boi he thong, vi su dung /akick voi mot Admin cap cao hon.", GetPlayerNameEx(playerid));
		ABroadCast(COLOR_YELLOW,string,2);
		SetTimerEx("KickEx", 1000, 0, "i", playerid);
		return 1;
	}
	format(string, sizeof(string), "AdmCmd: %s(%d) (IP:%s) was admin kicked by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerSQLId(giveplayerid), GetPlayerIpEx(giveplayerid), GetPlayerNameEx(playerid), reason);
	Log("logs/kick.log", string);
	format(string, sizeof(string), "AdmCmd: %s was admin kicked by %s, reason: %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(playerid), reason);
	ABroadCast(COLOR_LIGHTRED, string, 2);
	StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
	format(string, sizeof(string), "AdmCmd: %s da bi kick boi Admin, ly do: %s", GetPlayerNameEx(giveplayerid), reason);
	SendClientMessageEx(giveplayerid, COLOR_LIGHTRED, string);
	SetTimerEx("KickEx", 1000, 0, "i", giveplayerid);
	return 1;
}

CMD:togpasscomplexity(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 99999) return 1;
	new string[128];
	if(PassComplexCheck)
	{
		PassComplexCheck = 0;
		format(string, sizeof(string), "AdmCmd: %s has disabled password complexity checks.", GetPlayerNameEx(playerid));
		ABroadCast(COLOR_LIGHTRED, string, 2);
		SendClientMessageEx(playerid, COLOR_GRAD2, "You have disabled password complexity checks.");
	}
	else
	{
		PassComplexCheck = 1;
		format(string, sizeof(string), "AdmCmd: %s has enabled password complexity checks.", GetPlayerNameEx(playerid));
		ABroadCast(COLOR_LIGHTRED, string, 2);
		SendClientMessageEx(playerid, COLOR_GRAD2, "You have enabled password complexity checks.");
	}
	Misc_Save();
	return 1;
}

CMD:coordinators(playerid, params[])
{
	if(PlayerInfo[playerid][pSEC] < 1 && PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You're not authorized to use this command!");
	new string[128];
	SendClientMessageEx(playerid, COLOR_GRAD1, "Coordinators Online:");
	foreach(new i : Player)
	{
		if(PlayerInfo[i][pSEC] > 0)
		{
			if(PlayerInfo[i][pSEC] == 1) format(string, sizeof(string), "Regular Coordinator %s (ID %i)", GetPlayerNameEx(i), i);
			else if(PlayerInfo[i][pSEC] == 2) format(string, sizeof(string), "Senior Coordinator %s (ID %i)", GetPlayerNameEx(i), i);
			else if(PlayerInfo[i][pSEC] == 3) format(string, sizeof(string), "Assistant Chairman %s (ID %i)", GetPlayerNameEx(i), i);
			else if(PlayerInfo[i][pSEC] == 4) format(string, sizeof(string), "Deputy Chairman %s (ID %i)", GetPlayerNameEx(i), i);
			else if(PlayerInfo[i][pSEC] == 5) format(string, sizeof(string), "Chairman %s (ID %i)", GetPlayerNameEx(i), i);
			else format(string, sizeof(string), "Undefined Rank %s (ID %i)", GetPlayerNameEx(i), i);
			SendClientMessageEx(playerid, COLOR_GRAD2, string);
		}
	}
	return 1;
}

CMD:makesec(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 4 && PlayerInfo[playerid][pPR] < 1 && PlayerInfo[playerid][pSEC] < 3 && PlayerInfo[playerid][pASM] < 1) return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	new ivalue, iTargetID;
	if(sscanf(params, "ui", iTargetID, ivalue)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /makesec [player] [level]");
	if(!IsPlayerConnected(iTargetID)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Invalid player specified.");
	if(PlayerInfo[iTargetID][pSEC] == ivalue) return SendClientMessageEx(playerid, COLOR_GREY, "This person already has this SEC coordinator level.");
	new szRank[128];
	switch(ivalue) {
		case 0: format(szRank, sizeof(szRank), "AdmCmd: %s(%d) has removed %s's(%d) coordinator rank.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID));
		case 1: format(szRank, sizeof(szRank), "AdmCmd: %s(%d) has made %s(%d) a Regular Coordinator.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID));
		case 2: format(szRank, sizeof(szRank), "AdmCmd: %s(%d) has made %s(%d) a Senior Coordinator.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID));
		case 3: format(szRank, sizeof(szRank), "AdmCmd: %s(%d) has made %s(%d) a Assistant Chairman.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID));
		case 4: format(szRank, sizeof(szRank), "AdmCmd: %s(%d) has made %s(%d) a Deputy Chairman.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID));
		case 5: format(szRank, sizeof(szRank), "AdmCmd: %s(%d) has made %s(%d) the Chairman.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID));
		default: format(szRank, sizeof(szRank), "AdmCmd: %s(%d) has made %s(%d) an undefined level(%d) SEC coordinator.", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerNameEx(iTargetID), GetPlayerSQLId(iTargetID), ivalue);
	}
	PlayerInfo[iTargetID][pSEC] = ivalue;
	Log("logs/makesec.log", szRank);

	switch(ivalue) {
		case 0: format(szRank, sizeof(szRank), "Your coordinator rank has been removed by %s.", GetPlayerNameEx(playerid));
		case 1: format(szRank, sizeof(szRank), "You have been made a Regular Coordinator by %s.", GetPlayerNameEx(playerid));
		case 2: format(szRank, sizeof(szRank), "You have been made a Senior Coordinator by %s.", GetPlayerNameEx(playerid));
		case 3: format(szRank, sizeof(szRank), "You have been made a Assistant Chairman by %s.", GetPlayerNameEx(playerid));
		case 4: format(szRank, sizeof(szRank), "You have been made a Deputy Chairman by %s.", GetPlayerNameEx(playerid));
		case 5: format(szRank, sizeof(szRank), "You have been made the Chairman by %s.", GetPlayerNameEx(playerid));
		default: format(szRank, sizeof(szRank), "You have been made an undefined level SEC coordinator by %s.", GetPlayerNameEx(playerid));
	}
	SendClientMessageEx(iTargetID, COLOR_LIGHTBLUE, szRank);

	switch(ivalue) {
		case 0: format(szRank, sizeof(szRank), "You have removed %s's coordinator rank.", GetPlayerNameEx(iTargetID));
		case 1: format(szRank, sizeof(szRank), "You have made %s a Regular Coordinator.", GetPlayerNameEx(iTargetID));
		case 2: format(szRank, sizeof(szRank), "You have made %s a Senior Coordinator.", GetPlayerNameEx(iTargetID));
		case 3: format(szRank, sizeof(szRank), "You have made %s a Assistant Chairman.", GetPlayerNameEx(iTargetID));
		case 4: format(szRank, sizeof(szRank), "You have made %s a Deputy Chairman.", GetPlayerNameEx(iTargetID));
		case 5: format(szRank, sizeof(szRank), "You have made %s the Chairman.", GetPlayerNameEx(iTargetID));
		default: format(szRank, sizeof(szRank), "You have made %s an undefined level coordinator.", GetPlayerNameEx(iTargetID));
	}
	SendClientMessageEx(playerid, COLOR_LIGHTBLUE, szRank);
	return 1;
}

CMD:sechelp(playerid, params[])
{
	if(PlayerInfo[playerid][pSEC] >= 1)
	{
		SendClientMessageEx(playerid, COLOR_GRAD2, "--* SEC --* /eventstaff /sec /togsec /coordinators");
		if(PlayerInfo[playerid][pSEC] >= 2) SendClientMessageEx(playerid, COLOR_GRAD2, "--* SEC --* /requestevent /eventhelp");
		if(PlayerInfo[playerid][pSEC] >= 3) SendClientMessageEx(playerid, COLOR_GRAD2, "--* SEC --* /makesec");
	}
	return 1;
}

CMD:togsec(playerid, params[])
{
	if(PlayerInfo[playerid][pSEC] < 1 && PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You're not authorized to use this command!");
	if(GetPVarInt(playerid, "SECChat") == 1)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "** You have disabled SEC chat.");
		return SetPVarInt(playerid, "SECChat", 0);
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "** You have enabled SEC chat.");
		return SetPVarInt(playerid, "SECChat", 1);
	}
}

CMD:sec(playerid, params[])
{
	if(PlayerInfo[playerid][pJailTime] && strfind(PlayerInfo[playerid][pPrisonReason], "[OOC]", true) != -1) return SendClientMessageEx(playerid, COLOR_GREY, "OOC prisoners are restricted to only speak in /b");
	if(PlayerInfo[playerid][pSEC] < 1 && PlayerInfo[playerid][pAdmin] < 2) return SendClientMessageEx(playerid, COLOR_GRAD1, "You're not authorized to use this command!");
	if(GetPVarInt(playerid, "SECChat") == 0) return SendClientMessageEx(playerid, COLOR_GREY, "You have SEC chat disabled - /togsec to enable it.");
	if(isnull(params)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /sec [text]");
	new szMessage[128];
	if(PlayerInfo[playerid][pSEC] == 1) format(szMessage, sizeof(szMessage), "* Regular Coordinator %s: %s", GetPlayerNameEx(playerid), params);
	else if(PlayerInfo[playerid][pSEC] == 2) format(szMessage, sizeof(szMessage), "* Senior Coordinator %s: %s", GetPlayerNameEx(playerid), params);
	else if(PlayerInfo[playerid][pSEC] == 3) format(szMessage, sizeof(szMessage), "* Assistant Chairman %s: %s", GetPlayerNameEx(playerid), params);
	else if(PlayerInfo[playerid][pSEC] == 4) format(szMessage, sizeof(szMessage), "* Deputy Chairman %s: %s", GetPlayerNameEx(playerid), params);
	else if(PlayerInfo[playerid][pSEC] >= 5) format(szMessage, sizeof(szMessage), "* Chairman %s: %s", GetPlayerNameEx(playerid), params);
	else if(PlayerInfo[playerid][pAdmin] >= 2) format(szMessage, sizeof(szMessage), "* %s %s: %s", GetAdminRankName(PlayerInfo[playerid][pAdmin]), GetPlayerNameEx(playerid), params);
	else format(szMessage, sizeof(szMessage), "* Undefined Rank %s: %s", GetPlayerNameEx(playerid), params);
	foreach(new i : Player)
	{
		if((PlayerInfo[i][pSEC] >= 1 || PlayerInfo[i][pAdmin] >= 2) && GetPVarInt(i, "SECChat") == 1)
		{
			SendClientMessageEx(i, 0x00FA9AFF, szMessage);
		}
	}
	return 1;
}

CMD:specreset(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 1337)
    {
		SendClientMessageEx(playerid, COLOR_GRAD2, "Resetting the special timer must be done through FTP, delete all the files in /stokens/ folder");
	}
	return 1;
}

CMD:pausespec(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 1337)
    {
    	if(SpecTimer == 1)
     	{
     		SpecTimer = 0;
      		new sString[41 + MAX_PLAYER_NAME];
			format( sString, sizeof( sString ), "AdmCmd: %s has paused the special timer.", GetPlayerNameEx(playerid));
			ABroadCast( COLOR_LIGHTRED, sString, 1338 );
		}
		else
		{
  			SpecTimer = 1;
	    	new sString[41 + MAX_PLAYER_NAME];
    		format( sString, sizeof( sString ), "AdmCmd: %s has enabled the special timer.", GetPlayerNameEx(playerid));
			ABroadCast( COLOR_LIGHTRED, sString, 1338);
		}
	}
	return 1;
}

CMD:checkwdcount(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1 || PlayerInfo[playerid][pWatchdog] >= 3)
	{
		new string[128], adminname[MAX_PLAYER_NAME], tdate[11];
		if(sscanf(params, "s[24]s[11]", adminname, tdate)) return SendClientMessageEx(playerid, COLOR_WHITE, "USAGE: /checkwdcount [watchdog name] [date (YYYY-MM-DD)]");
		new giveplayerid = ReturnUser(adminname);
		if(IsPlayerConnected(giveplayerid) && PlayerInfo[giveplayerid][pWatchdog] >= 1)
		{
			mysql_format(MainPipeline, string, sizeof(string), "SELECT SUM(count) FROM `tokens_wd` WHERE `playerid` = %d AND `date` = '%s'", GetPlayerSQLId(giveplayerid), tdate);
			mysql_tquery(MainPipeline, string, "QueryCheckCountFinish", "issi", playerid, GetPlayerNameEx(giveplayerid), tdate, 4);
			mysql_format(MainPipeline, string, sizeof(string), "SELECT `count`, `hour` FROM `tokens_wd` WHERE `playerid` = %d AND `date` = '%s' ORDER BY `hour` ASC", GetPlayerSQLId(giveplayerid), tdate);
			mysql_tquery(MainPipeline, string, "QueryCheckCountFinish", "issi", playerid, GetPlayerNameEx(giveplayerid), tdate, 5);
		}
		else
		{
			new tmpName[MAX_PLAYER_NAME];
			mysql_escape_string(adminname, tmpName);
			mysql_format(MainPipeline, string, sizeof(string), "SELECT `id`, `Username` FROM `accounts` WHERE `Username` = '%s'", tmpName);
			mysql_tquery(MainPipeline, string, "QueryUsernameCheck", "isi", playerid, tdate, 2);
		}
    }
    return 1;
}

/*CMD:edit(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 4)
	{
		SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong duoc phep su dung lenh do.");
		return 1;
	}

	new string[128], choice[32], amount;
	if(sscanf(params, "s[32]d", choice, amount))
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "|__________________ Edit __________________|");
		SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /edit [name] [amount]");
		SendClientMessageEx(playerid, COLOR_GREY, "Available names: Level, Price");
		SendClientMessageEx(playerid, COLOR_WHITE, "|____________________________________________|");
		return 1;
	}

	for(new i = 0; i < sizeof(HouseInfo); i++)
	{
		if (IsPlayerInRangeOfPoint(playerid,3,HouseInfo[i][hExteriorX], HouseInfo[i][hExteriorY], HouseInfo[i][hExteriorZ]) && GetPlayerInterior(playerid) == HouseInfo[i][hExtIW] && GetPlayerVirtualWorld(playerid) == HouseInfo[i][hExtVW])
		{
			format(string, sizeof(string), "House: %d", i);
			SendClientMessageEx(playerid, COLOR_GRAD2, string);
			if(amount > 0)
			{
				if(strcmp(choice,"level",true) == 0)
				{
					HouseInfo[i][hLevel] = amount;
				}
				else if(strcmp(choice,"price",true) == 0)
				{
					HouseInfo[i][hValue] = amount;
				}
			}
			ReloadHouseText(i);
		}
	}
	return 1;
}*/

CMD:aimpound(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 3) {
		new iVehTowed, szMessage[128], veh = -1;
		if(sscanf(params, "d", iVehTowed)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /aimpound [carid]");
		if(!GetVehicleModel(iVehTowed)) return SendClientMessageEx(playerid, COLOR_GREY, "The vehicle your trying to impound has been desynced and therefore cannot be impounded.");
		foreach(new i: Player) {
			if((veh = GetPlayerVehicle(i, iVehTowed)) != -1) {
				--PlayerCars;
				VehicleSpawned[i]--;
				PlayerVehicleInfo[i][veh][pvImpounded] = 1;
				PlayerVehicleInfo[i][veh][pvSpawned] = 0;
				PlayerVehicleInfo[i][veh][pvFuel] = VehicleFuel[iVehTowed];
				GetVehicleHealth(PlayerVehicleInfo[i][veh][pvId], PlayerVehicleInfo[i][veh][pvHealth]);
				DetachTrailerFromVehicle(iVehTowed);
				DestroyVehicle(iVehTowed);
				if(IsValidDynamicArea(iVehEnterAreaID[iVehTowed])) DestroyDynamicArea(iVehEnterAreaID[iVehTowed]);
				PlayerVehicleInfo[i][veh][pvId] = INVALID_PLAYER_VEHICLE_ID;
				g_mysql_SaveVehicle(playerid, veh);

				format(szMessage, sizeof(szMessage),"* You have impounded %s's %s.", GetPlayerNameEx(i), VehicleName[PlayerVehicleInfo[i][veh][pvModelId] - 400]);
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, szMessage);

				format(szMessage, sizeof(szMessage), "Your %s has been impounded by an admin. You may release it at the DMV in Dillimore.", VehicleName[PlayerVehicleInfo[i][veh][pvModelId] - 400]);
				SendClientMessageEx(i, COLOR_LIGHTBLUE, szMessage);
				break;
			}
		}
		if((veh = IsDynamicCrateVehicle(iVehTowed)) != -1) {
			if(ValidGroup(CrateVehicle[veh][cvGroupID])) {
				new Float:vHealth;
				GetVehicleHealth(CrateVehicle[veh][cvSpawnID], vHealth);
				CrateVehicle[veh][cvHealth] = vHealth;
				CrateVehicle[veh][cvFuel] = VehicleFuel[CrateVehicle[veh][cvSpawnID]];
				CrateVehicle[veh][cvImpound] = 1;
				DetachTrailerFromVehicle(iVehTowed);
				if(CreateCount(veh) > 0) AnnounceRespawn(CrateVehicle[veh][cvGroupID], "impounded by an admin", veh, CreateCount(veh));
				DestroyVehicle(CrateVehicle[veh][cvSpawnID]);
				CrateVehicle[veh][cvSpawned] = 0;
				CrateVehicle[veh][cvSpawnID] = INVALID_VEHICLE_ID;
				CrateVehCheck(veh); // Ensure we check for crates!
				SaveCrateVehicle(veh);

				format(szMessage, sizeof(szMessage), "* Your %s has been impounded by an admin you can recover it from your garage. (( /cvstorage ))", VehicleName[CrateVehicle[veh][cvModel] - 400]);
				foreach(new i: Player) {
					if(PlayerInfo[i][pLeader] == CrateVehicle[veh][cvGroupID]) {
						ChatTrafficProcess(i, arrGroupData[CrateVehicle[veh][cvGroupID]][g_hRadioColour] * 256 + 255, szMessage, 12);
					}
				}
				format(szMessage, sizeof(szMessage),"* You have impounded %s's %s.", arrGroupData[CrateVehicle[veh][cvGroupID]][g_szGroupName], VehicleName[CrateVehicle[veh][cvModel] - 400]);
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, szMessage);
			}
			else veh = -1;
		}
		if(veh == -1) {
			SendClientMessageEx(playerid, COLOR_GRAD1, "This vehicle can't be impounded it's been respawned instead.");
			SetVehicleToRespawn(iVehTowed);
		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh do.");
	return 1;
}

CMD:stats(playerid, params[]) {
	if(gPlayerLogged{playerid} != 0) ShowStats(playerid, playerid);
	return 1;
}

CMD:toimuondoipasss(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pWatchdog] >= 3) {
	if (gPlayerLogged{playerid})
		{
			ShowPlayerDialogEx(playerid, DIALOG_CHANGEPASS, DIALOG_STYLE_INPUT, "Doi mat khau", "Hay nhap mat khau moi!", "Doi", "Thoat" );
		}
	}
	else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	return 1;
}


CMD:myangle(playerid, params[])
{
    new myString[128], Float:a;
    GetPlayerFacingAngle(playerid, a);

    format(myString, sizeof(myString), "Huong nhin cua ban la: %0.2f", a);
    SendClientMessageEx(playerid, 0xFFFFFFFF, myString);

    new myString2[128], Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);

    format(myString2, sizeof(myString), "Toa do cua ban dang dung: %f, %f, %f", x, y, z);
    SendClientMessageEx(playerid, 0xFFFFFFFF, myString2);
    return 1;
}

CMD:kcp(playerid, params[]) {
	return callcmd::killcheckpoint(playerid, params);
}

CMD:killcheckpoint(playerid, params[]) {

	Player_KillCheckPoint(playerid);
	return 1;
}

CMD:flipcoin(playerid, params[]) {

    new
		szMessage[124];

    switch(random(200)) {
        case 0 .. 98: format(szMessage, sizeof(szMessage), "* %s flips a coin that lands on heads.", GetPlayerNameEx(playerid));
		case 100 .. 198: format(szMessage, sizeof(szMessage), "* %s flips a coin that lands on tails.", GetPlayerNameEx(playerid));
		default: callcmd::flipcoin(playerid, params);
    }
    return ProxDetector(5.0, playerid, szMessage, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
}

CMD:dice(playerid, params[])
{
    new string[84];
   	if(PlayerInfo[playerid][pLevel] < 5)
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban can phai dat cap do 5 moi co the su dung xuc xac.");
		return 1;
	}
    if (PlayerInfo[playerid][pDice] >= 1)
	{
	    PlayerInfo[playerid][pDice] -= 1;
        format(string, sizeof(string), "{FF8000}** {C2A2DA}%s da tung xuc xac ra %d.", GetPlayerNameEx(playerid),(random(6)+1));
        ProxDetector(9.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
    }
    else
	{
        SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong co xuc xac.");
        return 1;
    }
    return 1;
}

CMD:randomnumber(playerid, params[])
{
	new iLower, iUpper;
	if(sscanf(params, "dd", iLower, iUpper)) return SendClientMessage(playerid, COLOR_GRAD2, "USAGE: /randomnumber [minimum] [maximum]");

	if(iLower < 2 || iUpper > 999999) return SendClientMessage(playerid, COLOR_GRAD2, "Yeu cua minimum it nhat la 2 va maximum nhieu nhat la 999,999.");

	if((iUpper - iLower) < 2) return SendClientMessage(playerid, COLOR_GRAD2, "There must be a difference of at least 2 between the min and max values.");

	new val = randomEx(iLower, iUpper + 1);

	format(szMiscArray, sizeof(szMiscArray), "{FF8000}** {C2A2DA}%s da chon so ngau nhien la - %s.", GetPlayerNameEx(playerid), number_format(val));
    ProxDetector(9.0, playerid, szMiscArray, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
	return 1;
}

CMD:randnum(playerid, params[]) return callcmd::randomnumber(playerid, params);

CMD:card(playerid, params[]) {

    new iDeck = Random(0, 3),
    	iNumber = Random (0, 12),
    	szTemp[6],
    	szTemp2[10];

 	szMiscArray[0] = 0;

    switch(iDeck) {
    	case 0: szTemp2 = "hearts";
		case 1: szTemp2 = "clubs";
		case 2: szTemp2 = "spades";
		case 3: szTemp2 = "diamonds";
	}

	switch(iNumber) {
		case 0: szTemp = "Ace";
		case 1 .. 9: {
			valstr(szTemp, iNumber+1);
			strcat(szMiscArray, szTemp);
		}
		case 10: szTemp = "jack";
		case 11: szTemp = "queen";
		case 12: szTemp = "king";
	}

	format(szMiscArray, sizeof(szMiscArray), "* %s has pulled the card %s of %s.", GetPlayerNameEx(playerid), szTemp, szTemp2);
	ProxDetector(5.0, playerid, szMiscArray, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE, 1);

	return 1;
}

CMD:giveeventtokens(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1 || PlayerInfo[playerid][pPR])
	{
		new giveplayerid, amount;

		if (sscanf(params, "ui", giveplayerid, amount)) return SendClientMessageEx(playerid, COLOR_WHITE, "Usage: /giveeventtokens [player] [amount]");
		if (amount == 0) return SendClientMessageEx(playerid, COLOR_GRAD2, "  Amount cannot be 0!");
		szMiscArray[0] = 0;
		if (amount < 0)
		{
			if(-amount > PlayerInfo[giveplayerid][pEventTokens]) return SendClientMessageEx(playerid, -1, "The amount stated is more than they have to take.");
			format(szMiscArray, sizeof(szMiscArray), "You have taken %i of %s's tokens away.", -amount, GetPlayerNameEx(giveplayerid));
		}
		else
		{
			format(szMiscArray, sizeof(szMiscArray), "Ban da cho %s %i tokens.", GetPlayerNameEx(giveplayerid), amount);
		}
		SendClientMessageEx(playerid, COLOR_WHITE, szMiscArray);
		PlayerInfo[giveplayerid][pEventTokens] += amount;
	}
	return 1;
}

CMD:reloadmapping(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
	{
		SendClientMessageToAllEx(COLOR_LIGHTBLUE, "* The mapping filterscripts are currently being reloaded!");
		for(new i, Float: fPlayerPos[3]; i < MAX_PLAYERS; i++)
		{
			GetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			Player_StreamPrep(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2], FREEZE_TIME);
		}
		SendRconCommand("reloadfs mapping/Gang");
		SendRconCommand("reloadfs mapping/PlayerExteriors");
		SendRconCommand("reloadfs mapping/PlayerInteriors");
		SendRconCommand("reloadfs mapping/Server");
	}
	return 1;
}

CMD:resetpgifts(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 1337) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay!");

	new query[256];
    format(szMiscArray, sizeof(szMiscArray), "{AA3333}GTN-Warning{FFFF00}: %s reset everyones received gift to 0. (Login Event Gifts)", GetPlayerNameEx(playerid));
    ABroadCast(COLOR_YELLOW, szMiscArray, 2);

	foreach(new i: Player) {
		PlayerInfo[i][pReceivedPrize] = 0;
	}
	mysql_format(MainPipeline, query, sizeof(query), "UPDATE `accounts` SET `ReceivedPrize` = 0 WHERE `ReceivedPrize` != 0");
	mysql_tquery(MainPipeline, query, "OnQueryFinish", "i", SENDDATA_THREAD);
	SendClientMessageEx(playerid, COLOR_CYAN, "You have reset everyones received gift they'll be able to get gifts upon login.");
	format(szMiscArray, sizeof(szMiscArray), "%s has reset everyones received gift to 0. (Login Event Gifts)", GetPlayerNameEx(playerid));
	Log("logs/admin.log", szMiscArray);
	return 1;
}
