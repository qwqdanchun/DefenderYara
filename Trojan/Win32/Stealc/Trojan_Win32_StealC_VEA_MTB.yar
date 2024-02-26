
rule Trojan_Win32_StealC_VEA_MTB{
	meta:
		description = "Trojan:Win32/StealC.VEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b d6 d3 ea 8d 04 37 89 45 e8 c7 05 90 01 04 ee 3d ea f4 03 55 d4 8b 45 e8 31 45 fc 33 55 fc 81 3d 90 01 04 13 02 00 00 89 55 e8 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}