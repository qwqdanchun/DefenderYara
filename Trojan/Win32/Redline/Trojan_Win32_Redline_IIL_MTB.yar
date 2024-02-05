
rule Trojan_Win32_Redline_IIL_MTB{
	meta:
		description = "Trojan:Win32/Redline.IIL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b c6 c1 e8 90 01 01 c7 05 90 01 08 c7 05 90 01 08 89 44 24 14 8b 44 24 24 01 44 24 14 8b 4c 24 14 8b 44 24 10 33 cd 33 c1 2b f8 81 c3 47 86 c8 61 ff 4c 24 18 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}