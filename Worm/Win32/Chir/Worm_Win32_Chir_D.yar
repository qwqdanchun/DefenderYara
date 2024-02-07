
rule Worm_Win32_Chir_D{
	meta:
		description = "Worm:Win32/Chir.D,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {6d 00 73 00 66 00 74 00 64 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  msftdm.exe
		$a_01_1 = {83 66 14 00 33 c0 c7 46 18 07 00 00 00 66 89 46 04 8b 44 24 08 8d 48 02 66 8b 10 40 40 66 85 d2 75 f6 } //01 00 
		$a_03_2 = {76 14 80 7d 90 01 01 00 74 08 8a 4d 90 01 01 02 c8 30 0c 18 40 3b 45 90 01 01 72 ec 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}