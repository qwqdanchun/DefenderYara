
rule Trojan_Win32_Busky_D{
	meta:
		description = "Trojan:Win32/Busky.D,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {c7 45 fc 00 00 00 00 e9 } //0a 00 
		$a_00_1 = {81 7d fc 80 00 00 00 0f 8d } //01 00 
		$a_03_2 = {6f 75 74 2e 64 6c 6c 00 90 02 05 49 6e 69 74 00 50 72 6f 63 90 00 } //01 00 
		$a_01_3 = {53 76 36 4d 56 61 56 31 39 44 } //01 00  Sv6MVaV19D
		$a_03_4 = {2f 64 6f 77 6e 6c 6f 61 64 90 02 01 2e 70 68 70 3f 61 66 66 69 64 3d 90 05 05 03 30 2d 39 26 73 75 62 61 63 63 3d 90 05 06 03 30 2d 39 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}