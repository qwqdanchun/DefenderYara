
rule Trojan_Win32_Copak_CY_MTB{
	meta:
		description = "Trojan:Win32/Copak.CY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {31 08 ba 29 78 5e 5e 81 c0 04 00 00 00 81 eb 90 02 04 39 f0 75 e4 90 00 } //02 00 
		$a_03_1 = {31 37 29 d0 21 d2 81 c7 04 00 00 00 68 90 02 04 8b 04 24 83 c4 04 01 c2 39 cf 75 de 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}