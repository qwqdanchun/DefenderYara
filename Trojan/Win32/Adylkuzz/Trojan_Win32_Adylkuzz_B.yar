
rule Trojan_Win32_Adylkuzz_B{
	meta:
		description = "Trojan:Win32/Adylkuzz.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {73 75 70 65 72 90 0f 04 00 90 10 04 00 2e 63 6f 6d 2f 38 36 2e 65 78 65 90 00 } //01 00 
		$a_03_1 = {57 45 4c 4d 90 02 04 64 69 73 70 6c 61 79 90 02 04 57 69 6e 64 6f 77 73 20 45 76 65 6e 74 20 4c 6f 67 20 4d 61 6e 61 67 65 6d 65 6e 74 90 00 } //01 00 
		$a_03_2 = {4d 69 6e 65 72 90 02 04 65 78 65 6e 61 6d 65 90 02 08 6d 73 69 65 78 65 76 2e 65 78 65 90 00 } //01 00 
		$a_03_3 = {77 75 61 75 73 65 72 2e 65 78 65 90 02 04 53 65 72 76 65 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}