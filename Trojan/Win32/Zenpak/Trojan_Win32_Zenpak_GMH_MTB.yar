
rule Trojan_Win32_Zenpak_GMH_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.GMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {49 c6 85 91 ?? ?? ?? 6e c6 85 92 ?? ?? ?? 74 c6 85 93 ?? ?? ?? 65 c6 85 94 ?? ?? ?? 72 c6 85 95 ?? ?? ?? 6e c6 85 96 ?? ?? ?? 65 c6 85 97 ?? ?? ?? 74 c6 85 98 ?? ?? ?? 52 c6 85 99 ?? ?? ?? 65 c6 85 9a ?? ?? ?? 61 c6 85 9b ?? ?? ?? 64 c6 85 9c ?? ?? ?? 46 c6 85 9d ?? ?? ?? 69 c6 85 9e ?? ?? ?? 6c c6 85 9f ?? ?? ?? 65 c6 85 a0 ?? ?? ?? 00 6a 00 6a 00 6a 00 6a 00 8d 8d ?? ?? ?? ?? 51 ff 15 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}