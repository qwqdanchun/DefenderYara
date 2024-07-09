
rule Trojan_Win64_IcedID_CP_MTB{
	meta:
		description = "Trojan:Win64/IcedID.CP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 8b 54 24 20 88 04 0a eb ?? ?? ?? 39 04 24 ?? ?? 48 63 04 24 eb ?? ?? ?? ?? ?? ?? 89 04 24 8b 44 24 28 ?? ?? 8b c1 48 63 0c 24 ?? ?? 48 8b 4c 24 30 0f b6 04 01 } //5
		$a_03_1 = {89 54 24 10 48 89 4c 24 08 ?? ?? 44 89 4c 24 20 4c 89 44 24 18 ?? ?? 8b 4c 24 04 33 c8 ?? ?? 89 44 24 04 8b 04 24 ?? ?? 8b c2 48 98 ?? ?? 48 8b 4c 24 20 } //5
		$a_03_2 = {0f b6 04 01 ?? ?? 99 f7 7c 24 38 ?? ?? 48 83 ec 18 c7 } //5
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5) >=15
 
}