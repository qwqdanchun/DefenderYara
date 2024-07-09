
rule Trojan_Win64_CobaltStrike_MER_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.MER!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 ff c2 48 8b 43 ?? 0f b6 14 0a 41 32 54 01 ff 48 8b 83 ?? ?? ?? ?? 41 88 54 01 ff 48 8b 83 ?? ?? ?? ?? 48 8b 93 ?? ?? ?? ?? 48 8b 88 ?? ?? ?? ?? 48 81 f1 75 0e 00 00 48 29 8a d8 00 00 00 33 d2 4c 8b 83 ?? ?? ?? ?? 48 63 8b ?? ?? ?? ?? 48 81 c1 b6 eb ff ff 49 8b 80 ?? ?? ?? ?? 48 03 c1 48 63 4b ?? 48 f7 f1 49 63 c2 89 93 ?? ?? ?? ?? 49 8b 88 ?? ?? ?? ?? 48 81 c1 a3 3a 00 00 48 3b c1 0f 82 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}