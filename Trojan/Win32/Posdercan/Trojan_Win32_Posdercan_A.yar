
rule Trojan_Win32_Posdercan_A{
	meta:
		description = "Trojan:Win32/Posdercan.A,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_1 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_2 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_3 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_4 = {6d 00 73 00 68 00 74 00 6d 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //02 00 
		$a_00_5 = {72 00 61 00 77 00 2e 00 67 00 69 00 74 00 68 00 75 00 62 00 75 00 73 00 65 00 72 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 } //00 00  raw.githubusercontent
	condition:
		any of ($a_*)
 
}