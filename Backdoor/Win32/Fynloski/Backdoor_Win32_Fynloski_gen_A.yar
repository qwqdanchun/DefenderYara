
rule Backdoor_Win32_Fynloski_gen_A{
	meta:
		description = "Backdoor:Win32/Fynloski.gen!A!!Fynloski.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 16 00 00 ffffff9c ffffffff "
		
	strings :
		$a_00_0 = {5c 00 73 00 68 00 6b 00 65 00 72 00 6e 00 65 00 6c 00 5c 00 48 00 65 00 6c 00 70 00 64 00 65 00 73 00 6b 00 44 00 61 00 74 00 61 00 53 00 74 00 72 00 75 00 63 00 74 00 73 00 2e 00 68 00 } //ce ff  \shkernel\HelpdeskDataStructs.h
		$a_00_1 = {47 00 72 00 69 00 64 00 69 00 6e 00 53 00 6f 00 66 00 74 00 20 00 4c 00 4c 00 43 00 } //ce ff  GridinSoft LLC
		$a_00_2 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 67 00 73 00 61 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {23 42 4f 54 23 56 69 73 69 74 55 72 6c } //01 00  #BOT#VisitUrl
		$a_01_4 = {23 42 4f 54 23 53 76 72 55 6e 69 6e 73 74 61 6c 6c } //01 00  #BOT#SvrUninstall
		$a_01_5 = {23 42 4f 54 23 55 52 4c 44 6f 77 6e 6c 6f 61 64 } //01 00  #BOT#URLDownload
		$a_01_6 = {4b 49 4c 4c 52 45 4d 4f 54 45 53 48 45 4c 4c } //01 00  KILLREMOTESHELL
		$a_01_7 = {41 63 74 69 76 65 4f 66 66 6c 69 6e 65 4b 65 79 6c 6f 67 67 65 72 } //01 00  ActiveOfflineKeylogger
		$a_01_8 = {44 44 4f 53 55 44 50 46 4c 4f 4f 44 } //01 00  DDOSUDPFLOOD
		$a_01_9 = {44 44 4f 53 53 59 4e 46 4c 4f 4f 44 } //01 00  DDOSSYNFLOOD
		$a_01_10 = {44 44 4f 53 48 54 54 50 46 4c 4f 4f 44 } //01 00  DDOSHTTPFLOOD
		$a_01_11 = {52 50 43 4c 61 6e 53 63 61 6e } //01 00  RPCLanScan
		$a_01_12 = {50 6f 72 74 53 63 61 6e 41 64 64 } //01 00  PortScanAdd
		$a_01_13 = {61 63 74 69 76 65 72 65 6d 6f 74 65 73 68 65 6c 6c } //01 00  activeremoteshell
		$a_01_14 = {23 42 4f 54 23 4f 70 65 6e 55 72 6c } //01 00  #BOT#OpenUrl
		$a_01_15 = {23 42 4f 54 23 43 6c 6f 73 65 53 65 72 76 65 72 } //01 00  #BOT#CloseServer
		$a_01_16 = {23 42 4f 54 23 55 52 4c 55 70 64 61 74 65 } //01 00  #BOT#URLUpdate
		$a_01_17 = {23 42 4f 54 23 52 75 6e 50 72 6f 6d 70 74 } //01 00  #BOT#RunPrompt
		$a_01_18 = {23 52 65 6d 6f 74 65 53 63 72 65 65 6e 53 69 7a 65 } //01 00  #RemoteScreenSize
		$a_01_19 = {23 42 4f 54 23 50 69 6e 67 } //01 00  #BOT#Ping
		$a_03_20 = {30 04 32 46 ff 4d 90 01 01 90 13 43 81 e3 ff 00 00 80 90 00 } //02 00 
		$a_03_21 = {8b 06 83 f8 2e 0f 8f 90 01 02 00 00 0f 84 90 01 02 00 00 83 c0 f8 83 f8 25 0f 87 90 01 02 00 00 ff 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}