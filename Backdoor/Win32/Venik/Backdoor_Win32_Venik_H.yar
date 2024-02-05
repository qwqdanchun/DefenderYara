
rule Backdoor_Win32_Venik_H{
	meta:
		description = "Backdoor:Win32/Venik.H,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {51 ff 75 e8 ff d0 39 5d ec 74 0b 66 81 bd e4 fb ff ff 4d 5a 75 22 8d 45 e4 53 50 8d 85 e4 fb ff ff ff 75 f8 89 5d ec 50 ff 75 08 ff 15 90 01 03 10 90 00 } //01 00 
		$a_01_1 = {4b 78 65 74 72 61 79 2e 65 78 65 00 33 36 30 74 72 61 79 2e 65 78 65 00 25 73 36 74 25 2e 33 64 2e 64 6c 6c 00 } //01 00 
		$a_01_2 = {00 68 6d 50 72 6f 78 79 21 3d 20 4e 55 4c 4c 0d 0a 00 } //01 00 
		$a_01_3 = {00 4c 6f 61 64 46 72 6f 6d 4d 65 6d 6f 72 79 20 45 4e 44 2d 2d 2d 0d 0a 00 } //01 00 
		$a_01_4 = {63 6d 64 2e 65 78 65 00 2f 63 20 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 31 20 26 26 20 64 65 6c 20 2f 66 2f 71 20 22 25 73 22 } //00 00 
		$a_00_5 = {80 10 00 } //00 0c 
	condition:
		any of ($a_*)
 
}