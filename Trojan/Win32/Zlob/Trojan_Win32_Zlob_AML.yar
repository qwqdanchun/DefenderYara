
rule Trojan_Win32_Zlob_AML{
	meta:
		description = "Trojan:Win32/Zlob.AML,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 00 70 00 68 00 70 00 3f 00 71 00 71 00 3d 00 25 00 73 00 } //01 00 
		$a_00_1 = {25 00 73 00 73 00 3a 00 2f 00 2f 00 25 00 73 00 5c 00 73 00 68 00 64 00 6f 00 25 00 73 00 } //01 00 
		$a_00_2 = {65 00 72 00 72 00 6f 00 72 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_3 = {61 00 6c 00 6c 00 73 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 70 00 61 00 67 00 65 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_4 = {5c 49 6e 70 72 6f 63 53 65 72 76 65 72 33 32 } //00 00 
	condition:
		any of ($a_*)
 
}