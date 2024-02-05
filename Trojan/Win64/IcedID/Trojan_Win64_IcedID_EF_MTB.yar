
rule Trojan_Win64_IcedID_EF_MTB{
	meta:
		description = "Trojan:Win64/IcedID.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 f7 ec c1 fa 90 01 01 8b c2 c1 e8 90 01 01 03 c2 48 98 48 8d 0c c0 49 63 c4 41 83 c4 01 48 8d 14 88 48 8b 44 24 90 01 01 42 0f b6 8c 32 90 01 04 41 32 4c 00 ff 43 88 4c 18 ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}