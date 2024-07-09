
rule Trojan_Win32_Redline_GBE_MTB{
	meta:
		description = "Trojan:Win32/Redline.GBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 1c 2e 8b c6 83 e0 03 8a 80 ?? ?? ?? ?? 32 c3 02 c3 88 04 2e 0f b6 c3 50 50 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 28 1c 2e 83 c4 0c 46 3b f7 72 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}