
rule Trojan_Win32_LegionLoader_BL_MTB{
	meta:
		description = "Trojan:Win32/LegionLoader.BL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {49 6f 61 73 70 67 73 6f 67 42 73 6b 62 6f 76 65 6a 67 77 65 } //02 00 
		$a_01_1 = {64 66 69 6f 73 6f 67 6f 73 34 6a 39 67 6a 39 68 } //02 00 
		$a_01_2 = {69 6f 73 6f 69 67 73 34 39 38 67 6a 73 34 65 68 6a } //02 00 
		$a_01_3 = {73 64 69 6f 67 6f 69 73 67 6a 34 30 67 73 72 6a 68 34 } //02 00 
		$a_01_4 = {73 6f 69 67 66 73 6f 69 65 67 34 6a 73 72 68 64 68 } //00 00 
	condition:
		any of ($a_*)
 
}