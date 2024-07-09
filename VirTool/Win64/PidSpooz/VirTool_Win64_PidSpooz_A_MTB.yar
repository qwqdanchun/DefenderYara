
rule VirTool_Win64_PidSpooz_A_MTB{
	meta:
		description = "VirTool:Win64/PidSpooz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {8b 45 24 8b d0 b9 40 00 00 00 ff 15 ?? ?? ?? ?? 48 89 45 48 48 8d ?? ?? 48 89 44 24 20 44 8b 4d 24 4c 8b 45 48 ba 19 00 00 00 48 8b 4d 08 ff 15 ?? ?? ?? ?? 33 d2 48 8b 45 48 48 8b 08 ff 15 ?? ?? ?? ?? 8b 00 89 45 64 81 7d 64 00 30 00 00 } //1
		$a_02_1 = {48 89 44 24 40 48 c7 44 24 38 00 00 00 00 48 c7 44 24 30 00 00 00 00 c7 44 24 28 10 00 08 00 c7 44 24 20 00 00 00 00 45 33 c9 45 33 c0 33 d2 48 8b 8d 68 03 00 00 ff 15 ?? ?? ?? ?? 44 8b 85 a8 00 00 00 48 8b 95 68 03 00 00 } //1
		$a_02_2 = {48 8b f8 33 c0 b9 68 00 00 00 f3 aa 4c 8d ?? ?? ?? ?? ?? 45 33 c0 ba 01 00 00 00 33 c9 ff 15 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 4c 8b 85 c8 00 00 00 33 d2 48 8b c8 ff 15 ?? ?? ?? ?? 48 89 45 78 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}