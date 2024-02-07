
rule Worm_Win32_Kufgal_A{
	meta:
		description = "Worm:Win32/Kufgal.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {7e 16 8b 44 24 08 56 2b d0 8b f1 8a 0c 02 80 c1 90 01 01 88 08 40 4e 75 f4 90 00 } //02 00 
		$a_03_1 = {33 c0 b1 13 8a 90 90 90 01 04 32 d1 88 90 90 90 01 04 40 3d 90 01 04 7c ea 90 00 } //02 00 
		$a_03_2 = {68 bd 01 00 00 89 44 24 0c e8 90 01 04 8d 54 24 04 6a 10 52 56 90 00 } //01 00 
		$a_00_3 = {63 6d 64 20 2f 63 20 74 61 73 6b 6b 69 6c 6c 20 2f 69 6d 20 61 6c 67 2e 65 78 65 20 2f 66 } //01 00  cmd /c taskkill /im alg.exe /f
		$a_00_4 = {5c 46 6f 6e 74 73 5c 62 70 2e 69 6e 69 } //00 00  \Fonts\bp.ini
	condition:
		any of ($a_*)
 
}