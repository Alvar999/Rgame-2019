/*

	 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
	| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
	| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
	| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
	| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
	| $$\  $$$| $$  \ $$        | $$  \ $$| $$
	| $$ \  $$|  $$$$$$/        | $$  | $$| $$
	|__/  \__/ \______/         |__/  |__/|__/

						Bartender System

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

CMD:selldrink(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == 19 || PlayerInfo[playerid][pJob2] == 19 || PlayerInfo[playerid][pJob3] == 19)
	{
		if(IsAtBar(playerid))
		{
			new string[128], giveplayerid;
			if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "USAGE: /selldrink [player]");

			if(IsPlayerConnected(giveplayerid))
			{
				if(playerid == giveplayerid)
				{
					return SendClientMessageEx(playerid, COLOR_GREY, " Ban khong the ban do uong cho ban than minh.");
				}
				if (ProxDetectorS(8.0, playerid, giveplayerid))
				{
					DrinkOffer[giveplayerid] = playerid;
					format(string, sizeof(string), "* Bartender %s da yeu cau ban do uong cho ban. /accept drink de uong.", GetPlayerNameEx(playerid));
					SendClientMessageEx(giveplayerid, COLOR_LIGHTBLUE, string);
					format(string, sizeof(string), "* Ban da de nghi %s mot loai do uong.",GetPlayerNameEx(giveplayerid));
					SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
				}
				else
				{
					return SendClientMessageEx(playerid, COLOR_GREY, " Nguoi nay khong gan ban!");
				}
			}
			else
			{
				return SendClientMessageEx(playerid, COLOR_GREY, " Nguoi nay khong online!");
			}
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "   Ban khong dung tai quay bar!");
			return 1;
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GREY, " Ban khong phai la bartender!");
		return 1;
	}
	return 1;
}