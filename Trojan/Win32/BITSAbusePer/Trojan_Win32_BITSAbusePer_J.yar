
rule Trojan_Win32_BITSAbusePer_J{
	meta:
		description = "Trojan:Win32/BITSAbusePer.J,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 03 00 00 05 00 "
		
	strings :
		$a_02_0 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 90 02 20 2f 00 74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 90 00 } //05 00 
		$a_02_1 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 90 02 20 2f 00 61 00 64 00 64 00 66 00 69 00 6c 00 65 00 90 00 } //05 00 
		$a_02_2 = {62 00 69 00 74 00 73 00 61 00 64 00 6d 00 69 00 6e 00 90 02 20 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}