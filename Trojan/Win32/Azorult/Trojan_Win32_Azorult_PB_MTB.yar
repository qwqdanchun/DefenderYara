
rule Trojan_Win32_Azorult_PB_MTB{
	meta:
		description = "Trojan:Win32/Azorult.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 02 00 00 14 00 "
		
	strings :
		$a_02_0 = {bf 06 f8 e5 c2 81 fe 87 0d 00 00 0f 44 c7 8b fa a3 90 01 04 8b 45 90 01 01 c1 ef 05 03 c1 03 7d 90 01 01 33 f8 8b 45 90 01 01 03 c2 33 f8 81 fe 98 05 00 00 75 90 00 } //01 00 
		$a_00_1 = {89 5d f0 8b 03 89 45 fc 57 8b fa 81 fe 64 09 00 00 75 } //00 00 
	condition:
		any of ($a_*)
 
}