
rule Worm_Win32_Cridex_E{
	meta:
		description = "Worm:Win32/Cridex.E,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 4d 00 53 00 25 00 30 00 38 00 58 00 00 00 } //1
		$a_01_1 = {00 00 4c 00 6f 00 63 00 61 00 6c 00 5c 00 58 00 4d 00 42 00 25 00 30 00 38 00 58 00 00 00 } //1
		$a_03_2 = {8b 40 0c 8b 70 0c 85 f6 74 90 01 01 33 ff eb 90 14 83 c7 01 66 83 3c 7d 90 01 04 00 75 f2 83 7e 18 00 74 90 01 01 0f b7 90 03 01 01 46 4e 2c 8b 56 30 d1 90 03 01 01 e8 e9 90 00 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2) >=1
 
}