
rule Backdoor_Win32_Zegost_CC{
	meta:
		description = "Backdoor:Win32/Zegost.CC,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 04 00 "
		
	strings :
		$a_03_0 = {8a 1c 11 80 c3 90 01 01 88 1c 11 8b 90 02 03 8a 1c 11 80 f3 90 01 01 88 1c 11 41 3b c8 7c 90 00 } //04 00 
		$a_03_1 = {8d 8e b0 00 00 00 89 86 ac 00 00 00 b0 74 90 09 14 00 90 02 07 47 c6 90 02 03 68 c6 90 02 03 30 c6 90 02 03 73 90 00 } //03 00 
		$a_03_2 = {d5 07 66 c7 44 24 90 01 01 04 00 66 c7 44 24 90 01 01 13 00 66 c7 44 24 90 01 01 10 00 66 c7 44 24 90 01 01 0e 00 ff 15 90 00 } //02 00 
		$a_03_3 = {b0 73 53 8b 5d 20 88 45 90 01 01 c6 45 90 01 01 79 88 45 90 01 01 c6 45 90 01 01 74 c6 45 90 01 01 65 c6 45 90 01 01 6d 90 00 } //03 00 
		$a_02_4 = {53 65 6c 66 5f 55 70 64 61 74 65 90 02 05 61 50 50 4c 49 43 41 54 49 4f 4e 53 5c 49 45 58 50 4c 4f 52 45 2e 45 58 45 5c 53 48 45 4c 4c 5c 4f 50 45 4e 5c 43 4f 4d 4d 41 4e 44 90 00 } //01 00 
		$a_00_5 = {46 75 63 6b 5f 61 76 70 } //01 00  Fuck_avp
		$a_00_6 = {47 6c 6f 62 61 6c 5c 54 6f 72 72 65 6e 74 20 25 64 } //01 00  Global\Torrent %d
		$a_00_7 = {5c 4c 6f 67 4f 66 53 79 73 74 65 6d 2e 6b 65 79 } //01 00  \LogOfSystem.key
		$a_00_8 = {79 65 6b 2e 6d 65 74 73 79 53 66 4f 67 6f 4c 5c } //00 00  yek.metsySfOgoL\
	condition:
		any of ($a_*)
 
}