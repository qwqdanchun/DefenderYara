
rule Trojan_Win32_Redline_RAX_MTB{
	meta:
		description = "Trojan:Win32/Redline.RAX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c7 c1 e8 ?? 03 45 ?? 68 ?? ?? ?? ?? 33 45 ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 31 45 ?? 2b 75 ?? 8d 45 ?? 50 e8 ?? ?? ?? ?? ff 4d ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}