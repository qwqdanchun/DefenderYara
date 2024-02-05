
rule Trojan_Win64_Emotet_PAO_MTB{
	meta:
		description = "Trojan:Win64/Emotet.PAO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 03 d0 8b cb c1 fa 05 83 c3 03 8b c2 c1 e8 1f 03 d0 6b c2 38 2b c8 48 8b 05 90 01 04 83 c1 02 48 63 c9 0f b6 0c 01 42 32 4c 0e 90 01 01 41 88 49 90 01 01 49 ff ca 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Emotet_PAO_MTB_2{
	meta:
		description = "Trojan:Win64/Emotet.PAO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {f7 ed 2b d5 83 c5 90 01 01 c1 fa 90 01 01 8b c2 c1 e8 90 01 01 03 c2 48 98 48 6b c0 90 01 01 49 03 c1 0f b6 04 08 41 8d 48 ff 41 32 44 32 fd 88 46 fd b8 90 01 04 f7 e9 2b d1 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}