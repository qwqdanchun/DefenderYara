
rule Trojan_Win32_Redline_GBP_MTB{
	meta:
		description = "Trojan:Win32/Redline.GBP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b c8 31 d2 8b c6 83 c4 04 f7 f1 8a 82 90 01 04 32 c3 88 86 90 01 04 46 81 fe 90 01 04 72 90 00 } //0a 00 
		$a_03_1 = {89 c1 33 d2 8b c6 83 c4 04 f7 f1 8a 82 90 01 04 32 c3 88 86 90 01 04 46 81 fe 90 01 04 72 90 00 } //01 00 
		$a_03_2 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 90 02 20 5c 00 76 00 62 00 63 00 2e 00 65 00 78 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}