
rule Trojan_Win32_Redline_GFP_MTB{
	meta:
		description = "Trojan:Win32/Redline.GFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c6 83 e0 03 8a 80 ?? ?? ?? ?? 32 04 37 88 45 d3 ba ?? ?? ?? ?? b9 ?? ?? ?? ?? e8 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 59 0f b6 1c 37 } //10
		$a_03_1 = {8b c6 83 e0 03 8a 80 ?? ?? ?? ?? 32 04 33 88 45 d3 ba ?? ?? ?? ?? b9 ?? ?? ?? ?? e8 ?? ?? ?? ?? 51 8b c8 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=10
 
}