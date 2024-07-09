
rule Trojan_Win32_Redline_GKW_MTB{
	meta:
		description = "Trojan:Win32/Redline.GKW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 84 1c ?? ?? ?? ?? 88 84 0c ?? ?? ?? ?? 8a 44 24 ?? 88 84 1c ?? ?? ?? ?? 0f b6 84 0c ?? ?? ?? ?? 03 44 24 ?? 0f b6 c0 0f b6 84 04 ?? ?? ?? ?? 30 86 ?? ?? ?? ?? 46 81 fe ?? ?? ?? ?? 0f 82 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Redline_GKW_MTB_2{
	meta:
		description = "Trojan:Win32/Redline.GKW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f8 33 d2 f7 75 e8 0f b6 92 ?? ?? ?? ?? 33 ca 88 4d ff 8b 45 f8 8a 88 ?? ?? ?? ?? 88 4d fd 0f b6 55 ?? 8b 45 f8 0f b6 88 ?? ?? ?? ?? 03 ca 8b 55 f8 88 8a ?? ?? ?? ?? 0f b6 45 fd 8b 4d f8 0f b6 91 ?? ?? ?? ?? 2b d0 8b 45 f8 88 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}