
rule Backdoor_WinNT_Nuwar_E{
	meta:
		description = "Backdoor:WinNT/Nuwar.E,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 65 fc 00 33 c0 85 c9 76 11 8a 15 90 01 02 01 00 30 90 90 90 01 02 01 00 40 3b c1 72 ef 53 8b 1d 90 01 02 01 00 6a 40 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}