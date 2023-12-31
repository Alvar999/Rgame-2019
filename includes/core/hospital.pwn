/*

	 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
	| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
	| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
	| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
	| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
	| $$\  $$$| $$  \ $$        | $$  \ $$| $$
	| $$ \  $$|  $$$$$$/        | $$  | $$| $$
	|__/  \__/ \______/         |__/  |__/|__/

						Hospital System

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

#include <YSI\y_hooks>

new InsurancePoint[2];

#define DIALOG_HOSPITAL_MENU    7000
#define MESSAGE_INSUFFICIENT_FUNDS  "Ban khong co du tien."

hook OnGameModeInit() {

	InsurancePoint[0] = CreateDynamicSphere(2383.0728,2662.0520,8001.1479, 4.0); // regular hospital interior
	InsurancePoint[1] = CreateDynamicSphere(564.54, 1437.02, 6000.47, 4.0); // doc hospital

	CreateDynamic3DTextLabel("Bao hiem\nHay nhan phim ~k~~CONVERSATION_YES~ de mua bao hiem", COLOR_YELLOW, 2383.0728,2662.0520,8001.1479, 10); // Main Hospital Interior
	CreateDynamic3DTextLabel("Bao hiem\nHay nhan phim ~k~~CONVERSATION_YES~ de mua bao hiem", COLOR_YELLOW, 564.54, 1437.02, 6000.47, 10); // Doc Hospital Interior
	CreateDynamicPickup(1240, 1, 2383.0728,2662.0520,8001.1479, -1); // Main hospital interior pickup
	CreateDynamicPickup(1240, 1, 564.54, 1437.02, 6000.47, -1); // Doc hospital interior pickup

	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {

	if(newkeys & KEY_YES && (IsPlayerInDynamicArea(playerid, InsurancePoint[0]) || IsPlayerInDynamicArea(playerid, InsurancePoint[1]))) {
		format(szMiscArray, sizeof(szMiscArray), "Level 1 Healthcare\t\t$1000\nLevel 2 Healthcare\t\t$2000\nLevel 3 Healthcare\t\t$3000\nLevel 4 Healthcare\t\t$4000\nMua bao hiem");
		ShowPlayerDialogEx(playerid, DIALOG_HOSPITAL_MENU, DIALOG_STYLE_LIST, "Hospital Menu", szMiscArray, "Chon", "Huy");
	}

	return 1;
}

DeliverPlayerToHospital(playerid, iHospital)
{
	TogglePlayerControllable(playerid, 0);
	SetHealth(playerid, 0.5);
	SetPlayerInterior(playerid, 1);
	PlayerInfo[playerid][pInt] = 1;
	PlayerInfo[playerid][pHospital] = 1;
	PlayerInfo[playerid][pDuty] = 0;
	PlayerCuffed[playerid] = 0;
	DeletePVar(playerid, "PlayerCuffed");
	DeletePVar(playerid, "IsFrozen");
	DeletePVar(playerid, "renderaid");
	PlayerCuffedTime[playerid] = 0;
	if(PlayerInfo[playerid][pFitness] >= 6) PlayerInfo[playerid][pFitness] -= 6;
	else PlayerInfo[playerid][pFitness] = 0;
	if(GetPVarInt(playerid, "_HospitalBeingDelivered") != 1)
	{
		ResetPlayerWeaponsEx(playerid);
		
		PlayerInfo[playerid][pHasCuff] = 0;
		PlayerInfo[playerid][pHasTazer] = 0;
	} 
	new string[128];
	
	new index = GetFreeHospitalBed(iHospital);
	arrHospitalBedData[iHospital][bBedOccupied][index] = true;
	
	SetTimerEx("Hospital_StreamIn", FREEZE_TIME, false, "iii", playerid, iHospital, index);
	
	if(iHospital == HOSPITAL_DOCJAIL)
	{
		Streamer_UpdateEx(playerid, DocHospitalSpawns[index][0], DocHospitalSpawns[index][1], DocHospitalSpawns[index][2]);
		SetPlayerPos(playerid, DocHospitalSpawns[index][0], DocHospitalSpawns[index][1], DocHospitalSpawns[index][2]);
		SetPlayerFacingAngle(playerid, DocHospitalSpawns[index][3]);
		SetPlayerVirtualWorld(playerid, 0);
		PlayerInfo[playerid][pVW] = 0;
	}
	else 
	{
		Streamer_UpdateEx(playerid, HospitalSpawns[index][0], HospitalSpawns[index][1], HospitalSpawns[index][2]);
		SetPlayerPos(playerid, HospitalSpawns[index][0], HospitalSpawns[index][1], HospitalSpawns[index][2]);
		SetPlayerFacingAngle(playerid, 180);
		SetPlayerVirtualWorld(playerid, iHospital);
		PlayerInfo[playerid][pVW] = iHospital;
	}
	SetPVarInt(playerid, "_SpawningAtHospital", 1);
	
	if(GetPVarInt(playerid, "_HospitalBeingDelivered") == 1) // if player is delivered
	{
		arrHospitalBedData[iHospital][iCountDown][index] = 10;
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da duoc dua vao benh vien bang xe cuu thuong.");
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Bay gio ban se duoc bac si dieu tri vet thuong cua ban tai benh vien.");
	}
	else if(PlayerInfo[playerid][pWantedLevel] >= 1) // if player wanted
	{
		arrHospitalBedData[iHospital][iCountDown][index] = 60;
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban dang bi truy na va benh vien da thong bao voi canh sat.");
		format(string, sizeof(string), "Benh vien %s da bao cao doi tuong truy na %s vua o trong benh vien.", GetHospitalName(iHospital), GetPlayerNameEx(playerid));
		if(PlayerInfo[playerid][pSHealth] > 0) {SetArmour(playerid, PlayerInfo[playerid][pSHealth]);}
		SendGroupMessage(GROUP_TYPE_LEA, DEPTRADIO, string);
	}
	else if(PlayerInfo[playerid][pDonateRank] >= 4)
	{
		arrHospitalBedData[iHospital][iCountDown][index] = 5;
		SetPVarInt(playerid, "HealthCareActive", 1);
		if(PlayerInfo[playerid][pSHealth] > 0) {SetArmour(playerid, PlayerInfo[playerid][pSHealth]);}
	}
	else if(PlayerInfo[playerid][pHealthCare] > 0) // if player has credit insurance
	{
		if(PlayerInfo[playerid][pHealthCare] == 1)
		{
			if(PlayerInfo[playerid][pCredits] >= ShopItems[18][sItemPrice])
			{
				arrHospitalBedData[iHospital][iCountDown][index] = 40;
				GivePlayerCredits(playerid, -ShopItems[18][sItemPrice], 1);
				printf("Price18: %d", 1);
				SetPVarInt(playerid, "HealthCareActive", 1);

				AmountSold[18]++;
				AmountMade[18] += ShopItems[18][sItemPrice];
				new szQuery[128];
				mysql_format(MainPipeline, szQuery, sizeof(szQuery), "UPDATE `sales` SET `TotalSold18` = '%d', `AmountMade18` = '%d' WHERE `Month` > NOW() - INTERVAL 1 MONTH", AmountSold[18], AmountMade[18]);
				mysql_tquery(MainPipeline, szQuery, "OnQueryFinish", "i", SENDDATA_THREAD);

				format(string, sizeof(string), "[HC] [User: %s(%i)][IP: %s][Credits: %s][Adv][Price: %s]", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerIpEx(playerid), number_format(PlayerInfo[playerid][pCredits]), number_format(ShopItems[18][sItemPrice]));
				Log("logs/credits.log", string), print(string);
			}
			else
			{
				arrHospitalBedData[iHospital][iCountDown][index] = 40;
				DeletePVar(playerid, "HealthCareActive");
				SendClientMessageEx(playerid, COLOR_CYAN, "Ban khong du credit de kich hoat cham soc binh thuong.");
			}
		}
		else if(PlayerInfo[playerid][pHealthCare] == 2)
		{
			if(PlayerInfo[playerid][pCredits] >= ShopItems[19][sItemPrice])
			{
				arrHospitalBedData[iHospital][iCountDown][index] = 5;
				GivePlayerCredits(playerid, -ShopItems[19][sItemPrice], 1);
				printf("Price19: %d", 2);
				SetPVarInt(playerid, "HealthCareActive", 1);
				AmountSold[19]++;
				AmountMade[19] += ShopItems[19][sItemPrice];
				new szQuery[128];
				mysql_format(MainPipeline, szQuery, sizeof(szQuery), "UPDATE `sales` SET `TotalSold19` = '%d', `AmountMade19` = '%d' WHERE `Month` > NOW() - INTERVAL 1 MONTH", AmountSold[19], AmountMade[19]);
				mysql_tquery(MainPipeline, szQuery, "OnQueryFinish", "i", SENDDATA_THREAD);

				format(string, sizeof(string), "[AHC] [User: %s(%i)][IP: %s][Credits: %s][Super][Price: %s]", GetPlayerNameEx(playerid), GetPlayerSQLId(playerid), GetPlayerIpEx(playerid), number_format(PlayerInfo[playerid][pCredits]), number_format(ShopItems[19][sItemPrice]));
				Log("logs/credits.log", string), print(string);
				SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban da bat tinh nang cham soc binh thuong, ban se co ket qua hoi phuc nhanh hon.");
			}
			else
			{
				arrHospitalBedData[iHospital][iCountDown][index] = 40;
				DeletePVar(playerid, "HealthCareActive");
				SendClientMessageEx(playerid, COLOR_CYAN, "Ban khong du credit de kich hoat cham soc dac biet.");
			}
		}
		if(PlayerInfo[playerid][pSHealth] > 0) {SetArmour(playerid, PlayerInfo[playerid][pSHealth]);}
	}
	else // if player has regular insurance
	{
		arrHospitalBedData[iHospital][iCountDown][index] = 40;
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "Ban muon hoi phuc nhanh? Mo thiet lap chuc nang /togglehealthcare.");
		if(PlayerInfo[playerid][pSHealth] > 0) {SetArmour(playerid, PlayerInfo[playerid][pSHealth]);}
	}
	format(string, sizeof(string), "Ra vien sau: ~r~%d ~w~giay", arrHospitalBedData[iHospital][iCountDown][index]);
	PlayerTextDrawHide(playerid, HospTime[playerid]);
	PlayerTextDrawSetString(playerid, HospTime[playerid], string);
	PlayerTextDrawShow(playerid, HospTime[playerid]);
	arrHospitalBedData[iHospital][iTimer][index] = SetTimerEx("ReleaseFromHospital", 1000, false, "iii", playerid, iHospital, index);
	for(new i = 0; i < MAX_PLAYERTOYS; i++)
	{
		if(PlayerToyInfo[playerid][i][ptAutoAttach] == -1 || PlayerToyInfo[playerid][i][ptAutoAttach] == GetPlayerSkin(playerid)) AttachToy(playerid, i, 0);
	}
	return 1;
}

forward Hospital_StreamIn(playerid, iHospital, index);
public Hospital_StreamIn(playerid, iHospital, index)
{
	if(iHospital == HOSPITAL_DOCJAIL)
	{
		SetPlayerPos(playerid, DocHospitalSpawns[index][0], DocHospitalSpawns[index][1], DocHospitalSpawns[index][2]);
		SetPlayerFacingAngle(playerid, DocHospitalSpawns[index][3]);
	}
	else 
	{
		SetPlayerPos(playerid, HospitalSpawns[index][0], HospitalSpawns[index][1], HospitalSpawns[index][2]);
		SetPlayerFacingAngle(playerid, 180);
	}
	
	TogglePlayerControllable(playerid, 1);
	ApplyAnimation(playerid, "SWAT", "gnstwall_injurd", 4.0, 1, 0, 0, 0, 0, 1);
	
	return 1;
}

GetFreeHospitalBed(iHospital)
{
	new iFree;
	
	if(iHospital == HOSPITAL_DOCJAIL)
	{
		for(new i = 0; i < MAX_DOCHOSPITALBEDS; i++)
		{
			if(arrHospitalBedData[iHospital][bBedOccupied][i] == false)
			{
				iFree = i;
				break;
			}
		}
	}
	else
	{
		for(new i = 0; i < MAX_HOSPITALBEDS; i++)
		{
			if(arrHospitalBedData[iHospital][bBedOccupied][i] == false)
			{
				iFree = i;
				break;
			}
		}
	}
	return iFree;
}

GetHospitalName(iHospital)
{
	new string[32];
	switch(iHospital)
	{
		case HOSPITAL_ALLSAINTS: string = "All Saints";
		case HOSPITAL_COUNTYGEN: string = "County General";
		case HOSPITAL_SANFIERRO: string = "San Fierro";
		case HOSPITAL_REDCOUNTY: string = "Red County";
		case HOSPITAL_ELQUEBRADOS: string = "El Quebrados";
		case HOSPITAL_LASVENTURAS: string = "Las Venturas";
		case HOSPITAL_FORTCARSON: string = "Fort Carson";
		case HOSPITAL_ANGELPINE: string = "Angel Pine";
		case HOSPITAL_FLINT: string = "Flint County";
		case HOSPITAL_DEMORGAN: string = "DeMorgan";
		case HOSPITAL_DOCJAIL: string = "DOC Jail";
		case HOSPITAL_LSVIP: string = "LS VIP";
		case HOSPITAL_SFVIP: string = "SF VIP";
		case HOSPITAL_LVVIP: string = "LV VIP";
		case HOSPITAL_HOMECARE: string = "Homecare";
		case HOSPITAL_FAMED: string = "Famed Lounge";
		case HOSPITAL_TRFAMED: string = "TR Famed Lounge";
		case HOSPITAL_PALOMINO: string = "Palomino Creek";
	}
	
	return string;
}

forward ReleaseFromHospital(playerid, iHospital, iBed);
public ReleaseFromHospital(playerid, iHospital, iBed)
{
	if(!IsPlayerConnected(playerid))
	{
		arrHospitalBedData[iHospital][bBedOccupied][iBed] = false;
		return 1;
	}
	if(GetPVarInt(playerid, "_SpawningAtHospital") == 2)
	{
		arrHospitalBedData[iHospital][iCountDown][iBed] = 0;
	}
	new string[128];
	
	if(--arrHospitalBedData[iHospital][iCountDown][iBed] <= 0)
	{
		ApplyAnimation(playerid, "SUNBATHE", "Lay_Bac_out", 4.0, 0, 1, 1, 0, 0, 1);
		DeletePVar(playerid, "_SpawningAtHospital");
		DeletePVar(playerid, "_HospitalBeingDelivered");
		arrHospitalBedData[iHospital][bBedOccupied][iBed] = false;
		KillTimer(arrHospitalBedData[iHospital][iTimer][iBed]);
		PlayerTextDrawHide(playerid, HospTime[playerid]);
		
		if(TakePlayerMoney(playerid, HospitalSpawnInfo[iHospital][0])) {
			if(PlayerInfo[playerid][pInsurance] == HOSPITAL_HOMECARE && PlayerInfo[playerid][pWantedLevel] < 1) // if they have homecare, set them at home for free
			{
				// set them to their house entrance location....
				// using house spawn system from previous insurance system
				ShowPlayerDialogEx(playerid, SPAWNATHOME_CHOICE, DIALOG_STYLE_LIST, "Chon nha cua ban", "Ngoi nha (1)\nNgoi nha (2)\nNgoi nha (3)", "Thiet lap", "");

				format(string, sizeof(string), "BENH VIEN: Ban da phai chi tra $%d cho benh vien va dua ban ve nha.", HospitalSpawnInfo[iHospital][0]);
				SendClientMessageEx(playerid, COLOR_RED, string);
			}
			else
			{
				format(string, sizeof(string), "BENH VIEN: Ban da phai chi tra $%d cho phi benh vien %s", HospitalSpawnInfo[iHospital][0], GetHospitalName(iHospital));
				SendClientMessageEx(playerid, COLOR_RED, string);
			}
			
			PlayerInfo[playerid][pHospital] = 0;

			switch(iHospital) {
				case 3, 4, 7, 8, 16: {
					TRTax += HospitalSpawnInfo[iHospital][1]; // NE Hospitals
					format(string, sizeof(string), "%s has paid their medical fees, adding $%d to the vault.", GetPlayerNameEx(playerid), HospitalSpawnInfo[iHospital][0]);
					GroupPayLog(8, string);
				}
				default: {
					Tax += (HospitalSpawnInfo[iHospital][1] / 2); // SA Hospitals
					arrGroupData[9][g_iBudget] += (HospitalSpawnInfo[iHospital][1] / 2);
					format(string, sizeof(string), "%s has paid their medical fees, adding $%d to the vault.", GetPlayerNameEx(playerid), (HospitalSpawnInfo[iHospital][0] / 2));
					GroupPayLog(9, string);
				}
			}
		} else {
			if(PlayerInfo[playerid][pInsurance] == HOSPITAL_HOMECARE && PlayerInfo[playerid][pWantedLevel] < 1) // if they have homecare, set them at home for free
			{
				format(string, sizeof(string), "Y te: Ban da phai tra phi $%d cho hoa don benh vien va phi cho ban ve nha.", HospitalSpawnInfo[iHospital][0]);
				SendClientMessageEx(playerid, COLOR_RED, string);
			}
			else
			{
				format(string, sizeof(string), "Y te: Ban da phai tra phi $%d cho hoa don benh vien %s", HospitalSpawnInfo[iHospital][0], GetHospitalName(iHospital));
				SendClientMessageEx(playerid, COLOR_RED, string);
			}
			PlayerInfo[playerid][pHospital] = 0;
			GivePlayerCash(playerid, -HospitalSpawnInfo[iHospital][0]);
		}		
		if(!GetPVarType(playerid, "HealthCareActive")) SetHealth(playerid, 50);
		else SetHealth(playerid, 100), DeletePVar(playerid, "HealthCareActive");
		PlayerInfo[playerid][pHydration] = 100;
		if(PlayerInfo[playerid][pDonateRank] >= 3)
		{
			SetHealth(playerid, 100.0);
		}
		DeletePVar(playerid, "VIPSpawn");
		arrHospitalBedData[iHospital][iCountDown][iBed] = 0;
	}
	else
	{
		if(iHospital != HOSPITAL_DOCJAIL)
		{
			if(!IsPlayerInRangeOfPoint(playerid, 7.0, HospitalSpawns[iBed][0], HospitalSpawns[iBed][1], HospitalSpawns[iBed][2]))
			{
				TogglePlayerControllable(playerid, 0);
				SetTimerEx("Hospital_StreamIn", FREEZE_TIME, false, "iii", playerid, iHospital, iBed);
				Streamer_UpdateEx(playerid, HospitalSpawns[iBed][0], HospitalSpawns[iBed][1], HospitalSpawns[iBed][2]);
				SetPlayerPos(playerid, HospitalSpawns[iBed][0], HospitalSpawns[iBed][1], HospitalSpawns[iBed][2]);
				SetPlayerFacingAngle(playerid, 180);
				SetPlayerInterior(playerid, 1);
				PlayerInfo[playerid][pInt] = 1;
				SetPlayerVirtualWorld(playerid, iHospital);
				PlayerInfo[playerid][pVW] = iHospital;
			}
		}
		format(string, sizeof(string), "Ra vien sau: ~r~%d ~w~giay", arrHospitalBedData[iHospital][iCountDown][iBed]);
		PlayerTextDrawHide(playerid, HospTime[playerid]);
		PlayerTextDrawSetString(playerid, HospTime[playerid], string);
		PlayerTextDrawShow(playerid, HospTime[playerid]);
		new Float:curhealth;
		GetHealth(playerid, curhealth);
		SetHealth(playerid, curhealth+1);
		if(curhealth > 100) SetHealth(playerid, 100);
		arrHospitalBedData[iHospital][iTimer][iBed] = SetTimerEx("ReleaseFromHospital", 1000, false, "iii", playerid, iHospital, iBed);
	}
	return 1;
}

IsAtDeliverPatientPoint(playerid)
{
	for(new i = 0; i < MAX_DELIVERY_POINTS; i++)
	{
		if(IsPlayerInRangeOfPoint(playerid, 5.0, HospitalDeliveryPoints[i][0], HospitalDeliveryPoints[i][1], HospitalDeliveryPoints[i][2])) return true;
	}
	
	return 0;
}

GetClosestDeliverPatientPoint(playerid)
{
	new iPoint;
	for(new i = 0; i < MAX_DELIVERY_POINTS; i++)
	{
		if(IsPlayerInRangeOfPoint(playerid, 5.0, HospitalDeliveryPoints[i][0], HospitalDeliveryPoints[i][1], HospitalDeliveryPoints[i][2]))
		{
			iPoint = i;
			break;
		}
	}
	return iPoint;
}

ReturnDeliveryPoint(iDPID)
{
	// if you're going to add a new hospital delivery point, add the corresponding hospital ID to here.
	
	new iPoint;
	
	switch(iDPID)
	{
		case 0: iPoint = HOSPITAL_ALLSAINTS;
		case 1: iPoint = HOSPITAL_ALLSAINTS;
		case 2: iPoint = HOSPITAL_COUNTYGEN;
		case 3: iPoint = HOSPITAL_COUNTYGEN;
		case 4: iPoint = HOSPITAL_REDCOUNTY;
		case 5: iPoint = HOSPITAL_REDCOUNTY;
		case 6: iPoint = HOSPITAL_FORTCARSON;
		case 7: iPoint = HOSPITAL_FORTCARSON;
		case 8: iPoint = HOSPITAL_SANFIERRO;
		case 9: iPoint = HOSPITAL_SANFIERRO;
		case 10: iPoint = HOSPITAL_ELQUEBRADOS;
		case 11: iPoint = HOSPITAL_FLINT;
		case 12: iPoint = HOSPITAL_DEMORGAN;
		case 13: iPoint = HOSPITAL_LASVENTURAS;
		case 14: iPoint = HOSPITAL_ANGELPINE;
		case 15: iPoint = HOSPITAL_DOCJAIL;
		case 16: iPoint = HOSPITAL_DEMORGAN;
		case 17: iPoint = HOSPITAL_DOCJAIL;
		case 18: iPoint = HOSPITAL_PALOMINO;
		case 19: iPoint = HOSPITAL_PALOMINO; 
		case 20: iPoint = HOSPITAL_LASVENTURAS;
		case 21: iPoint = HOSPITAL_FLINT;
	}
	
	return iPoint;
}

ReturnDeliveryPointNation(point)
{
	// if you're going to add a new hospital delivery point, add the corresponding hospital ID to here if it is a New Robada hospital.
	// 0 = San Andreas
	// 1 = New Robada
	
	new nation;
	switch(point)
	{
		case 13, 18 .. 20: nation = 1;
		default: nation = 0;
	}
	return nation;
}

CMD:setinsurance(playerid, params[])
{
	if (PlayerInfo[playerid][pAdmin] >= 4 || PlayerInfo[playerid][pASM] >= 1)
	{
		new string[128], giveplayerid, insurance;
		if(sscanf(params, "ud", giveplayerid, insurance))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /setinsurance [player] [insurance]");
			format(string, sizeof(string), "Available Insurances: 0 - %d", MAX_HOSPITALS-1);
			SendClientMessageEx(playerid, COLOR_GRAD2, string);
			return 1;
		}

		if(insurance >= 0 && insurance <= MAX_HOSPITALS-1)
		{
			format(string, sizeof(string), " Your insurance has been changed to %s.", GetHospitalName(insurance));
			SendClientMessageEx(giveplayerid,COLOR_YELLOW,string);
			format(string, sizeof(string), " You have changed %s's insurance to %s.", GetPlayerNameEx(giveplayerid), GetHospitalName(insurance));
			SendClientMessageEx(playerid,COLOR_YELLOW,string);
			PlayerInfo[giveplayerid][pInsurance] = insurance;
			return 1;
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong duoc phep su dung lenh do.");
	}
	return 1;
}

HospHeal(playerid)
{
	if(IsPlayerInRangeOfPoint(playerid, 6.0, 2383.0728,2662.0520,8001.1479) || IsPlayerInRangeOfPoint(playerid, 6.0, 564.54, 1437.02, 6000.47))//2103.3252,2824.2102,-16.1672
	{
		if(GetPVarType(playerid, "STD"))
		{
			DeletePVar(playerid, "STD");
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "* Ban khong con nhiem benh nua vi su giup do cua benh vien!");
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "   Ket qua kham suc khoe cua ban da tro nen tot hon!");
			return 1;
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GREY, "   Ban khong dung tai a Hospital!");
	}
	return 1;
}

CMD:buyinsurance(playerid, params[])
{
	new string[128],
		iHospitalVW = GetPlayerVirtualWorld(playerid);
		
	if(IsPlayerInRangeOfPoint(playerid, 2.00, 2383.0728,2662.0520,8001.1479)) // all regular hospital points
	{
		if(iHospitalVW >= MAX_HOSPITALS) return SendClientMessageEx(playerid, -1, "No hospital has been setup for this Virtual World!");
		if(PlayerInfo[playerid][pInsurance] == iHospitalVW) return SendClientMessageEx(playerid, -1, "Ban da co bao hiem o benh vien nay!");
		if(GetPlayerCash(playerid) < HospitalSpawnInfo[iHospitalVW][1]) return SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
		PlayerInfo[playerid][pInsurance] = iHospitalVW;
		format(string, sizeof(string), "BENH VIEN: Ban da mua bao hiem benh vien %s voi gia $%d.", GetHospitalName(iHospitalVW), HospitalSpawnInfo[iHospitalVW][1]);
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
		GivePlayerCash(playerid, - HospitalSpawnInfo[iHospitalVW][1]);
		switch(iHospitalVW) {

			case 3, 17: TRTax += HospitalSpawnInfo[iHospitalVW][1]; // NE Hospitals
			default: Tax += HospitalSpawnInfo[iHospitalVW][1]; // SA Hospitals
		}
		format(string, sizeof(string), "%s da mua bao hiem y te voi gia $%d", GetPlayerNameEx(playerid), HospitalSpawnInfo[iHospitalVW][0]);
		GroupPayLog(9, string);
	}
	else if(IsPlayerInRangeOfPoint(playerid, 2.00, 564.54, 1437.02, 6000.47)) // doc hospital purchase point
	{
		if(GetPlayerCash(playerid) < HospitalSpawnInfo[HOSPITAL_DOCJAIL][1]) return SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
		PlayerInfo[playerid][pInsurance] = HOSPITAL_DOCJAIL;
		format(string, sizeof(string), "BENH VIEN: Ban da mua bao hiem benh vien %s voi gia $%d.", GetHospitalName(HOSPITAL_DOCJAIL), HospitalSpawnInfo[HOSPITAL_DOCJAIL][1]);
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
		GivePlayerCash(playerid, - HospitalSpawnInfo[HOSPITAL_DOCJAIL][1]);
		Tax += HospitalSpawnInfo[HOSPITAL_DOCJAIL][1];
		format(string, sizeof(string), "%s da mua bao hiem y te voi gia $%d", GetPlayerNameEx(playerid), HospitalSpawnInfo[iHospitalVW][0]);
		GroupPayLog(9, string);
	}
	else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong dung tai khu vuc mua bao hiem.");
	return 1;
}

CMD:kill(playerid, params[]) {
	
	if(!IsPlayerConnected(playerid)) return SendClientMessageEx (playerid, COLOR_GRAD2, "You cannot do this at this time.");
	else if(HungerPlayerInfo[playerid][hgInEvent] != 0) return SendClientMessageEx(playerid, COLOR_GREY, "You cannot do this while being in the Hunger Games Event!");
    else if(GetPVarInt( playerid, "EventToken" ) == 1 || PlayerInfo[playerid][pBeingSentenced] != 0 || GetPVarInt(playerid, "Injured") != 0 || GetPVarInt(playerid, "IsFrozen") != 0 || PlayerCuffed[playerid] != 0 || PlayerTied[playerid] != 0 || PlayerInfo[playerid][pHospital] != 0 || PlayerInfo[playerid][pJailTime] != 0) return SendClientMessageEx (playerid, COLOR_GRAD2, "You cannot do this at this time.");
	else
	{
		if(GetPVarInt(playerid, "EventToken") >= 1 || GetPVarType(playerid, "IsInArena"))
		{
		    if(GetPVarType(playerid, "IsInArena"))
		    {
				if(PaintBallArena[GetPVarInt(playerid, "IsInArena")][pbGameType] == 3)
				{
				    if(GetPVarInt(playerid, "AOSlotPaintballFlag") != -1)
				    {
				        SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the tu sat khi dang cam co.");
				        return 1;
				    }
				}
		    }
			ResetPlayerWeapons(playerid);
		}
		
		if(GetPVarInt(playerid, "commitSuicide") == 1) {
		    return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang yeu cau tu sat.");
		}
		else {
			SetTimerEx("killPlayer", 60000, false, "i", playerid);
			SetPVarInt(playerid, "commitSuicide", 1);
			SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da yeu cau tu sat, hay cho 60 giay nua ban se tu sat.");
		}
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {

	if(arrAntiCheat[playerid][ac_iFlags][AC_DIALOGSPOOFING] > 0) return 1;
	switch(dialogid)
	{
		case DIALOG_HOSPITAL_MENU:
		{
			if(!response) return 1;
			new Float:tHP;
			GetHealth(playerid, tHP);
			switch(listitem)
			{
				case 0: // heal them 25% 
				{
					if(PlayerInfo[playerid][pCash] >= 1000)
					{
						if(tHP + 25 > 100) SetHealth(playerid, 100); else SetHealth(playerid, tHP + 25);
						GivePlayerCash(playerid, -1000);
						HospHeal(playerid);
					}
					else SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
				}
				case 1: // heal them 50%
				{
					if(PlayerInfo[playerid][pCash] >= 2000)
					{
						if(tHP + 50 > 100) SetHealth(playerid, 100); else SetHealth(playerid, tHP + 50);
						GivePlayerCash(playerid, -2000);
						HospHeal(playerid);
					}
					else SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
				}
				case 2: // heal them 75%
				{
					if(PlayerInfo[playerid][pCash] >= 3000)
					{
						if(tHP + 75 > 100) SetHealth(playerid, 100); else SetHealth(playerid, tHP + 75);
						GivePlayerCash(playerid, -3000);
						HospHeal(playerid);
					}
					else SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
				}
				case 3: // heal them fully.
				{
					if(PlayerInfo[playerid][pCash] >= 4000)
					{
						SetHealth(playerid, 100);
						GivePlayerCash(playerid, -4000);
						HospHeal(playerid);
					}
					else SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
				}
				case 4: // buy insurance
				{
					new iHospitalVW = GetPlayerVirtualWorld(playerid);
					
					if(IsPlayerInRangeOfPoint(playerid, 2.00, 2383.0728,2662.0520,8001.1479)) // all regular hospital points
					{
						if(iHospitalVW >= MAX_HOSPITALS) return SendClientMessageEx(playerid, -1, "No hospital has been setup for this Virtual World!");
						if(PlayerInfo[playerid][pInsurance] == iHospitalVW) return SendClientMessageEx(playerid, -1, "Ban da co bao hiem o benh vien nay!");
						if(GetPlayerCash(playerid) < HospitalSpawnInfo[iHospitalVW][1]) return SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
						PlayerInfo[playerid][pInsurance] = iHospitalVW;
						format(szMiscArray, sizeof(szMiscArray), "BENH VIEN: Ban da mua bao hiem benh vien %s voi gia $%d.", GetHospitalName(iHospitalVW), HospitalSpawnInfo[iHospitalVW][1]);
						SendClientMessageEx(playerid, COLOR_LIGHTBLUE, szMiscArray);
						GivePlayerCash(playerid, - HospitalSpawnInfo[iHospitalVW][1]);
						switch(iHospitalVW) {

							case 3, 17: TRTax += HospitalSpawnInfo[iHospitalVW][1]; // NE Hospitals
							default: Tax += HospitalSpawnInfo[iHospitalVW][1]; // SA Hospitals
						}
						format(szMiscArray, sizeof(szMiscArray), "%s da mua bao hiem y te voi gia $%d", GetPlayerNameEx(playerid), HospitalSpawnInfo[iHospitalVW][0]);
						GroupPayLog(9, szMiscArray);
					}
					else if(IsPlayerInRangeOfPoint(playerid, 2.00, 564.54, 1437.02, 6000.47)) // doc hospital purchase point
					{
						if(GetPlayerCash(playerid) < HospitalSpawnInfo[HOSPITAL_DOCJAIL][1]) return SendClientMessageEx(playerid, COLOR_GREY, MESSAGE_INSUFFICIENT_FUNDS);
						PlayerInfo[playerid][pInsurance] = HOSPITAL_DOCJAIL;
						format(szMiscArray, sizeof(szMiscArray), "BENH VIEN: Ban da mua bao hiem benh vien %s voi gia $%d.", GetHospitalName(HOSPITAL_DOCJAIL), HospitalSpawnInfo[HOSPITAL_DOCJAIL][1]);
						SendClientMessageEx(playerid, COLOR_LIGHTBLUE, szMiscArray);
						GivePlayerCash(playerid, - HospitalSpawnInfo[HOSPITAL_DOCJAIL][1]);
						Tax += HospitalSpawnInfo[HOSPITAL_DOCJAIL][1];
						format(szMiscArray, sizeof(szMiscArray), "%s da mua bao hiem y te voi gia $%d", GetPlayerNameEx(playerid), HospitalSpawnInfo[iHospitalVW][0]);
						GroupPayLog(9, szMiscArray);
					}
				}
			}
		}
		case SPAWNATHOME_CHOICE: {

			if(!response) return ShowPlayerDialogEx(playerid, SPAWNATHOME_CHOICE, DIALOG_STYLE_LIST, "Chon nha", "Home 1\nHome 2\nHome 3", "Thiet lap", "");

			new i = INVALID_HOUSE_ID;

			switch(listitem) {
				case 0: {
					if(PlayerInfo[playerid][pPhousekey] == INVALID_HOUSE_ID) return ShowPlayerDialogEx(playerid, SPAWNATHOME_CHOICE, DIALOG_STYLE_LIST, "Chon nha", "Home 1\nHome 2\nHome 3", "Thiet lap", "");

					i = PlayerInfo[playerid][pPhousekey];
				}
				case 1: {
					if(PlayerInfo[playerid][pPhousekey2] == INVALID_HOUSE_ID) return ShowPlayerDialogEx(playerid, SPAWNATHOME_CHOICE, DIALOG_STYLE_LIST, "Chon nha", "Home 1\nHome 2\nHome 3", "Thiet lap", "");

					i = PlayerInfo[playerid][pPhousekey2];
				}
				case 2: {
					if(PlayerInfo[playerid][pPhousekey3] == INVALID_HOUSE_ID) return ShowPlayerDialogEx(playerid, SPAWNATHOME_CHOICE, DIALOG_STYLE_LIST, "Chon nha", "Home 1\nHome 2\nHome 3", "Thiet lap", "");

					i = PlayerInfo[playerid][pPhousekey3];
				}
			}
			
			Streamer_UpdateEx(playerid, HouseInfo[i][hInteriorX],HouseInfo[i][hInteriorY],HouseInfo[i][hInteriorZ]);
			SetPlayerInterior(playerid,HouseInfo[i][hIntIW]);
			SetPlayerPos(playerid,HouseInfo[i][hInteriorX],HouseInfo[i][hInteriorY],HouseInfo[i][hInteriorZ]);
			GameTextForPlayer(playerid, "~w~Chao mung tro lai nha", 5000, 1);
			PlayerInfo[playerid][pInt] = HouseInfo[i][hIntIW];
			PlayerInfo[playerid][pVW] = HouseInfo[i][hIntVW];
			SetPlayerVirtualWorld(playerid,HouseInfo[i][hIntVW]);
			if(HouseInfo[i][hCustomInterior] == 1) Player_StreamPrep(playerid, HouseInfo[i][hInteriorX],HouseInfo[i][hInteriorY],HouseInfo[i][hInteriorZ], FREEZE_TIME);
			
		}
	}
	return 0;
}
