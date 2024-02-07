
rule Virus_Win32_Quervar_gen_B{
	meta:
		description = "Virus:Win32/Quervar.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 2d 2d 2d 71 72 6e 71 79 76 61 72 2d 2d 2d 5d } //01 00  [---qrnqyvar---]
		$a_01_1 = {5b 2b 2b 2b 73 63 61 72 66 61 63 65 2b 2b 2b 5d } //01 00  [+++scarface+++]
		$a_01_2 = {5b 2d 2d 2d 64 65 61 64 6c 69 6e 65 2d 2d 2d 5d } //0a 00  [---deadline---]
		$a_03_3 = {03 cb 81 e1 ff 00 00 00 8b 1c 24 8a 1c 13 32 99 90 01 04 8b 4c 24 04 88 1c 11 42 48 75 ad 59 5a 5f 5e 5b c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Virus_Win32_Quervar_gen_B_2{
	meta:
		description = "Virus:Win32/Quervar.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 14 02 8b ca 80 c1 bf 80 e9 0d 72 14 80 e9 0d 72 1f 80 c1 fa 80 e9 0d 72 07 80 e9 0d 72 12 eb 1e 81 e2 ff 00 00 00 83 c2 0d 8b 0b 88 14 01 eb 0e } //01 00 
		$a_01_1 = {2d 00 6c 00 61 00 75 00 6e 00 63 00 68 00 65 00 72 00 00 00 59 00 62 00 6e 00 71 00 00 00 00 00 46 00 62 00 73 00 67 00 6a 00 6e 00 65 00 72 00 5c 00 5a 00 76 00 70 00 65 00 62 00 66 00 62 00 73 00 67 00 5c 00 4a 00 76 00 61 00 71 00 62 00 6a 00 66 00 20 00 41 00 47 00 5c 00 50 00 68 00 65 00 65 00 72 00 61 00 67 00 49 00 72 00 65 00 66 00 76 00 62 00 61 00 5c 00 4a 00 76 00 61 00 71 00 62 00 6a 00 66 00 } //01 00 
		$a_01_2 = {75 72 6c 6d 6f 6e 2e 64 6c 6c 00 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 00 00 68 00 74 00 74 00 70 00 00 00 00 00 3f 00 00 00 26 00 00 00 26 00 70 00 69 00 6e 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}