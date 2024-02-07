
rule Backdoor_Win32_Simda_gen_B{
	meta:
		description = "Backdoor:Win32/Simda.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {b8 1f 85 eb 51 f7 e1 8b c2 c1 e8 03 b2 19 f6 ea 8a d1 2a d0 80 c2 61 88 96 90 01 04 46 3b 75 08 90 13 0f 31 90 00 } //01 00 
		$a_03_1 = {32 06 0f b6 d0 c1 e8 08 8b 14 95 90 01 04 46 33 c2 49 75 eb 90 00 } //01 00 
		$a_01_2 = {74 1a ba ff df 00 00 66 21 50 16 } //01 00 
		$a_00_3 = {74 00 61 00 73 00 6b 00 25 00 64 00 } //01 00  task%d
		$a_03_4 = {58 2d d5 11 00 10 c3 90 09 05 00 e8 00 00 00 00 90 00 } //01 00 
		$a_01_5 = {80 3b 2e 89 45 0c 74 0a 40 80 3c 18 2e 75 f9 } //01 00 
		$a_03_6 = {68 4a 86 ff 61 e8 90 01 04 50 e8 90 01 04 6a 40 68 00 30 00 00 57 6a 00 ff d0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Simda_gen_B_2{
	meta:
		description = "Backdoor:Win32/Simda.gen!B,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 52 00 75 00 6e 00 4c 00 65 00 76 00 65 00 6c 00 3e 00 48 00 69 00 67 00 68 00 65 00 73 00 74 00 41 00 76 00 61 00 69 00 6c 00 61 00 62 00 6c 00 65 00 3c 00 2f 00 52 00 75 00 6e 00 4c 00 65 00 76 00 65 00 6c 00 3e 00 } //01 00  <RunLevel>HighestAvailable</RunLevel>
		$a_01_1 = {3c 00 41 00 63 00 74 00 69 00 6f 00 6e 00 73 00 20 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 3d 00 22 00 4c 00 6f 00 63 00 61 00 6c 00 53 00 79 00 73 00 74 00 65 00 6d 00 22 00 3e 00 } //01 00  <Actions Context="LocalSystem">
		$a_01_2 = {8b 1e 81 fb 41 50 33 32 75 53 8b 5e 04 83 fb 18 } //01 00 
		$a_01_3 = {0f b6 54 30 ff 8b cf c1 e9 18 33 54 8c 28 c1 e7 08 } //00 00 
	condition:
		any of ($a_*)
 
}