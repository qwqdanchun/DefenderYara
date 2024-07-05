
rule Trojan_Win64_CobaltStrike_KH_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.KH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 88 0c 0a 99 41 f7 f9 48 63 d2 0f b6 04 17 41 88 04 0b 48 83 c1 90 01 01 48 81 f9 90 00 } //01 00 
		$a_03_1 = {0f b6 d2 0f b6 84 14 90 01 04 40 88 bc 14 90 01 04 88 84 0c 90 01 04 02 84 14 90 01 04 0f b6 c0 0f b6 84 04 90 01 04 42 32 04 0e 43 88 04 08 49 83 c1 90 01 01 4c 39 cb 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_CobaltStrike_KH_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.KH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 d8 48 ff c5 e8 90 01 04 0f b7 db 48 8d 0d 90 01 04 2b d8 8b c6 c1 c8 90 01 01 03 d8 e8 90 01 04 48 8d 0d 90 01 04 2b d8 e8 90 00 } //01 00 
		$a_03_1 = {03 d8 48 8d 0d 90 01 04 e8 90 01 04 48 8d 0d 90 01 04 03 d8 e8 90 01 04 48 8d 0d 90 01 04 03 d8 e8 90 01 04 03 c3 33 f0 80 7d 90 01 02 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}