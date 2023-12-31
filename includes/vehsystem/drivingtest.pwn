/*

	 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
	| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
	| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
	| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
	| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
	| $$\  $$$| $$  \ $$        | $$  \ $$| $$
	| $$ \  $$|  $$$$$$/        | $$  | $$| $$
	|__/  \__/ \______/         |__/  |__/|__/

				Driving License System

				GTA.Network, LLC
	(created by GTA.Network Development Team)
	
	Developers:
		(*) Connor
	
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

/*
    MODULE DESCRIPTION:
   		This module will control the driving school (LV), and any other's created afterwards.
        Module created by Connor.
*/
#include <YSI\y_hooks>
#define DIALOG_DSVEH_CAUTION 6941
#define DIALOG_DSVEH_RULES 6942
#define DIALOG_DSVEH_TESTBASE 6943
#define CHECKPOINT_DRIVINGSCHOOL 2539

forward checkTestVehicle(playerid);

new Float:dsPoints[][3] = {
{829.8356,-609.6153,15.9689}, // 50 MPH
{834.2700,-548.9444,15.8153},
{781.6683,-527.6374,15.8153},
{722.0259,-527.9050,15.8117},
{679.1986,-566.1868,15.8153},
{679.1959,-673.4142,15.8153},
{683.9590,-797.7986,35.4485},
{741.2899,-891.5577,42.8651},
{792.9636,-1030.4653,24.8114}, // 100 MPH
{737.3622,-1060.4653,22.8377}, 
{646.8804,-1192.7010,17.6902},
{625.2151,-1301.7292,14.2485},
{624.0712,-1398.9515,12.9462},
{624.7911,-1523.6074,14.5749},
{627.0731,-1657.8997,15.3599},
{584.9104,-1720.6461,13.1373},
{420.5506,-1700.2816,9.1901},
{216.9152,-1632.4012,13.4200},
{72.1308,-1525.2570,4.4657},
{-97.6246,-1489.8728,2.3231}, // 50 MPH
{-147.4238,-1315.8544,2.3231},
{-107.0146,-1157.5494,1.6611},
{-81.8646,-1045.9396,21.1786},
{-113.1582,-971.5482,24.0782},
{-43.8502,-833.1515,11.9268},
{29.7384,-663.5918,3.1997},
{130.4584,-684.7977,6.0668},
{220.9880,-623.3987,27.2719},
{303.0262,-568.5374,40.2530},
{446.1580,-598.4182,36.5259},
{594.7116,-647.3687,21.3924},
{669.3761,-664.3604,15.8585},
{684.0832,-543.3890,15.8132},
{722.6440,-532.4922,15.8075},
{789.2615,-546.0828,15.8167},
{829.8356,-609.6153,15.9689}
};

//player_get_speed
// PVARS: pDTest (Is the player testing), pTestMarker (The marker the player is on),  pTestZone (Roads, Highways), pTestVeh (The vehicle the player is testing with)
new pFindDrive[MAX_PLAYERS];
new pDriveTimer[MAX_PLAYERS];

DrivingTestFinish(playerid)
{
	new pTestVeh = GetPVarInt(playerid, "PTestVeh");
	DestroyVehicle(pTestVeh);
	DeletePVar(playerid, "pTestVeh");
	DeletePVar(playerid, "pDTest");
	DeletePVar(playerid, "pTestMarker");
	DisablePlayerCheckpoint(playerid);
	PlayerInfo[playerid][pCarLic] = gettime() + (86400*80);
	SendClientMessageEx(playerid, COLOR_GREEN, "Ban da hoan thanh khoa hoc lai xe va lay duoc bang lai!");
	return 1;
}

DrivingSchoolSpeedMeter(playerid, Float:speed)
{
	new 
		pTestMarker = GetPVarInt(playerid, "pTestMarker"),
		maxspeed = 0; 

	/*if(pTestMarker < 20 || pTestMarker >= 29)
	{
		if(speed > 50)
		{
			SetPlayerCheckpoint(playerid, 814.0655,-600.5410,16.0355, 4.0);
			SendClientMessageEx(playerid, COLOR_GREY, "You have exceeded the resdiental speed limit of 50MPH, you have failed the test.");
			SetPVarInt(playerid, "pDTest", 2);
		}
	}
	else if(speed >= 100)
	{
		SetPlayerCheckpoint(playerid, 814.0655,-600.5410,16.0355, 4.0);
		SendClientMessageEx(playerid, COLOR_GREY, "You have exceeded the freeway speed limit of 100MPH, you have failed the test.");
		SetPVarInt(playerid, "pDTest", 2);
	}*/

	switch(pTestMarker) {
		case 0 .. 7: maxspeed = 50;
		case 8 .. 19: maxspeed = 75;
		case 20 .. 36: maxspeed = 50; 
	}

	if(speed > (maxspeed + 5) && GetPVarInt(playerid, "pDTest") != 2) {
		format(szMiscArray, sizeof(szMiscArray), "Ban da vuot qua gioi han toc do toi da la %d MPH.", maxspeed);
		SendClientMessageEx(playerid, COLOR_GREY, szMiscArray);
		SetPlayerCheckpoint(playerid, 814.0655,-600.5410,16.0355, 4.0);
		SetPVarInt(playerid, "pDTest", 2);
	}
	return 1;
}

hook OnGameModeInit()
{
	//CreateDynamicPickup(1239, 1, 1173.0698,1348.4688,10.9219);
	//CreateDynamic3DTextLabel("/drivingtest to begin the driving test.", 0xFF0000FF, 1173.0698,1348.4688,10.9219,4.0);
	return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(GetPVarType(playerid, "pDTest") > 0)
	{
		new pTestVeh = GetPVarInt(playerid, "pTestVeh");
		if(oldstate == PLAYER_STATE_DRIVER && newstate == PLAYER_STATE_ONFOOT)
		{
			pDriveTimer[playerid] = SetTimerEx("checkTestVehicle", 60000, false, "i", playerid);
			SendClientMessageEx(playerid, COLOR_YELLOW, "Ban co 60 giay de quay lai xe cua minh hoac no se bi bien mat.");
		}
		else if(oldstate == PLAYER_STATE_ONFOOT && newstate == PLAYER_STATE_DRIVER && GetPlayerVehicleID(playerid) == pTestVeh)
		{
			KillTimer(pDriveTimer[playerid]);
		}
	}
	else if(oldstate == PLAYER_STATE_ONFOOT && newstate == PLAYER_STATE_DRIVER)
	{
		if(PlayerInfo[playerid][pCarLic] < gettime())
		{
			SendClientMessageEx(playerid, COLOR_YELLOW, "Canh bao: Giay phep lai xe cua ban da het han. Di den DMV de lam moi no.");
		}
	}
	return 1;
}

public checkTestVehicle(playerid)
{
	if(GetPVarType(playerid, "pDTest") > 0)
	{
		if(GetPlayerVehicleID(playerid) > 0) return 1;
		new pTestVeh = GetPVarInt(playerid, "PTestVeh");
		DestroyVehicle(pTestVeh);
		DeletePVar(playerid, "pTestVeh");
		DeletePVar(playerid, "pDTest");
		DeletePVar(playerid, "pTestMarker");
		DisablePlayerCheckpoint(playerid);
		SendClientMessageEx(playerid, COLOR_YELLOW, "SMS: Ban da rot bai thi lai xe. - Nguoi gui: Nguoi huong dan (619)");
	}
	return 1;
}

hook OnPlayerDisconnect(playerid)
{
	if(GetPVarType(playerid, "PTestVeh"))
	{
		new pTestVeh = GetPVarInt(playerid, "PTestVeh");
		DestroyVehicle(pTestVeh);
	}
	pFindDrive[playerid] = 0;
	pDriveTimer[playerid] = 0;
}

hook OnPlayerEnterCheckpoint(playerid){
	if(pFindDrive[playerid] == 1)
	{
		pFindDrive[playerid] = 0;
		DisablePlayerCheckpoint(playerid);
		SendClientMessageEx(playerid, COLOR_GREY, "Ban da den the driving school!");
	}
	else if(gPlayerCheckpointStatus[playerid] == CHECKPOINT_DRIVINGSCHOOL)
	{
		new pDTest = GetPVarInt(playerid, "pDTest");
		if(pDTest == 1)
		{
			new pTestMarker = GetPVarInt(playerid, "pTestMarker");
			pTestMarker += 1;
			if(pTestMarker >= sizeof(dsPoints)) return DrivingTestFinish(playerid);
			SetPlayerCheckpoint(playerid, dsPoints[pTestMarker][0], dsPoints[pTestMarker][1], dsPoints[pTestMarker][2], 4.0);
			SetPVarInt(playerid, "pTestMarker", pTestMarker);
		}
		else if(pDTest == 2)
		{
			new pTestVeh = GetPVarInt(playerid, "PTestVeh");
			DestroyVehicle(pTestVeh);
			DeletePVar(playerid, "pTestVeh");
			DeletePVar(playerid, "pDTest");
			DeletePVar(playerid, "pTestMarker");
			DisablePlayerCheckpoint(playerid);
		}
	}
	return 1;
}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {

	if(arrAntiCheat[playerid][ac_iFlags][AC_DIALOGSPOOFING] > 0) return 1;
	switch(dialogid)
	{
		case DIALOG_DSVEH_CAUTION:
		{
			if(response)
			{
				//1138.3353,1375.6553,10.4057
				ShowPlayerDialogEx(playerid, 
				DIALOG_DSVEH_RULES,
				DIALOG_STYLE_MSGBOX,
				"Luat le", 
				"{ffffff}Luat le dieu khien phuong tien can phai tuan theo ({ff2e00}QUAN TRONG{ffffff}).\n1. Khi tham gia giao thong bat buoc di ben lan duong ben phai.\n2. Ban can tuan thu theo gioi han toc do moi luc.\n3. Can phai that day an toan hoac doi mu bao hiem.\n4. Den xe phai bat vao buoi toi.\n5. Neu gap tai nan giao thong, ban can phai goi 911.\n6. Ban can phai dau xe dung vi tri.",
				"Tiep tuc",
				"Dong");
			}
			else return SendClientMessageEx(playerid, COLOR_GREY, "Ban da huy thi bang lai.");
		}
		case DIALOG_DSVEH_RULES:
		{
			if(response)
			{
				ShowPlayerDialogEx(playerid, 
				DIALOG_DSVEH_TESTBASE,
				DIALOG_STYLE_LIST,
				"{D64040}Neu ban bi tai nan giao thong, ban se xu ly nhu the nao?",
				"Chay luon khong quan tam.\nDieu khien xe va tiep tuc di.\nBao cao ngay cho canh sat va cong ty bao hiem.", "Chon", "Huy");
			}
		}
		case DIALOG_DSVEH_TESTBASE:
		{
			if(response)
			{
				if(listitem == 2)
				{
					ShowPlayerDialogEx(playerid, 
					DIALOG_DSVEH_TESTBASE+1,
					DIALOG_STYLE_LIST,
					"{D64040}Ban co duoc phep lai xe o lan duong ben TRAI khong?",
					"Duoc\nKhong", "Chon", "Huy");
				}
				else
				{
					return SendClientMessageEx(playerid, COLOR_GREY, "Sai cau tra loi! Hay thu lai...");
				}
			}
		}
		case DIALOG_DSVEH_TESTBASE+1:
		{
			if(response)
			{
				if(listitem == 1)
				{
					ShowPlayerDialogEx(playerid, 
					DIALOG_DSVEH_TESTBASE+2,
					DIALOG_STYLE_LIST,
					"{D64040}Neu toc do gioi han la 50 MPH, ban phai di chuyen....",
					"650 MPH\n120 MPH\n100 MPH\n50 MPH\n300 MPH\n430 MPH", "Chon", "Huy");
				}
				else
				{
					return SendClientMessageEx(playerid, COLOR_GREY, "Sai cau tra loi! Hay thu lai...");
				}
			}
		}
		case DIALOG_DSVEH_TESTBASE+2:
		{
			if(response)
			{
				if(listitem == 3)
				{
					ShowPlayerDialogEx(playerid, 
					DIALOG_DSVEH_TESTBASE+3,
					DIALOG_STYLE_LIST,
					"{D64040}Ban phai luon that day an toan va doi mu bao hiem?.",
					"Dung\nSai", "Chon", "Huy");
				}
				else
				{
					return SendClientMessageEx(playerid, COLOR_GREY, "Sai cau tra loi! Hay thu lai...");
				}
			}
		}
		case DIALOG_DSVEH_TESTBASE+3:
		{
			if(response)
			{
				if(listitem == 0)
				{
					
					SetPVarInt(playerid, "AntiTPCheck", gettime()+3);
					SetPlayerVirtualWorld(playerid, 0);
					SetPlayerInterior(playerid, 0);
					SetPVarInt(playerid, "PTestVeh", CreateVehicle(404, 814.0655,-600.5410,16.0355, 90.0, 3, 3, -1));
					new pTestVeh = GetPVarInt(playerid, "PTestVeh");
					VehicleFuel[pTestVeh] = 100.0;
					IsPlayerEntering{playerid} = true;
					DangLenXe[playerid] = pTestVeh;
					PutPlayerInVehicle(playerid, pTestVeh, 0);
					SendClientMessageEx(playerid, COLOR_WHITE, "Nguoi huong dan: Hay giu toc do phuong tien khong qua 50 MPH (/xemtocdo). Bay gio ban co the bat dau!");
					if(!PlayerInfo[playerid][pSpeedo])
					{
						SendClientMessageEx(playerid, COLOR_WHITE, "Dong ho toc do da duoc bat cho ban. (/xemtocdo)");
						PlayerInfo[playerid][pSpeedo] = 1;
						ShowVehicleHUDForPlayer(playerid);
					}
					SetPVarInt(playerid, "PDTest", 1);
					DisablePlayerCheckpoint(playerid);
					SetPlayerCheckpoint(playerid, dsPoints[0][0], dsPoints[0][1], dsPoints[0][2], 4.0);
					SetPVarInt(playerid, "pTestMarker", 0);
					gPlayerCheckpointStatus[playerid] = CHECKPOINT_DRIVINGSCHOOL;
				}
				else
				{
					return SendClientMessageEx(playerid, COLOR_GREY, "Sai cau tra loi! Hay thu lai...");
				}
			}
		}
		
		
	}
	return 0;
}
