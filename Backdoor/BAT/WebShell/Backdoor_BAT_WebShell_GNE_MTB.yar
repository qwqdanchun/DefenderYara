
rule Backdoor_BAT_WebShell_GNE_MTB{
	meta:
		description = "Backdoor:BAT/WebShell.GNE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0a 06 06 6f 90 01 03 0a 07 16 07 8e 69 6f 90 01 03 0a 28 90 01 03 0a 72 a6 01 00 70 6f 90 01 03 0a 02 90 01 03 00 0a 26 2a 90 00 } //01 00 
		$a_80_1 = {61 73 6e 75 79 6c 62 67 61 75 62 62 } //asnuylbgaubb  00 00 
	condition:
		any of ($a_*)
 
}