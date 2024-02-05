
rule PWS_Win32_Stealer_KM_MTB{
	meta:
		description = "PWS:Win32/Stealer.KM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {d3 e2 89 6c 24 90 01 01 89 54 24 90 01 01 8b 44 24 90 01 02 44 24 90 01 01 8b 44 24 90 01 02 44 24 90 01 01 81 3d 90 01 04 4a 04 00 00 75 90 00 } //01 00 
		$a_02_1 = {d3 e2 c7 45 90 01 05 89 55 90 01 01 8b 45 90 01 02 45 90 01 01 8b 45 90 01 02 45 90 01 01 81 3d 90 01 04 4a 04 00 00 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}