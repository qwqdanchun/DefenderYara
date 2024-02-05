
rule Trojan_BAT_Nanocore_NNC_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.NNC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {06 14 17 8d 03 00 00 01 0b 07 16 16 8d 90 01 01 00 00 01 a2 00 07 6f 90 01 01 00 00 0a 26 2b 0a 00 06 14 14 6f 90 01 01 00 00 0a 90 00 } //01 00 
		$a_01_1 = {4b 00 6c 00 65 00 70 00 61 00 73 00 73 00 66 00 69 00 6c 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}