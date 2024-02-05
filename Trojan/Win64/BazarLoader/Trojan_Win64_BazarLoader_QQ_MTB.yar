
rule Trojan_Win64_BazarLoader_QQ_MTB{
	meta:
		description = "Trojan:Win64/BazarLoader.QQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_00_0 = {48 8b 84 24 c0 00 00 00 8a 00 48 8b 8c 24 b8 00 00 00 88 01 0f b6 44 24 37 4c 89 54 24 38 48 8b 4c 24 38 } //0a 00 
		$a_02_1 = {89 c1 2b 4c 24 28 0f af 4c 24 28 83 c1 fd 89 4c 24 28 b9 90 01 04 e9 90 01 04 48 8b 44 24 38 8a 44 24 4e 48 8b 0d 90 01 04 88 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}