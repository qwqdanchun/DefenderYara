
rule Trojan_Win32_LummaStealer_CCAZ_MTB{
	meta:
		description = "Trojan:Win32/LummaStealer.CCAZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 32 00 73 00 6f 00 63 00 6b } //01 00 
		$a_01_1 = {63 00 32 00 63 00 6f 00 6e 00 66 } //01 00 
		$a_01_2 = {54 00 65 00 73 00 6c 00 61 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 } //01 00 
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 2e 00 74 00 78 00 74 } //01 00 
		$a_01_4 = {53 00 79 00 73 00 6d 00 6f 00 6e 00 44 00 72 00 76 } //01 00 
		$a_01_5 = {2a 00 2e 00 65 00 6d 00 6c } //01 00 
		$a_01_6 = {2d 20 53 63 72 65 65 6e 20 52 65 73 6f 6c 75 74 6f 6e 3a } //01 00 
		$a_01_7 = {6c 69 64 3d 25 73 26 76 65 72 3d } //00 00 
	condition:
		any of ($a_*)
 
}