
rule Trojan_Win32_Redline_GJD_MTB{
	meta:
		description = "Trojan:Win32/Redline.GJD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c7 c1 e8 05 c7 05 ?? ?? ?? ?? 19 36 6b ff c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 89 44 24 ?? 8b 44 24 ?? 01 44 24 ?? 03 ef 31 6c 24 ?? 8b 44 24 ?? 31 44 24 ?? 2b 74 24 ?? 81 3d } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}