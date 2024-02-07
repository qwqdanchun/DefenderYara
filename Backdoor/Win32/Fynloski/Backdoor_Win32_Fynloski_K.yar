
rule Backdoor_Win32_Fynloski_K{
	meta:
		description = "Backdoor:Win32/Fynloski.K,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 42 4f 54 23 56 69 73 69 74 55 72 6c } //01 00  #BOT#VisitUrl
		$a_01_1 = {23 42 4f 54 23 4f 70 65 6e 55 72 6c } //01 00  #BOT#OpenUrl
		$a_01_2 = {23 42 4f 54 23 50 69 6e 67 } //01 00  #BOT#Ping
		$a_01_3 = {23 42 4f 54 23 52 75 6e 50 72 6f 6d 70 74 } //01 00  #BOT#RunPrompt
		$a_01_4 = {23 42 4f 54 23 43 6c 6f 73 65 53 65 72 76 65 72 } //01 00  #BOT#CloseServer
		$a_01_5 = {23 42 4f 54 23 53 76 72 55 6e 69 6e 73 74 61 6c 6c } //01 00  #BOT#SvrUninstall
		$a_01_6 = {23 42 4f 54 23 55 52 4c 55 70 64 61 74 65 } //01 00  #BOT#URLUpdate
		$a_01_7 = {23 42 4f 54 23 55 52 4c 44 6f 77 6e 6c 6f 61 64 } //01 00  #BOT#URLDownload
		$a_01_8 = {44 44 4f 53 48 54 54 50 46 4c 4f 4f 44 } //01 00  DDOSHTTPFLOOD
		$a_01_9 = {44 44 4f 53 53 59 4e 46 4c 4f 4f 44 } //01 00  DDOSSYNFLOOD
		$a_01_10 = {44 44 4f 53 55 44 50 46 4c 4f 4f 44 } //00 00  DDOSUDPFLOOD
		$a_01_11 = {00 67 16 00 00 } //0e 5f 
	condition:
		any of ($a_*)
 
}