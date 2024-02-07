
rule Trojan_Win32_Maener_B{
	meta:
		description = "Trojan:Win32/Maener.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {52 61 75 6d 2d 90 02 05 77 69 74 68 90 02 05 4d 65 90 00 } //01 00 
		$a_01_1 = {74 6f 6f 6c 73 2f 72 65 67 77 72 69 74 65 2e 72 61 75 6d 5f 65 6e 63 72 79 70 74 65 64 } //01 00  tools/regwrite.raum_encrypted
		$a_01_2 = {6d 69 6e 69 6e 67 5f 69 6e 66 6f 00 75 70 64 61 74 65 5f 69 6e 66 6f } //01 00 
		$a_03_3 = {36 34 62 69 74 90 02 05 33 32 62 69 74 90 00 } //01 00 
		$a_03_4 = {53 74 6f 70 70 65 72 2d 6d 75 74 65 78 90 02 05 50 47 68 30 62 57 77 3d 90 02 05 5c 62 69 6e 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 02 
	condition:
		any of ($a_*)
 
}