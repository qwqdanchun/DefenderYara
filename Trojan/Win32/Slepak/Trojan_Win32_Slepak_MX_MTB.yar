
rule Trojan_Win32_Slepak_MX_MTB{
	meta:
		description = "Trojan:Win32/Slepak.MX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {69 c0 ef 0d 00 00 8b 37 66 2b d0 a1 90 01 04 66 89 15 90 01 04 81 c6 70 3b 07 01 33 d2 89 35 90 01 04 3b 15 90 01 04 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}