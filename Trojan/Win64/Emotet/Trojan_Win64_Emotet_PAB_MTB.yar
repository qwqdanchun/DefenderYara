
rule Trojan_Win64_Emotet_PAB_MTB{
	meta:
		description = "Trojan:Win64/Emotet.PAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 f7 ea 41 2b d2 41 83 c2 90 01 01 c1 fa 90 01 01 8b c2 c1 e8 90 01 01 03 c2 48 98 48 6b c0 90 01 01 49 03 c0 0f b6 0c 01 43 32 4c 19 90 01 01 48 83 ee 01 41 88 4b 90 01 01 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}