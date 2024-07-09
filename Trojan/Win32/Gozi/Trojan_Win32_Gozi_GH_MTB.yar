
rule Trojan_Win32_Gozi_GH_MTB{
	meta:
		description = "Trojan:Win32/Gozi.GH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b d7 2b d0 81 c2 ?? ?? ?? ?? 8b c2 6b d2 ?? 8b ee f7 dd 2b ea 03 dd 89 0d ?? ?? ?? ?? 89 1d ?? ?? ?? ?? ba ?? ?? ?? ?? 0f b7 2d ?? ?? ?? ?? 3b cd } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Gozi_GH_MTB_2{
	meta:
		description = "Trojan:Win32/Gozi.GH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {6a 00 6a 05 a1 ?? ?? ?? ?? 50 8b 0d ?? ?? ?? ?? 51 e8 ?? ?? ?? ?? 03 f0 8b 15 ?? ?? ?? ?? 2b d6 89 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 8d 54 01 ?? 88 15 ?? ?? ?? ?? ff 65 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Gozi_GH_MTB_3{
	meta:
		description = "Trojan:Win32/Gozi.GH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_02_0 = {8a 10 88 91 ?? ?? ?? ?? 83 c1 01 33 c0 8d a4 24 00 00 00 00 3b ?? 74 } //10
		$a_02_1 = {0f b6 d0 03 d6 8d 54 1a ?? 8b 5c 24 ?? 89 15 ?? ?? ?? ?? 8a 54 24 ?? 81 c5 ?? ?? ?? ?? 02 d1 80 ea ?? 89 2b 83 c3 ?? 02 c2 83 6c 24 ?? 01 89 2d ?? ?? ?? ?? 89 5c 24 ?? 0f 85 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10) >=20
 
}