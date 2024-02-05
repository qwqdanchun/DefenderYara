
rule Trojan_Win32_Redline_GKU_MTB{
	meta:
		description = "Trojan:Win32/Redline.GKU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0f b6 4d eb 8b 45 ec 33 d2 f7 75 dc 0f b6 92 90 01 04 33 ca 88 4d fb 8b 45 ec 8a 88 90 01 04 88 4d ea 0f b6 55 fb 8b 45 ec 0f b6 88 90 01 04 03 ca 8b 55 ec 88 8a 90 01 04 0f b6 45 90 00 } //01 00 
		$a_03_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 90 02 20 5c 00 76 00 62 00 63 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}