
rule Trojan_Win32_Cerobgar_C{
	meta:
		description = "Trojan:Win32/Cerobgar.C,SIGNATURE_TYPE_CMDHSTR_EXT,65 00 65 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 } //64 00  cmd
		$a_02_1 = {73 00 74 00 61 00 72 00 74 00 90 02 02 6d 00 73 00 69 00 65 00 78 00 65 00 63 00 90 02 30 68 00 74 00 74 00 70 00 90 02 50 3a 00 38 00 30 00 38 00 30 00 90 02 50 21 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 6e 00 61 00 6d 00 65 00 21 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}