
rule Backdoor_BAT_Pontoeb_gen_A{
	meta:
		description = "Backdoor:BAT/Pontoeb.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa0 00 ffffff96 00 04 00 00 64 00 "
		
	strings :
		$a_02_0 = {2f 00 62 00 6f 00 74 00 2e 00 70 00 68 00 70 00 3f 00 68 00 77 00 69 00 64 00 3d 00 90 02 06 70 00 63 00 6e 00 61 00 6d 00 65 00 3d 00 90 02 03 26 00 61 00 6e 00 74 00 77 00 6f 00 72 00 74 00 3d 00 90 00 } //32 00 
		$a_81_1 = {42 6f 74 5c 53 65 72 76 65 72 5c 53 79 73 44 72 69 76 65 72 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c 53 79 73 44 72 69 76 65 72 2e 70 64 62 00 } //32 00 
		$a_81_2 = {5c 53 74 75 62 5c 62 6f 74 5f 63 6c 65 61 6e 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c } //0a 00  \Stub\bot_clean\obj\Release\
		$a_00_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 56 00 69 00 64 00 65 00 6f 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 } //00 00  SELECT * FROM Win32_VideoController
	condition:
		any of ($a_*)
 
}
rule Backdoor_BAT_Pontoeb_gen_A_2{
	meta:
		description = "Backdoor:BAT/Pontoeb.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,79 00 64 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {02 8e b7 17 da 0b 2b 29 02 07 02 07 91 03 07 03 8e b7 5d 91 61 02 07 17 d6 02 8e b7 5d 91 da 20 00 01 00 00 d6 20 00 01 00 00 5d b4 9c 07 15 d6 0b 07 16 2f d3 02 2a } //0a 00 
		$a_01_1 = {02 1f 3c 28 e5 00 00 0a 13 06 02 11 06 1c d6 28 e6 00 00 0a 13 05 12 0a 02 11 06 1f 54 d6 28 e5 00 00 0a 28 e7 00 00 0a 1f 44 8d 72 00 00 01 13 } //64 00 
		$a_01_2 = {53 65 74 74 69 6e 67 73 5c 4e 61 74 68 75 20 53 69 6b 61 6e 64 61 72 5c 44 65 73 6b 74 6f 70 5c 56 33 53 45 5c 56 33 53 45 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 56 33 53 45 2e 70 64 62 00 00 } //05 00 
		$a_00_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 56 00 69 00 64 00 65 00 6f 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 } //05 00  SELECT * FROM Win32_VideoController
		$a_00_4 = {73 00 63 00 2e 00 65 00 78 00 65 00 20 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 73 00 74 00 61 00 72 00 74 00 3d 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 } //05 00  sc.exe config AntiVirService start= disabled
		$a_00_5 = {5c 00 45 00 73 00 65 00 74 00 5c 00 45 00 53 00 45 00 54 00 20 00 4e 00 4f 00 44 00 33 00 32 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 5c 00 2a 00 2e 00 65 00 78 00 65 00 2a 00 } //05 00  \Eset\ESET NOD32 Antivirus\*.exe*
		$a_00_6 = {5c 00 61 00 76 00 69 00 72 00 61 00 5c 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 20 00 64 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 5c 00 2a 00 2e 00 64 00 6c 00 6c 00 2a 00 } //01 00  \avira\antivir desktop\\*.dll*
		$a_00_7 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4c 00 69 00 6d 00 65 00 57 00 69 00 72 00 65 00 5c 00 } //01 00  HKEY_LOCAL_MACHINE\SOFTWARE\LimeWire\
		$a_00_8 = {70 00 6f 00 72 00 6e 00 5f 00 76 00 69 00 64 00 73 00 5f 00 70 00 61 00 72 00 74 00 31 00 2e 00 73 00 63 00 72 00 } //01 00  porn_vids_part1.scr
		$a_00_9 = {69 00 42 00 61 00 6e 00 67 00 50 00 6f 00 72 00 6e 00 73 00 74 00 61 00 72 00 73 00 2e 00 73 00 63 00 72 00 } //01 00  iBangPornstars.scr
		$a_00_10 = {73 00 74 00 6f 00 6e 00 69 00 6e 00 67 00 5f 00 76 00 69 00 64 00 65 00 6f 00 2e 00 73 00 63 00 72 00 } //00 00  stoning_video.scr
	condition:
		any of ($a_*)
 
}