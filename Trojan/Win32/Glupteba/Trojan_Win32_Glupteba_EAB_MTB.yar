
rule Trojan_Win32_Glupteba_EAB_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.EAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {d3 ea c7 05 90 01 04 ee 3d ea f4 03 55 e0 8b 45 f0 31 45 fc 33 55 fc 89 55 f0 8b 45 f0 83 45 f4 64 29 45 f4 83 6d f4 64 8b 45 f4 90 00 } //01 00 
		$a_03_1 = {33 c6 2b f8 81 c3 47 86 c8 61 83 6d ec 90 01 01 89 45 fc 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}