
rule Trojan_Win32_Cefyns_B{
	meta:
		description = "Trojan:Win32/Cefyns.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 02 00 "
		
	strings :
		$a_00_0 = {c6 06 2f 46 c6 06 3f 46 c6 06 6b 46 c6 06 65 } //02 00 
		$a_00_1 = {c6 06 2f 46 c6 06 77 46 c6 06 77 46 c6 06 77 } //02 00 
		$a_02_2 = {2e c6 44 24 90 01 01 65 c6 44 24 90 01 01 78 90 00 } //02 00 
		$a_03_3 = {67 65 74 5f 75 70 64 61 74 65 90 02 01 2e 70 68 70 3f 75 69 64 3d 90 00 } //02 00 
		$a_01_4 = {3f 6b 65 79 77 6f 72 64 3d 25 73 26 47 6f 3d 47 6f } //01 00  ?keyword=%s&Go=Go
		$a_01_5 = {6c 6e 74 6f 70 } //01 00  lntop
		$a_01_6 = {00 61 6c 74 63 6d 64 33 32 } //01 00 
		$a_01_7 = {26 6c 69 64 3d } //00 00  &lid=
	condition:
		any of ($a_*)
 
}