
rule Trojan_Win32_NetShareDisc_NS{
	meta:
		description = "Trojan:Win32/NetShareDisc.NS,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {6e 00 65 00 74 00 20 00 90 02 10 73 00 68 00 61 00 72 00 65 00 90 00 } //01 00 
		$a_02_1 = {6e 00 65 00 74 00 2e 00 65 00 78 00 65 00 90 02 10 73 00 68 00 61 00 72 00 65 00 90 00 } //01 00 
		$a_02_2 = {6e 00 65 00 74 00 31 00 20 00 90 02 10 73 00 68 00 61 00 72 00 65 00 90 00 } //01 00 
		$a_02_3 = {6e 00 65 00 74 00 31 00 2e 00 65 00 78 00 65 00 90 02 10 73 00 68 00 61 00 72 00 65 00 90 00 } //fb ff 
		$a_00_4 = {53 00 65 00 61 00 72 00 63 00 68 00 49 00 6e 00 64 00 65 00 78 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}