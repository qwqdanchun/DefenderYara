
rule Trojan_Win64_CobaltStrike_CBYB_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CBYB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 f7 e9 41 8b c9 41 ff c1 c1 fa 90 01 01 8b c2 c1 e8 90 01 01 03 d0 6b c2 90 01 01 2b c8 48 63 c1 0f b6 4c 04 90 01 01 41 30 4a ff 41 81 f9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}