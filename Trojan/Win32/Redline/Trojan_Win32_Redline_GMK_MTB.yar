
rule Trojan_Win32_Redline_GMK_MTB{
	meta:
		description = "Trojan:Win32/Redline.GMK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {89 c8 f7 e2 89 c8 29 d0 d1 e8 01 d0 c1 e8 90 01 01 89 c2 c1 e2 90 01 01 29 c2 89 c8 29 d0 0f b6 84 05 90 01 04 31 c3 89 da 8b 45 90 01 01 05 90 01 04 88 10 83 45 90 01 02 8b 45 90 01 01 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}