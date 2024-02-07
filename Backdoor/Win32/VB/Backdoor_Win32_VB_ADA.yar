
rule Backdoor_Win32_VB_ADA{
	meta:
		description = "Backdoor:Win32/VB.ADA,SIGNATURE_TYPE_PEHSTR_EXT,47 00 47 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_01_1 = {44 6c 6c 46 75 6e 63 74 69 6f 6e 43 61 6c 6c } //0a 00  DllFunctionCall
		$a_01_2 = {13 54 4f 50 50 61 61 64 65 65 69 6b 6b 69 69 69 69 65 65 64 } //0a 00  吓偏慐摡敥歩楫楩敩摥
		$a_01_3 = {19 5a 64 65 61 50 61 61 64 65 69 69 69 69 69 69 69 65 64 64 } //0a 00  娙敤偡慡敤楩楩楩敩摤
		$a_01_4 = {13 5a 4e 4e 50 50 50 61 64 65 65 69 69 69 69 69 65 65 64 61 } //0a 00  娓乎偐慐敤楥楩楩敥慤
		$a_00_5 = {54 00 4d 00 50 00 2a 00 2e 00 74 00 6d 00 70 00 } //0a 00  TMP*.tmp
		$a_00_6 = {54 00 4d 00 50 00 2a 00 2e 00 6a 00 70 00 67 00 } //01 00  TMP*.jpg
		$a_02_7 = {3a 00 5c 00 41 00 59 00 4f 00 20 00 58 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 5c 00 41 00 59 00 4f 00 20 00 53 00 70 00 79 00 20 00 34 00 33 00 5c 00 90 02 30 2e 00 76 00 62 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}