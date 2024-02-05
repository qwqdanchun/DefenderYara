
rule Trojan_Win32_Tarifarch_X{
	meta:
		description = "Trojan:Win32/Tarifarch.X,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {2f 00 73 00 65 00 61 00 72 00 63 00 68 00 3f 00 69 00 64 00 3d 00 } //01 00 
		$a_00_1 = {00 00 2f 00 3f 00 70 00 3d 00 69 00 6e 00 64 00 65 00 78 00 2e 00 6b 00 63 00 61 00 00 00 } //01 00 
		$a_03_2 = {15 62 74 6e 53 75 62 73 63 72 69 70 74 69 6f 6e 73 43 6c 69 63 6b 17 00 90 01 04 10 6f 6e 4b 63 61 70 74 63 68 61 52 65 6c 6f 61 64 1b 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}