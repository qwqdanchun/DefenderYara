
rule Trojan_Win32_Redline_NM_MTB{
	meta:
		description = "Trojan:Win32/Redline.NM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c6 d3 e8 03 45 ?? 89 45 ?? 33 45 ?? 31 45 ?? 2b 5d ?? 8d 45 ?? 89 5d ?? e8 ?? ?? ?? ?? ff 4d ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}