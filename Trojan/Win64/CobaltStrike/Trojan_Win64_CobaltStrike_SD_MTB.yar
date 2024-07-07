
rule Trojan_Win64_CobaltStrike_SD_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.SD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 63 c8 48 8d 94 24 90 01 04 48 03 d1 0f b6 0a 41 88 0c 30 44 88 0a 41 0f b6 14 30 49 03 d1 0f b6 ca 0f b6 94 0c 90 01 04 41 30 12 49 ff c2 49 83 eb 01 75 91 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_CobaltStrike_SD_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.SD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 00 48 90 01 07 0f b6 09 33 c1 88 44 24 90 01 01 48 90 01 04 48 90 0a 45 00 48 90 01 04 48 90 01 04 48 90 01 02 48 90 01 04 48 90 01 02 48 90 01 02 48 90 01 02 48 90 01 07 48 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}