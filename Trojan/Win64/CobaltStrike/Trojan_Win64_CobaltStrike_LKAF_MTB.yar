
rule Trojan_Win64_CobaltStrike_LKAF_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.LKAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b6 02 48 8d 52 01 04 90 01 01 34 90 01 01 88 42 ff 48 83 ef 01 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}