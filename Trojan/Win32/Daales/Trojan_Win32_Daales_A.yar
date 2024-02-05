
rule Trojan_Win32_Daales_A{
	meta:
		description = "Trojan:Win32/Daales.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {2f 75 70 64 2f 78 78 2e 70 68 70 3f 69 64 3d 90 01 03 26 73 69 64 3d 90 00 } //01 00 
		$a_02_1 = {2f 75 70 64 2f 63 68 65 63 6b 2e 70 68 70 3f 76 65 72 3d 30 26 63 76 65 72 3d 30 26 69 64 3d 90 01 04 64 6f 77 6e 6c 6f 61 64 00 73 75 63 63 65 73 73 00 31 30 32 33 00 90 00 } //01 00 
		$a_00_2 = {5c 44 69 61 6c 65 72 2e 64 6c 6c 00 41 74 74 65 6d 70 74 43 6f 6e 6e 65 63 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}