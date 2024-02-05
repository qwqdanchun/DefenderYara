
rule Trojan_Win32_Glupteba_PS_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.PS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 02 00 "
		
	strings :
		$a_02_0 = {8b c7 c1 e8 05 c7 05 90 02 08 c7 05 90 02 08 89 90 02 03 8b 90 02 03 01 90 02 03 81 3d 90 02 08 90 18 8b 90 02 03 33 90 01 01 33 90 01 01 8d 90 02 03 e8 90 02 04 81 3d 90 02 08 90 18 81 90 02 05 83 90 02 04 0f 85 90 00 } //01 00 
		$a_02_1 = {75 04 6a 00 ff d3 81 3d 90 02 08 75 06 6a 00 6a 00 ff d5 56 e8 90 02 04 83 c6 08 83 ef 01 75 d0 90 09 0a 00 81 3d 90 00 } //01 00 
		$a_02_2 = {5f 5e 5d 89 10 5b 81 90 02 05 c2 90 09 0e 00 8b 90 02 06 8b 90 02 03 89 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}