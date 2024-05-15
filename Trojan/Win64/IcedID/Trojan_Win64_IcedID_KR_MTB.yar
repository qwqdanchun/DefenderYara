
rule Trojan_Win64_IcedID_KR_MTB{
	meta:
		description = "Trojan:Win64/IcedID.KR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 63 c8 48 8b c6 48 f7 e1 48 c1 ea 90 01 01 48 8d 04 d2 48 03 c0 48 2b c8 0f b6 44 0c 90 01 01 41 30 41 90 01 01 49 ff cb 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}