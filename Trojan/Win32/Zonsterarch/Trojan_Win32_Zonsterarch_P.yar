
rule Trojan_Win32_Zonsterarch_P{
	meta:
		description = "Trojan:Win32/Zonsterarch.P,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 61 79 6d 65 6e 74 5f 73 6d 73 5f 63 6f 73 74 } //01 00 
		$a_01_1 = {7a 69 70 63 6f 6e 6e 65 63 74 2e 69 6e } //01 00 
		$a_01_2 = {61 6c 74 5f 70 61 79 5f 62 61 73 65 5f 75 72 6c } //01 00 
		$a_01_3 = {7a 00 5f 00 73 00 28 00 22 00 7a 00 6d 00 5f 00 73 00 6d 00 73 00 22 00 2c 00 74 00 72 00 75 00 65 00 29 00 } //01 00 
		$a_01_4 = {61 6c 65 72 74 70 61 79 2f 3f 70 61 79 3d } //00 00 
	condition:
		any of ($a_*)
 
}