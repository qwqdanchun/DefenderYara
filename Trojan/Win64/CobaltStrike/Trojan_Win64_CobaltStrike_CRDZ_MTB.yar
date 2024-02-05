
rule Trojan_Win64_CobaltStrike_CRDZ_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CRDZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b 0b 48 8b d7 ff 15 90 01 04 85 c0 75 90 01 01 48 83 c7 10 48 83 c3 08 48 3b dd 7c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}