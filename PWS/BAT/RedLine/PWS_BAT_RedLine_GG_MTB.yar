
rule PWS_BAT_RedLine_GG_MTB{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 09 00 00 0f 00 "
		
	strings :
		$a_81_0 = {52 65 64 4c 69 6e 65 2e 43 6c 69 65 6e 74 } //01 00 
		$a_80_1 = {53 63 72 65 65 6e 73 68 6f 74 } //Screenshot  01 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_3 = {43 72 65 64 69 74 43 61 72 64 } //CreditCard  01 00 
		$a_80_4 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  01 00 
		$a_80_5 = {57 61 6c 6c 65 74 } //Wallet  01 00 
		$a_80_6 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_7 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_8 = {52 75 6e 50 45 } //RunPE  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_2{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0b 00 00 0f 00 "
		
	strings :
		$a_81_0 = {52 65 64 4c 69 6e 65 2e } //01 00 
		$a_80_1 = {53 63 72 65 65 6e 73 68 6f 74 } //Screenshot  01 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_3 = {47 72 61 62 46 54 50 } //GrabFTP  01 00 
		$a_80_4 = {47 72 61 62 56 50 4e } //GrabVPN  01 00 
		$a_80_5 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_6 = {43 72 65 64 65 6e 74 69 61 6c 73 } //Credentials  01 00 
		$a_80_7 = {43 72 65 64 69 74 43 61 72 64 73 } //CreditCards  01 00 
		$a_80_8 = {43 61 70 74 75 72 65 } //Capture  01 00 
		$a_80_9 = {43 6f 6c 64 57 61 6c 6c 65 74 } //ColdWallet  01 00 
		$a_80_10 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_3{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0a 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 65 64 4c 69 6e 65 2e 52 65 62 75 72 6e } //RedLine.Reburn  01 00 
		$a_80_1 = {42 6c 61 63 6b 6c 69 73 74 65 64 49 50 } //BlacklistedIP  01 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_3 = {47 72 61 62 46 54 50 } //GrabFTP  01 00 
		$a_80_4 = {57 61 6c 6c 65 74 4e 61 6d 65 } //WalletName  01 00 
		$a_80_5 = {47 72 61 62 54 65 6c 65 67 72 61 6d } //GrabTelegram  01 00 
		$a_80_6 = {43 72 65 64 65 6e 74 69 61 6c 73 } //Credentials  01 00 
		$a_80_7 = {43 72 65 64 69 74 43 61 72 64 73 } //CreditCards  01 00 
		$a_80_8 = {43 61 70 74 75 72 65 53 63 72 65 65 6e } //CaptureScreen  01 00 
		$a_80_9 = {41 6e 74 69 76 69 72 75 73 50 72 6f 64 75 63 74 } //AntivirusProduct  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_4{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0b 00 00 0f 00 "
		
	strings :
		$a_80_0 = {52 65 64 4c 69 6e 65 2e 52 65 62 75 72 6e } //RedLine.Reburn  01 00 
		$a_80_1 = {53 63 72 65 65 6e 73 68 6f 74 } //Screenshot  01 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_3 = {47 72 61 62 46 54 50 } //GrabFTP  01 00 
		$a_80_4 = {47 72 61 62 56 50 4e } //GrabVPN  01 00 
		$a_80_5 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_6 = {43 72 65 64 65 6e 74 69 61 6c 73 } //Credentials  01 00 
		$a_80_7 = {43 72 65 64 69 74 43 61 72 64 73 } //CreditCards  01 00 
		$a_80_8 = {43 61 70 74 75 72 65 } //Capture  01 00 
		$a_80_9 = {43 6f 6c 64 57 61 6c 6c 65 74 } //ColdWallet  01 00 
		$a_80_10 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_5{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 0c 00 00 0f 00 "
		
	strings :
		$a_81_0 = {52 65 64 4c 69 6e 65 2e } //01 00 
		$a_80_1 = {53 63 72 65 65 6e 73 68 6f 74 } //Screenshot  01 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_3 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_4 = {43 72 65 64 65 6e 74 69 61 6c 73 } //Credentials  01 00 
		$a_80_5 = {43 61 70 74 75 72 65 } //Capture  01 00 
		$a_80_6 = {43 72 65 64 69 74 43 61 72 64 } //CreditCard  01 00 
		$a_80_7 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  01 00 
		$a_80_8 = {73 75 63 6b 73 } //sucks  01 00 
		$a_80_9 = {50 61 72 73 65 42 72 6f 77 73 65 72 73 } //ParseBrowsers  01 00 
		$a_80_10 = {47 72 61 62 } //Grab  01 00 
		$a_80_11 = {57 61 6c 6c 65 74 } //Wallet  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_6{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0e 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_3 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_4 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_5 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_6 = {47 61 6d 65 4c 61 75 6e 63 68 65 72 } //GameLauncher  01 00 
		$a_80_7 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_8 = {3c 53 63 61 6e } //<Scan  01 00 
		$a_80_9 = {42 72 6f 77 73 65 72 73 } //Browsers  01 00 
		$a_80_10 = {4e 6f 72 64 56 50 4e } //NordVPN  01 00 
		$a_80_11 = {43 68 72 5f 30 5f 4d 5f 65 } //Chr_0_M_e  01 00 
		$a_80_12 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_13 = {2a 73 73 66 6e 2a } //*ssfn*  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_7{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0e 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_2 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_3 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_4 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_5 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_6 = {47 61 6d 65 43 68 61 74 46 69 6c 65 } //GameChatFile  01 00 
		$a_80_7 = {42 6c 6f 63 6b 65 64 } //Blocked  01 00 
		$a_80_8 = {50 72 6f 74 6f 6e 56 50 4e } //ProtonVPN  01 00 
		$a_80_9 = {61 70 69 2e 69 70 2e 73 62 2f 67 65 6f 69 70 } //api.ip.sb/geoip  01 00 
		$a_80_10 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 57 69 6e 33 32 5f } //SELECT * FROM Win32_  01 00 
		$a_80_11 = {30 20 4d 62 20 6f 72 20 } //0 Mb or   01 00 
		$a_80_12 = {3c 53 63 61 6e 3e } //<Scan>  01 00 
		$a_80_13 = {44 69 73 63 6f 72 64 } //Discord  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_8{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0c 00 00 0f 00 "
		
	strings :
		$a_81_0 = {52 65 64 4c 69 6e 65 2e 43 6c 69 65 6e 74 } //01 00 
		$a_80_1 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_2 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  01 00 
		$a_80_3 = {52 75 6e 50 45 } //RunPE  01 00 
		$a_80_4 = {50 61 72 73 65 } //Parse  01 00 
		$a_02_5 = {43 00 72 00 65 00 64 00 69 00 74 00 90 02 04 43 00 61 00 72 00 64 00 90 00 } //01 00 
		$a_02_6 = {43 72 65 64 69 74 90 02 04 43 61 72 64 90 00 } //01 00 
		$a_80_7 = {57 61 6c 6c 65 74 } //Wallet  01 00 
		$a_80_8 = {62 6f 74 2e 77 68 61 74 69 73 6d 79 69 70 61 64 64 72 65 73 73 2e 63 6f 6d } //bot.whatismyipaddress.com  01 00 
		$a_80_9 = {52 65 64 4c 69 6e 65 2e 52 65 62 75 72 6e } //RedLine.Reburn  01 00 
		$a_80_10 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_11 = {53 55 43 4b } //SUCK  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_9{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0f 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_2 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_3 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_4 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_5 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_6 = {45 6c 65 63 74 72 75 6d } //Electrum  01 00 
		$a_80_7 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_8 = {61 70 69 2e 69 70 69 66 79 2e 6f 72 67 } //api.ipify.org  01 00 
		$a_80_9 = {2f 2f 69 70 69 6e 66 6f 2e 69 6f 2f 69 70 25 61 70 70 64 61 74 61 25 } ////ipinfo.io/ip%appdata%  01 00 
		$a_80_10 = {43 6f 69 6e } //Coin  01 00 
		$a_80_11 = {47 61 6d 65 43 68 61 74 46 69 6c 65 } //GameChatFile  01 00 
		$a_80_12 = {42 6c 6f 63 6b 65 64 } //Blocked  01 00 
		$a_80_13 = {76 69 72 75 73 } //virus  01 00 
		$a_80_14 = {7b 30 7d 20 4d 42 20 6f 72 20 7b 31 7d } //{0} MB or {1}  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_10{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 10 00 00 0a 00 "
		
	strings :
		$a_80_0 = {54 65 6c 65 67 72 61 6d } //Telegram  0a 00 
		$a_80_1 = {43 68 72 5f 30 5f 4d 5f 65 } //Chr_0_M_e  01 00 
		$a_80_2 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_3 = {4e 6f 72 64 56 50 4e } //NordVPN  01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_5 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_6 = {53 63 61 6e } //Scan  01 00 
		$a_80_7 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_8 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_9 = {2a 73 73 66 6e 2a } //*ssfn*  01 00 
		$a_80_10 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_11 = {42 72 6f 77 73 65 72 } //Browser  01 00 
		$a_80_12 = {3c 50 72 65 53 74 61 67 65 41 63 74 69 6f 6e } //<PreStageAction  01 00 
		$a_80_13 = {3c 50 61 73 73 65 64 50 61 74 68 } //<PassedPath  01 00 
		$a_80_14 = {3c 65 6e 63 72 79 70 74 } //<encrypt  01 00 
		$a_80_15 = {61 70 69 2e 69 70 2e 73 62 2f 69 70 } //api.ip.sb/ip  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_11{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0f 00 00 0a 00 "
		
	strings :
		$a_80_0 = {5b 5e 5c 75 30 30 32 30 2d 5c 75 30 30 37 46 5d 55 4e 4b 4e 4f 57 4e } //[^\u0020-\u007F]UNKNOWN  0a 00 
		$a_80_1 = {3c 50 72 65 53 74 61 67 65 41 63 74 69 6f 6e } //<PreStageAction  01 00 
		$a_80_2 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_3 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_4 = {4e 6f 72 64 56 50 4e } //NordVPN  01 00 
		$a_80_5 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_6 = {53 63 61 6e } //Scan  01 00 
		$a_80_7 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_8 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_9 = {2a 73 73 66 6e 2a } //*ssfn*  01 00 
		$a_80_10 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_11 = {42 72 6f 77 73 65 72 } //Browser  01 00 
		$a_80_12 = {3c 50 61 73 73 65 64 50 61 74 68 } //<PassedPath  01 00 
		$a_80_13 = {3c 65 6e 63 72 79 70 74 } //<encrypt  01 00 
		$a_80_14 = {61 70 69 2e 69 70 2e 73 62 2f 69 70 } //api.ip.sb/ip  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_12{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 10 00 00 0a 00 "
		
	strings :
		$a_80_0 = {54 65 6c 65 67 72 61 6d } //Telegram  0a 00 
		$a_80_1 = {49 43 6c 69 65 6e 74 43 68 61 6e 6e 65 6c } //IClientChannel  01 00 
		$a_80_2 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_3 = {4e 6f 72 64 56 50 4e } //NordVPN  01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_5 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_6 = {53 63 61 6e } //Scan  01 00 
		$a_80_7 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_8 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_9 = {2a 73 73 66 6e 2a } //*ssfn*  01 00 
		$a_80_10 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_11 = {42 72 6f 77 73 65 72 } //Browser  01 00 
		$a_80_12 = {3c 50 72 65 53 74 61 67 65 41 63 74 69 6f 6e } //<PreStageAction  01 00 
		$a_80_13 = {3c 50 61 73 73 65 64 50 61 74 68 } //<PassedPath  01 00 
		$a_80_14 = {3c 65 6e 63 72 79 70 74 } //<encrypt  01 00 
		$a_80_15 = {61 70 69 2e 69 70 2e 73 62 2f 69 70 } //api.ip.sb/ip  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_13{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4c 00 4c 00 10 00 00 32 00 "
		
	strings :
		$a_80_0 = {5b 5e 5c 75 30 30 32 30 2d 5c 75 30 30 37 46 5d 55 4e 4b 4e 4f 57 4e } //[^\u0020-\u007F]UNKNOWN  14 00 
		$a_80_1 = {49 44 3a 20 65 67 72 61 6d 2e 65 78 65 } //ID: egram.exe  14 00 
		$a_01_2 = {4d 00 41 00 4e 00 47 00 4f 00 } //01 00 
		$a_80_3 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_4 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_5 = {4e 6f 72 64 56 50 4e } //NordVPN  01 00 
		$a_80_6 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_7 = {53 63 61 6e } //Scan  01 00 
		$a_80_8 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_9 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_10 = {2a 73 73 66 6e 2a } //*ssfn*  01 00 
		$a_80_11 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_12 = {42 72 6f 77 73 65 72 } //Browser  01 00 
		$a_80_13 = {3c 50 61 73 73 65 64 50 61 74 68 } //<PassedPath  01 00 
		$a_80_14 = {3c 65 6e 63 72 79 70 74 } //<encrypt  01 00 
		$a_80_15 = {61 70 69 2e 69 70 2e 73 62 2f 69 70 } //api.ip.sb/ip  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_14{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 10 00 00 0a 00 "
		
	strings :
		$a_80_0 = {54 65 6c 65 67 72 61 6d } //Telegram  0a 00 
		$a_80_1 = {5b 5e 5c 75 30 30 32 30 2d 5c 75 30 30 37 46 5d 55 4e 4b 4e 4f 57 4e } //[^\u0020-\u007F]UNKNOWN  01 00 
		$a_80_2 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_3 = {4e 6f 72 64 56 50 4e } //NordVPN  01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_5 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_6 = {53 63 61 6e } //Scan  01 00 
		$a_80_7 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_8 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_9 = {2a 73 73 66 6e 2a } //*ssfn*  01 00 
		$a_80_10 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_11 = {42 72 6f 77 73 65 72 } //Browser  01 00 
		$a_80_12 = {3c 50 72 65 53 74 61 67 65 41 63 74 69 6f 6e } //<PreStageAction  01 00 
		$a_80_13 = {3c 50 61 73 73 65 64 50 61 74 68 } //<PassedPath  01 00 
		$a_80_14 = {3c 65 6e 63 72 79 70 74 } //<encrypt  01 00 
		$a_80_15 = {61 70 69 2e 69 70 2e 73 62 2f 69 70 } //api.ip.sb/ip  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_15{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4c 00 4c 00 10 00 00 32 00 "
		
	strings :
		$a_80_0 = {5b 5e 5c 75 30 30 32 30 2d 5c 75 30 30 37 46 5d 55 4e 4b 4e 4f 57 4e } //[^\u0020-\u007F]UNKNOWN  14 00 
		$a_80_1 = {49 44 3a 20 69 73 53 65 63 75 72 65 65 67 72 61 6d 2e 65 78 65 } //ID: isSecureegram.exe  14 00 
		$a_80_2 = {57 61 6e 61 4c 69 66 65 } //WanaLife  01 00 
		$a_80_3 = {44 69 73 63 6f 72 64 } //Discord  01 00 
		$a_80_4 = {4f 70 65 6e 56 50 4e } //OpenVPN  01 00 
		$a_80_5 = {4e 6f 72 64 56 50 4e } //NordVPN  01 00 
		$a_80_6 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_7 = {53 63 61 6e } //Scan  01 00 
		$a_80_8 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_9 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_10 = {2a 73 73 66 6e 2a } //*ssfn*  01 00 
		$a_80_11 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d } //SELECT * FROM  01 00 
		$a_80_12 = {42 72 6f 77 73 65 72 } //Browser  01 00 
		$a_80_13 = {3c 50 61 73 73 65 64 50 61 74 68 } //<PassedPath  01 00 
		$a_80_14 = {3c 65 6e 63 72 79 70 74 } //<encrypt  01 00 
		$a_80_15 = {61 70 69 2e 69 70 2e 73 62 2f 69 70 } //api.ip.sb/ip  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_16{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0f 00 00 0a 00 "
		
	strings :
		$a_80_0 = {49 52 65 6d 6f 74 65 50 61 6e 65 6c } //IRemotePanel  0a 00 
		$a_80_1 = {53 65 6e 64 43 6c 69 65 6e 74 49 6e 66 6f } //SendClientInfo  01 00 
		$a_80_2 = {52 75 6e 50 45 } //RunPE  01 00 
		$a_80_3 = {49 43 6c 69 65 6e 74 43 68 61 6e 6e 65 6c } //IClientChannel  01 00 
		$a_80_4 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_5 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_6 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  01 00 
		$a_02_7 = {43 00 72 00 65 00 64 00 69 00 74 00 90 02 04 43 00 61 00 72 00 64 00 90 00 } //01 00 
		$a_02_8 = {43 72 65 64 69 74 90 02 04 43 61 72 64 90 00 } //01 00 
		$a_80_9 = {62 6f 74 2e 77 68 61 74 69 73 6d 79 69 70 61 64 64 72 65 73 73 2e 63 6f 6d } //bot.whatismyipaddress.com  01 00 
		$a_80_10 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_11 = {56 4d 57 61 72 65 } //VMWare  01 00 
		$a_80_12 = {4d 6f 6e 65 72 6f } //Monero  01 00 
		$a_80_13 = {53 55 43 4b } //SUCK  01 00 
		$a_80_14 = {48 75 66 6c 65 70 75 66 66 } //Huflepuff  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_17{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 10 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {49 43 6c 69 65 6e 74 43 68 61 6e 6e 65 6c } //IClientChannel  01 00 
		$a_80_2 = {2e 43 6c 69 65 6e 74 2e 4d 6f 64 65 6c 73 2e 47 65 63 6b 6f } //.Client.Models.Gecko  01 00 
		$a_80_3 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_5 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  01 00 
		$a_02_6 = {43 00 72 00 65 00 64 00 69 00 74 00 90 02 04 43 00 61 00 72 00 64 00 90 00 } //01 00 
		$a_02_7 = {43 72 65 64 69 74 90 02 04 43 61 72 64 90 00 } //01 00 
		$a_80_8 = {62 6f 74 2e 77 68 61 74 69 73 6d 79 69 70 61 64 64 72 65 73 73 2e 63 6f 6d } //bot.whatismyipaddress.com  01 00 
		$a_80_9 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_10 = {56 4d 57 61 72 65 } //VMWare  01 00 
		$a_80_11 = {4d 6f 6e 65 72 6f } //Monero  01 00 
		$a_80_12 = {53 55 43 4b } //SUCK  01 00 
		$a_80_13 = {48 75 66 6c 65 70 75 66 66 } //Huflepuff  01 00 
		$a_80_14 = {2e 76 64 66 63 61 72 64 } //.vdfcard  01 00 
		$a_80_15 = {54 2d 2d 65 6c 65 2d 2d 67 72 61 6d } //T--ele--gram  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_18{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 10 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {49 43 6c 69 65 6e 74 43 68 61 6e 6e 65 6c } //IClientChannel  01 00 
		$a_80_2 = {2e 43 6c 69 65 6e 74 2e 4d 6f 64 65 6c 73 2e 47 65 63 6b 6f } //.Client.Models.Gecko  01 00 
		$a_80_3 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_5 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  01 00 
		$a_02_6 = {43 00 72 00 65 00 64 00 69 00 74 00 90 02 04 43 00 61 00 72 00 64 00 90 00 } //01 00 
		$a_02_7 = {43 72 65 64 69 74 90 02 04 43 61 72 64 90 00 } //01 00 
		$a_80_8 = {62 6f 74 2e 77 68 61 74 69 73 6d 79 69 70 61 64 64 72 65 73 73 2e 63 6f 6d } //bot.whatismyipaddress.com  01 00 
		$a_80_9 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_10 = {56 4d 57 61 72 65 } //VMWare  01 00 
		$a_80_11 = {4d 6f 6e 65 72 6f } //Monero  01 00 
		$a_80_12 = {53 55 43 4b } //SUCK  01 00 
		$a_80_13 = {48 75 66 6c 65 70 75 66 66 } //Huflepuff  01 00 
		$a_80_14 = {2e 76 64 66 63 61 72 64 } //.vdfcard  01 00 
		$a_80_15 = {54 2d 2d 65 6c 65 2d 2d 67 72 61 6d } //T--ele--gram  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_19{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 10 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {49 43 6c 69 65 6e 74 43 68 61 6e 6e 65 6c } //IClientChannel  01 00 
		$a_80_2 = {2e 43 6c 69 65 6e 74 2e 4d 6f 64 65 6c 73 2e 47 65 63 6b 6f } //.Client.Models.Gecko  01 00 
		$a_80_3 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_4 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_5 = {65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //encryptedPassword  01 00 
		$a_02_6 = {43 00 72 00 65 00 64 00 69 00 74 00 90 02 04 43 00 61 00 72 00 64 00 90 00 } //01 00 
		$a_02_7 = {43 72 65 64 69 74 90 02 04 43 61 72 64 90 00 } //01 00 
		$a_80_8 = {62 6f 74 2e 77 68 61 74 69 73 6d 79 69 70 61 64 64 72 65 73 73 2e 63 6f 6d } //bot.whatismyipaddress.com  01 00 
		$a_80_9 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_10 = {56 4d 57 61 72 65 } //VMWare  01 00 
		$a_80_11 = {4d 6f 6e 65 72 6f } //Monero  01 00 
		$a_80_12 = {53 55 43 4b } //SUCK  01 00 
		$a_80_13 = {48 75 66 6c 65 70 75 66 66 } //Huflepuff  01 00 
		$a_80_14 = {2e 76 64 66 63 61 72 64 } //.vdfcard  01 00 
		$a_80_15 = {54 2d 2d 65 6c 65 2d 2d 67 72 61 6d } //T--ele--gram  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_20{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 11 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  01 00 
		$a_02_1 = {41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 90 02 19 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 90 00 } //01 00 
		$a_02_2 = {41 6e 74 69 76 69 72 75 90 02 19 73 50 72 6f 64 75 63 74 90 00 } //01 00 
		$a_80_3 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_4 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_5 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_6 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_02_7 = {43 00 72 00 65 00 64 00 69 00 74 00 90 02 04 43 00 61 00 72 00 64 00 90 00 } //01 00 
		$a_02_8 = {43 72 65 64 69 74 90 02 04 43 61 72 64 90 00 } //01 00 
		$a_80_9 = {62 6f 74 2e 77 68 61 74 69 73 6d 79 69 70 61 64 64 72 65 73 73 2e 63 6f 6d } //bot.whatismyipaddress.com  01 00 
		$a_80_10 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_11 = {45 74 68 65 72 65 75 6d } //Ethereum  01 00 
		$a_80_12 = {4d 6f 6e 65 72 6f } //Monero  01 00 
		$a_80_13 = {77 61 6c 6c 65 74 } //wallet  0a 00 
		$a_80_14 = {48 75 66 6c 65 70 75 66 66 } //Huflepuff  01 00 
		$a_80_15 = {2a 2e 76 64 66 } //*.vdf  01 00 
		$a_80_16 = {69 63 61 6e 68 61 7a 69 70 2e 63 6f 6d } //icanhazip.com  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_21{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 11 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_02_2 = {41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 90 02 19 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 90 00 } //01 00 
		$a_02_3 = {41 6e 74 69 76 69 72 75 90 02 19 73 50 72 6f 64 75 63 74 90 00 } //01 00 
		$a_80_4 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_5 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_6 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_02_7 = {43 00 72 00 65 00 64 00 69 00 74 00 90 02 04 43 00 61 00 72 00 64 00 90 00 } //01 00 
		$a_02_8 = {43 72 65 64 69 74 90 02 04 43 61 72 64 90 00 } //01 00 
		$a_80_9 = {62 6f 74 2e 77 68 61 74 69 73 6d 79 69 70 61 64 64 72 65 73 73 2e 63 6f 6d } //bot.whatismyipaddress.com  01 00 
		$a_80_10 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_11 = {45 74 68 65 72 65 75 6d } //Ethereum  01 00 
		$a_80_12 = {4d 6f 6e 65 72 6f } //Monero  01 00 
		$a_80_13 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_14 = {2a 2e 76 64 66 } //*.vdf  01 00 
		$a_80_15 = {69 63 61 6e 68 61 7a 69 70 2e 63 6f 6d } //icanhazip.com  01 00 
		$a_80_16 = {4e 4f 54 4d 45 50 4c 45 41 53 45 } //NOTMEPLEASE  00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_RedLine_GG_MTB_22{
	meta:
		description = "PWS:BAT/RedLine.GG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 11 00 00 0a 00 "
		
	strings :
		$a_80_0 = {52 75 6e 50 45 } //RunPE  0a 00 
		$a_80_1 = {54 65 6c 65 67 72 61 6d } //Telegram  01 00 
		$a_80_2 = {50 61 72 73 65 } //Parse  01 00 
		$a_80_3 = {44 6f 77 6e 6c 6f 61 64 } //Download  01 00 
		$a_80_4 = {50 61 73 73 77 6f 72 64 } //Password  01 00 
		$a_80_5 = {3c 67 65 6f 70 6c 75 67 69 6e } //<geoplugin  01 00 
		$a_80_6 = {5c 45 6c 65 63 74 72 75 6d } //\Electrum  01 00 
		$a_80_7 = {5c 45 78 6f 64 75 73 } //\Exodus  01 00 
		$a_80_8 = {77 61 6c 6c 65 74 } //wallet  01 00 
		$a_80_9 = {61 70 69 2e 69 70 69 66 79 2e 6f 72 67 } //api.ipify.org  01 00 
		$a_80_10 = {43 6f 69 6e 62 61 73 65 } //Coinbase  01 00 
		$a_80_11 = {4e 69 66 74 79 57 61 6c 6c 65 74 } //NiftyWallet  01 00 
		$a_02_12 = {76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 90 02 14 75 00 63 00 74 00 90 0a 3c 00 41 00 6e 00 74 00 90 00 } //01 00 
		$a_02_13 = {76 69 72 75 73 50 72 6f 64 90 02 14 75 63 74 90 0a 3c 00 41 6e 74 90 00 } //01 00 
		$a_02_14 = {72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 72 00 6f 00 90 02 14 64 00 75 00 63 00 74 00 90 0a 3c 00 46 00 69 00 90 00 } //01 00 
		$a_02_15 = {72 65 77 61 6c 6c 50 72 6f 90 02 14 64 75 63 74 90 0a 3c 00 46 69 90 00 } //01 00 
		$a_80_16 = {2f 2f 69 70 69 6e 66 6f 2e 69 6f 2f 69 70 25 61 70 70 64 61 74 61 25 } ////ipinfo.io/ip%appdata%  00 00 
	condition:
		any of ($a_*)
 
}