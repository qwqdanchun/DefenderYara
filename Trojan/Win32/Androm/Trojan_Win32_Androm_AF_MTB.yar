
rule Trojan_Win32_Androm_AF_MTB{
	meta:
		description = "Trojan:Win32/Androm.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 d2 52 50 8b c3 90 02 04 03 90 02 04 13 54 90 02 04 71 90 01 01 e8 90 02 04 83 c4 90 01 01 8a 00 50 8b c7 33 d2 52 50 8b c3 90 02 04 03 90 01 02 13 54 90 01 02 71 90 01 01 e8 90 02 04 83 c4 90 01 01 5a 88 10 90 02 04 f3 0f 10 e4 90 02 04 43 4e 75 90 00 } //01 00 
		$a_03_1 = {f3 0f 10 ed 33 db a1 90 02 06 03 c3 73 90 01 01 e8 90 02 06 8a 00 90 02 06 f3 0f 10 c9 f3 0f 10 e4 34 90 01 01 8b 15 90 02 06 03 d3 73 90 01 01 e8 90 02 06 88 02 f3 0f 10 db f3 0f 10 ed f3 0f 10 ff 43 81 fb 90 01 04 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}