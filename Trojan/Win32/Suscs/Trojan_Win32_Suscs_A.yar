
rule Trojan_Win32_Suscs_A{
	meta:
		description = "Trojan:Win32/Suscs.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 90 02 ff 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 90 02 ff 2f 00 74 00 72 00 90 02 ff 63 00 73 00 63 00 72 00 69 00 70 00 74 00 90 02 ff 68 00 74 00 74 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}