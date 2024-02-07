
rule Trojan_Win32_Scarsi_AXGR_MTB{
	meta:
		description = "Trojan:Win32/Scarsi.AXGR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {78 00 72 00 6b 00 78 00 6a 00 70 00 77 00 6e 00 76 00 } //01 00  xrkxjpwnv
		$a_01_1 = {41 00 64 00 64 00 69 00 74 00 69 00 76 00 65 00 53 00 69 00 33 00 34 00 38 00 35 00 32 00 32 00 36 00 32 00 30 00 31 00 39 00 } //01 00  AdditiveSi34852262019
		$a_01_2 = {70 00 72 00 6a 00 41 00 64 00 64 00 69 00 74 00 69 00 76 00 65 00 53 00 69 00 6e 00 74 00 68 00 65 00 73 00 69 00 73 00 2e 00 76 00 62 00 70 00 } //01 00  prjAdditiveSinthesis.vbp
		$a_01_3 = {53 00 68 00 6f 00 70 00 61 00 72 00 61 00 47 00 72 00 69 00 7a 00 6c 00 69 00 30 00 31 00 } //01 00  ShoparaGrizli01
		$a_81_4 = {41 64 64 69 74 69 76 65 20 53 69 6e 74 68 65 73 69 73 20 62 79 20 4a 6f 72 67 65 20 66 6c 6f 72 65 73 2e 50 2e } //01 00  Additive Sinthesis by Jorge flores.P.
		$a_81_5 = {4d 61 6b 65 20 57 61 76 65 2d 2d 2d 48 61 63 65 72 20 57 61 76 65 } //00 00  Make Wave---Hacer Wave
	condition:
		any of ($a_*)
 
}