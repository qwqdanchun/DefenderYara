
rule Worm_Win32_Gamarue_V{
	meta:
		description = "Worm:Win32/Gamarue.V,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {32 d1 80 c2 42 88 14 30 46 3b 35 90 01 04 72 e7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}