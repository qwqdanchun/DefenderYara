
rule Trojan_BAT_Taskun_AADO_MTB{
	meta:
		description = "Trojan:BAT/Taskun.AADO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {16 13 05 2b 22 00 06 11 05 18 6f 90 01 01 00 00 0a 13 06 07 11 05 18 5b 11 06 1f 10 28 90 01 01 00 00 0a 9c 00 11 05 18 58 13 05 11 05 06 6f 90 01 01 00 00 0a fe 04 13 07 11 07 2d ce 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}