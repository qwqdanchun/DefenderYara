
rule Virus_Win32_Valla_gen_A{
	meta:
		description = "Virus:Win32/Valla.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 3b 58 4f 52 00 0f 84 90 01 02 00 00 90 00 } //01 00 
		$a_03_1 = {c7 03 58 4f 52 00 c7 43 04 00 00 00 00 c7 43 08 90 01 02 00 00 90 00 } //02 00 
		$a_01_2 = {80 3e 2e 0f 85 2a 00 00 00 80 7e 01 65 74 06 80 7e 01 45 75 1e 80 7e 02 78 74 06 80 7e 02 58 75 12 80 7e 03 65 74 06 80 7e 03 45 75 06 80 7e 04 00 74 08 80 3e 00 74 33 46 eb c5 } //01 00 
		$a_03_3 = {fc e8 00 00 00 00 5f 81 ef 90 01 01 00 00 00 8b 87 90 01 02 00 00 89 87 90 01 02 00 00 8b 74 24 1c 81 e6 00 f0 ff ff 66 81 3e 4d 5a 90 00 } //01 00 
		$a_00_4 = {2d 3d 20 58 4f 52 20 32 30 30 39 20 56 61 6c 68 61 6c 6c 61 20 3d 2d } //00 00 
	condition:
		any of ($a_*)
 
}