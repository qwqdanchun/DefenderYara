
rule Trojan_Win32_Redline_GKS_MTB{
	meta:
		description = "Trojan:Win32/Redline.GKS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0f be 04 02 6b c0 90 01 01 6b c0 90 01 01 99 b9 90 01 04 f7 f9 6b c0 90 01 01 99 b9 90 01 04 f7 f9 8b 55 0c 03 55 f4 0f b6 0a 33 c8 8b 55 0c 03 55 f4 88 0a eb 90 00 } //0a 00 
		$a_03_1 = {0f be 04 11 6b c0 90 01 01 6b c0 90 01 01 99 b9 90 01 04 f7 f9 6b c0 90 01 01 99 b9 90 01 04 f7 f9 8b 55 0c 03 55 e0 0f be 0a 33 c8 8b 55 0c 03 55 e0 88 0a eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}