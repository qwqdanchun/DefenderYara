
rule Trojan_Win64_Emotet_EL_MTB{
	meta:
		description = "Trojan:Win64/Emotet.EL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {4c 8b c8 4c 8d 55 90 01 01 4c 2b d0 0f 1f 40 00 66 0f 1f 84 00 00 00 00 00 b8 90 01 04 f7 ef c1 fa 90 01 01 8b c2 c1 e8 90 01 01 03 d0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}