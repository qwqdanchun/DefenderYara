
rule Trojan_Win32_Arcyess_A_dha{
	meta:
		description = "Trojan:Win32/Arcyess.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {25 00 73 00 5c 00 25 00 64 00 2e 00 62 00 61 00 74 00 } //02 00 
		$a_01_1 = {54 00 68 00 65 00 20 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 20 00 74 00 68 00 72 00 65 00 61 00 64 00 20 00 69 00 73 00 20 00 70 00 72 00 6f 00 62 00 61 00 62 00 6c 00 79 00 20 00 73 00 74 00 61 00 6c 00 65 00 21 00 } //02 00 
		$a_01_2 = {4c 00 6f 00 63 00 6b 00 69 00 6e 00 67 00 20 00 64 00 6f 00 6f 00 72 00 73 00 } //02 00 
		$a_01_3 = {49 00 27 00 6d 00 20 00 67 00 6f 00 69 00 6e 00 67 00 20 00 74 00 6f 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 69 00 74 00 } //02 00 
		$a_01_4 = {2f 00 64 00 69 00 73 00 70 00 61 00 74 00 63 00 68 00 2e 00 61 00 73 00 70 00 } //02 00 
		$a_01_5 = {45 00 6e 00 67 00 69 00 6e 00 65 00 20 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 } //02 00 
		$a_01_6 = {52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 69 00 6e 00 20 00 62 00 61 00 63 00 6b 00 67 00 72 00 6f 00 75 00 6e 00 64 00 } //00 00 
		$a_00_7 = {5d 04 00 00 fa 3f 03 80 } //5c 35 
	condition:
		any of ($a_*)
 
}