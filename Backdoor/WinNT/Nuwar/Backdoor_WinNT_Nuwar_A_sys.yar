
rule Backdoor_WinNT_Nuwar_A_sys{
	meta:
		description = "Backdoor:WinNT/Nuwar.A!sys,SIGNATURE_TYPE_PEHSTR_EXT,15 00 11 00 0b 00 00 02 00 "
		
	strings :
		$a_00_0 = {66 8b 00 66 3d 93 08 74 0c 66 3d 28 0a 74 06 66 3d ce 0e } //02 00 
		$a_00_1 = {83 e8 10 75 02 33 f6 83 61 1c 00 32 d2 89 71 18 } //02 00 
		$a_00_2 = {00 56 56 68 ff 03 1f 00 ff 75 fc ff 15 } //02 00 
		$a_00_3 = {83 4d fc ff 56 c7 45 f8 80 0f 05 fd 33 f6 39 35 } //02 00 
		$a_00_4 = {6a 01 ff 75 0c c6 40 4a 01 56 } //02 00 
		$a_00_5 = {0f b7 c0 0f b7 c9 c1 e0 10 03 c1 3b c7 0f 97 c1 84 c9 74 05 } //02 00 
		$a_00_6 = {c7 45 fc 00 80 00 00 be 04 00 00 c0 68 44 64 6b 20 ff 75 fc } //02 00 
		$a_00_7 = {83 7d 10 00 74 10 8b 4d 08 8a 45 0c ff 45 08 ff 4d 10 88 01 75 f0 } //02 00 
		$a_00_8 = {8d 45 ec 50 8d 45 d4 50 68 ff 0f 1f 00 } //06 00 
		$a_00_9 = {0f b7 43 14 8d 54 18 18 0f b7 43 06 83 65 08 00 8d 0c 80 c1 e1 03 b8 } //01 00 
		$a_01_10 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //00 00  KeServiceDescriptorTable
	condition:
		any of ($a_*)
 
}