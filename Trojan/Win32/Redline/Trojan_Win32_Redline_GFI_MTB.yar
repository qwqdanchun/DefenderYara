
rule Trojan_Win32_Redline_GFI_MTB{
	meta:
		description = "Trojan:Win32/Redline.GFI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {33 ca f7 d1 6b c9 90 01 01 0f b6 05 90 01 04 03 8d 90 01 04 8d 8c 08 90 01 04 88 4d fb c6 05 90 01 05 0f b7 55 ec f7 da 1b d2 83 c2 01 0f bf 45 d8 2b d0 f7 da 1b d2 83 c2 90 01 01 66 89 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}