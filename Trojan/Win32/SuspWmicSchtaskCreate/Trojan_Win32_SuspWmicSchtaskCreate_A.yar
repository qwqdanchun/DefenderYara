
rule Trojan_Win32_SuspWmicSchtaskCreate_A{
	meta:
		description = "Trojan:Win32/SuspWmicSchtaskCreate.A,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 02 00 00 02 00 "
		
	strings :
		$a_02_0 = {77 00 6d 00 69 00 63 00 2e 00 65 00 78 00 65 00 90 02 20 6a 00 6f 00 62 00 90 02 20 63 00 72 00 65 00 61 00 74 00 65 00 90 00 } //02 00 
		$a_02_1 = {77 00 6d 00 69 00 63 00 90 02 20 6a 00 6f 00 62 00 90 02 20 63 00 72 00 65 00 61 00 74 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}