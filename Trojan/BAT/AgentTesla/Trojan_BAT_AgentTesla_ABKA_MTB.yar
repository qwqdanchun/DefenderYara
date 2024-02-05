
rule Trojan_BAT_AgentTesla_ABKA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABKA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 03 00 "
		
	strings :
		$a_03_0 = {09 08 17 8d 90 01 03 01 25 16 11 04 8c 90 01 03 01 a2 14 28 90 01 03 0a 28 90 01 03 0a 1f 10 28 90 01 03 0a 86 6f 90 01 03 0a 00 11 04 90 00 } //03 00 
		$a_01_1 = {65 00 72 00 72 00 33 00 00 0f 43 00 51 00 4c 00 6b 00 6b 00 67 00 6b 00 00 1f 77 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 73 00 33 00 32 00 34 } //00 00 
	condition:
		any of ($a_*)
 
}