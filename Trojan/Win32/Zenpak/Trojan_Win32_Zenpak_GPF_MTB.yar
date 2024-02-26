
rule Trojan_Win32_Zenpak_GPF_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.GPF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 65 00 6d 00 74 00 62 00 63 00 69 00 72 } //01 00 
		$a_01_1 = {4c 00 6e 00 37 00 79 00 63 00 72 00 65 00 61 00 74 00 65 00 64 } //01 00 
		$a_01_2 = {65 00 76 00 65 00 6e 00 69 00 6e 00 67 00 63 00 72 00 65 00 65 00 70 00 69 00 6e 00 67 00 46 00 48 00 34 00 57 00 61 00 73 } //00 00 
	condition:
		any of ($a_*)
 
}