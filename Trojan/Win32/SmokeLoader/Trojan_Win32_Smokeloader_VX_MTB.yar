
rule Trojan_Win32_Smokeloader_VX_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.VX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {8b 4d e8 8b c3 d3 e8 89 45 f8 8b 45 d0 01 45 f8 8b f3 c1 e6 04 03 75 d8 33 75 f0 81 3d e4 ba 8e 00 } //0a 00 
		$a_03_1 = {56 69 72 74 c7 05 90 01 04 75 61 6c 50 c7 05 90 01 04 72 6f 74 65 66 c7 05 90 01 04 63 74 c6 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}