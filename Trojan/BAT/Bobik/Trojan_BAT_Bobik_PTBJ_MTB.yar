
rule Trojan_BAT_Bobik_PTBJ_MTB{
	meta:
		description = "Trojan:BAT/Bobik.PTBJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {6f 1c 00 00 0a 0b 12 01 28 90 01 01 00 00 0a 73 1f 00 00 0a 0a 06 28 90 01 01 00 00 0a 0c 00 08 16 16 16 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}