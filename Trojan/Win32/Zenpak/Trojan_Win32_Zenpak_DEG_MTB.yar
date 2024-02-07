
rule Trojan_Win32_Zenpak_DEG_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.DEG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {46 67 62 56 74 6d 64 34 36 64 65 } //01 00  FgbVtmd46de
		$a_81_1 = {6a 42 74 68 61 74 75 73 65 64 6f 48 64 } //01 00  jBthatusedoHd
		$a_81_2 = {73 36 6a 70 41 52 61 6e } //01 00  s6jpARan
		$a_81_3 = {63 33 63 6d 73 74 61 6e 64 61 72 64 39 64 69 77 79 } //00 00  c3cmstandard9diwy
	condition:
		any of ($a_*)
 
}