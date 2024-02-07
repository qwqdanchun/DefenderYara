
rule Worm_Win32_Bagle_ZHY{
	meta:
		description = "Worm:Win32/Bagle.ZHY,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {46 81 3e 4c 57 45 4b 75 90 01 01 05 00 00 00 10 89 06 8b ce 2b 4d f8 81 c1 00 0e 00 00 8b 55 90 01 01 8b 52 90 01 01 03 55 90 01 01 8b 82 90 01 02 00 00 83 82 90 01 02 00 00 0c 03 45 90 01 01 05 00 04 00 00 c7 00 00 10 00 00 c7 40 90 01 01 0c 00 00 00 89 48 90 01 01 81 48 90 01 01 00 30 00 00 90 00 } //01 00 
		$a_02_1 = {6a 02 6a 00 6a 00 ff 75 0c e8 90 01 02 00 00 c7 90 01 02 50 4b 01 02 66 c7 90 01 02 08 00 66 c7 90 01 02 14 00 66 c7 90 01 02 0a 00 66 c7 90 01 02 01 00 c7 90 01 02 20 00 00 00 8d 90 01 02 8b 90 01 02 b9 2e 00 00 00 f3 a4 90 00 } //01 00 
		$a_00_2 = {2d 53 2d 6b 2d 79 2d 4e 2d 65 2d 74 2d } //00 00  -S-k-y-N-e-t-
	condition:
		any of ($a_*)
 
}