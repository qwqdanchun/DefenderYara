
rule Trojan_BAT_SpySnake_MF_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 17 a2 0b 09 0f 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 93 00 00 00 32 00 00 00 ec 01 00 00 82 01 00 00 43 01 } //03 00 
		$a_01_1 = {52 61 63 65 5f 54 72 61 63 6b 2e 50 72 6f 70 65 72 74 69 65 73 } //03 00  Race_Track.Properties
		$a_01_2 = {34 66 66 64 37 38 31 35 2d 35 39 61 37 2d 34 64 36 65 2d 61 38 31 31 2d 36 66 31 61 32 37 63 33 63 65 38 38 } //03 00  4ffd7815-59a7-4d6e-a811-6f1a27c3ce88
		$a_01_3 = {59 66 65 66 66 65 65 66 66 65 66 65 61 } //03 00  Yfeffeeffefea
		$a_01_4 = {43 6f 6e 74 72 6f 6c 43 6f 6c 6c 65 63 74 69 6f 6e } //00 00  ControlCollection
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SpySnake_MF_MTB_2{
	meta:
		description = "Trojan:BAT/SpySnake.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 38 00 39 00 33 00 31 00 37 00 37 00 33 00 34 00 32 00 34 00 32 00 36 00 35 00 30 00 39 00 33 00 33 00 35 00 2f 00 90 02 60 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_01_1 = {4e 52 5f 44 4b 51 4f 44 4b 57 51 4f 52 } //01 00  NR_DKQODKWQOR
		$a_01_2 = {4e 52 5f 44 35 36 36 35 } //01 00  NR_D5665
		$a_01_3 = {4e 52 5f 4b 6f 6c 61 73 69 6e } //01 00  NR_Kolasin
		$a_01_4 = {4e 52 5f 44 65 74 72 6f 69 74 53 61 74 61 72 } //01 00  NR_DetroitSatar
		$a_01_5 = {53 55 50 45 52 5f 4c 4f 4b 45 52 } //01 00  SUPER_LOKER
		$a_01_6 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_8 = {67 65 74 5f 56 61 6c 75 65 } //01 00  get_Value
		$a_01_9 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //00 00  DownloadString
	condition:
		any of ($a_*)
 
}