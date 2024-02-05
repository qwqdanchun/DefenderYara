
rule Trojan_Win32_Chenf_A{
	meta:
		description = "Trojan:Win32/Chenf.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 70 00 65 00 } //01 00 
		$a_01_1 = {67 6f 6f 67 6c 65 5f 67 75 69 64 2e 64 61 74 } //01 00 
		$a_01_2 = {6a 00 61 00 76 00 61 00 32 00 2e 00 65 00 78 00 65 } //01 00 
		$a_01_3 = {64 65 6c 65 74 65 73 65 6c 66 } //00 00 
	condition:
		any of ($a_*)
 
}