
rule Trojan_Win32_Amadey_ADZ_MTB{
	meta:
		description = "Trojan:Win32/Amadey.ADZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 f6 c6 44 24 90 01 01 83 8a 44 34 90 01 01 34 a9 0f b6 c0 66 89 44 74 90 01 01 46 83 fe 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}