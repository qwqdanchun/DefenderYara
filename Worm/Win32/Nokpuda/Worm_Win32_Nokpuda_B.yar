
rule Worm_Win32_Nokpuda_B{
	meta:
		description = "Worm:Win32/Nokpuda.B,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 08 00 00 03 00 "
		
	strings :
		$a_03_0 = {8b c3 83 c0 e0 83 e8 5b 73 1f b8 5a 00 00 00 e8 90 01 04 f7 6d f4 03 d8 83 fb 20 7c 05 83 fb 7a 7e 06 90 00 } //03 00 
		$a_03_1 = {c6 45 ef 43 8d 45 90 01 01 8a 55 ef e8 90 02 1f 83 f8 03 90 00 } //01 00 
		$a_01_2 = {5c 75 70 64 2e 62 61 74 00 } //01 00 
		$a_01_3 = {5c 74 6d 70 2e 65 78 65 00 00 6f 70 65 6e 00 } //01 00 
		$a_01_4 = {40 70 69 6e 67 20 2d 6e 20 35 20 6c 6f 63 61 6c 68 6f 73 74 3e 20 6e 75 6c } //01 00  @ping -n 5 localhost> nul
		$a_01_5 = {64 6f 77 6e 61 6e 64 65 78 65 00 } //01 00 
		$a_01_6 = {64 6f 77 6e 32 63 6f 75 6e 74 72 79 00 } //01 00 
		$a_01_7 = {68 74 74 70 66 6c 6f 6f 64 00 } //00 00  瑨灴汦潯d
	condition:
		any of ($a_*)
 
}