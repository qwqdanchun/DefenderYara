
rule Backdoor_BAT_WebShell_AM_MTB{
	meta:
		description = "Backdoor:BAT/WebShell.AM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {0a 0b 02 28 90 01 01 00 00 0a 02 28 90 01 01 00 00 0a 6f 90 02 02 00 0a 6f 90 02 02 00 0a 0c 73 90 02 02 00 0a 07 07 6f 90 02 02 00 0a 08 16 08 8e 69 6f 90 02 02 00 0a 28 90 02 02 00 0a 72 90 01 03 70 6f 90 02 02 00 0a 02 6f 90 02 02 00 0a 26 90 00 } //01 00 
		$a_01_1 = {38 00 63 00 30 00 64 00 30 00 65 00 38 00 33 00 36 00 61 00 62 00 36 00 32 00 66 00 36 00 35 00 } //00 00  8c0d0e836ab62f65
	condition:
		any of ($a_*)
 
}