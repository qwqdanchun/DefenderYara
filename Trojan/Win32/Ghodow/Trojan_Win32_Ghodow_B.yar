
rule Trojan_Win32_Ghodow_B{
	meta:
		description = "Trojan:Win32/Ghodow.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {6a 02 6a 00 68 00 fd ff ff 55 90 01 04 ff d7 90 00 } //02 00 
		$a_02_1 = {68 73 00 09 00 90 01 01 ff 15 90 01 04 83 f8 7a 89 44 24 10 75 90 00 } //02 00 
		$a_02_2 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 03 90 02 08 68 00 00 00 c0 90 00 } //01 00 
		$a_01_3 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 64 72 69 76 65 30 00 } //01 00 
		$a_01_4 = {75 6e 69 6f 6e 69 64 3d 25 73 26 6d 61 63 3d 25 73 26 69 65 76 65 72 3d 31 26 61 6c 65 78 61 3d 30 26 73 79 73 74 65 6d 76 65 72 3d 32 26 61 6e 74 69 73 6f 66 74 77 61 72 65 3d 30 26 70 6c 75 67 69 6e 76 65 72 3d 25 73 00 } //01 00 
		$a_01_5 = {25 73 2f 63 6f 75 6e 74 2e 61 73 70 78 3f 69 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}