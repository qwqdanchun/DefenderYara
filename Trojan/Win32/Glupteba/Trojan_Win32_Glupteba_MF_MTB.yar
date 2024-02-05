
rule Trojan_Win32_Glupteba_MF_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b c1 c1 e8 05 89 45 f8 8b 45 e8 01 45 f8 8b 45 f4 8b f1 c1 e6 04 03 75 d8 03 c1 33 f0 81 3d 90 01 08 c7 05 90 01 08 75 90 00 } //01 00 
		$a_02_1 = {8b 4d ec 83 0d 90 02 05 81 45 90 02 05 8b c7 c1 e8 05 03 45 e4 c7 05 90 01 08 33 45 dc 33 c6 2b c8 ff 4d f0 89 4d ec 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}