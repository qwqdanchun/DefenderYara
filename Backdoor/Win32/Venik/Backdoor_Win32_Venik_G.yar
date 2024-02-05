
rule Backdoor_Win32_Venik_G{
	meta:
		description = "Backdoor:Win32/Venik.G,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a 14 01 80 ea 90 01 01 80 f2 90 01 01 88 14 01 41 3b 90 02 04 7c 90 00 } //01 00 
		$a_03_1 = {fe ff ff 53 c6 85 90 01 01 fe ff ff 65 c6 85 90 01 01 fe ff ff 72 c6 85 90 01 01 fe ff ff 76 c6 85 90 01 01 fe ff ff 69 c6 85 90 01 01 fe ff ff 63 c6 85 90 01 01 fe ff ff 65 c6 85 90 01 01 fe ff ff 73 c6 85 90 01 01 fe ff ff 5c c6 85 90 01 01 fe ff ff 25 c6 85 90 01 01 fe ff ff 73 88 9d 90 01 01 fe ff ff 90 00 } //01 00 
		$a_01_2 = {49 6e 73 74 61 6c 6c 54 69 6d 65 00 25 34 64 2d 25 2e 32 64 2d 25 2e 32 64 20 25 2e 32 64 3a 25 2e 32 64 00 25 64 2a 25 73 4d 48 7a 00 } //01 00 
		$a_01_3 = {53 65 63 75 72 69 74 79 00 00 00 00 41 70 70 6c 69 63 61 74 69 6f 6e 00 70 75 6f 72 47 00 } //00 00 
		$a_00_4 = {78 1b } //01 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Venik_G_2{
	meta:
		description = "Backdoor:Win32/Venik.G,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {8b 74 24 0c 33 c9 85 f6 7e 11 8a 14 01 80 ea 7a 80 f2 19 88 14 01 41 3b ce 7c ef 5e c3 } //01 00 
		$a_03_1 = {68 10 27 00 00 e8 90 01 04 50 8d 84 24 90 01 04 8d 4c 24 90 01 01 50 8d 94 24 90 01 04 51 52 c6 84 24 90 01 04 00 c6 44 24 90 01 01 25 c6 44 24 90 01 01 73 c6 44 24 90 01 01 25 c6 44 24 90 01 01 64 c6 44 24 90 01 01 2e c6 44 24 90 01 01 76 c6 44 24 90 01 01 62 c6 44 24 90 01 01 73 c6 44 24 90 01 01 00 90 00 } //01 00 
		$a_03_2 = {43 c6 44 24 90 01 01 75 c6 44 24 90 01 01 65 c6 44 24 90 01 01 74 c6 44 24 90 01 01 56 c6 44 24 90 01 01 65 c6 44 24 90 01 01 73 c6 44 24 90 01 01 69 88 5c 24 90 01 01 c6 44 24 90 01 01 52 c6 44 24 90 01 01 75 c6 44 24 90 01 01 00 90 00 } //02 00 
		$a_01_3 = {00 4c 6f 61 64 46 72 6f 6d 4d 65 6d 6f 72 79 20 45 4e 44 2d 2d 2d 0d 0a 00 } //02 00 
		$a_01_4 = {00 68 6d 50 72 6f 78 79 21 3d 20 4e 55 4c 4c 0d 0a 00 } //00 00 
	condition:
		any of ($a_*)
 
}