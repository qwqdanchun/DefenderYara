
rule Worm_Win32_Poenon_C{
	meta:
		description = "Worm:Win32/Poenon.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 06 17 d6 13 06 00 11 06 11 07 8e b7 fe 04 13 11 11 11 2d de 72 90 01 04 28 90 01 04 13 09 16 13 08 2b 14 11 09 11 08 9a 0b 07 6f 90 01 04 00 11 08 17 d6 13 08 00 11 08 11 09 8e b7 fe 04 13 11 11 11 2d de 72 90 01 04 28 90 01 04 13 0b 16 13 0a 2b 14 11 0b 11 0a 9a 0c 08 6f 90 01 04 00 11 0a 17 d6 13 0a 00 11 0a 11 0b 8e b7 fe 04 13 11 11 11 2d de 72 90 01 04 28 90 01 04 13 0d 16 13 0c 2b 14 90 00 } //01 00 
		$a_03_1 = {20 f4 01 00 00 6a 28 90 01 04 00 28 90 01 04 0b 07 08 da 20 f4 01 00 00 6a fe 04 0d 09 2c 04 17 0a 2b 03 90 00 } //01 00 
		$a_01_2 = {5c 44 65 73 6b 74 6f 70 5c 57 6f 72 6d 57 69 6e 33 32 20 20 50 6f 65 6e 6f 6e 2e } //00 00  \Desktop\WormWin32  Poenon.
	condition:
		any of ($a_*)
 
}