
rule Trojan_Win32_Kovter_RPT_MTB{
	meta:
		description = "Trojan:Win32/Kovter.RPT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {c7 00 f8 66 4d 98 90 02 15 c7 00 65 f2 0f fc 90 02 15 c7 00 e4 66 c9 66 90 02 15 c7 00 66 0f e2 ed 90 02 15 c7 00 80 ef 5d 63 90 02 15 c7 00 0b 13 a9 e7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}