
rule Trojan_Win32_Zenpak_BW_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.BW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {89 e5 8a 45 ?? 8a 4d 08 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 30 c8 0f b6 c0 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}