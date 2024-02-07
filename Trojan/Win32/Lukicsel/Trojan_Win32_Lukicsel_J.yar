
rule Trojan_Win32_Lukicsel_J{
	meta:
		description = "Trojan:Win32/Lukicsel.J,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5a 6f 6d 62 69 65 2e 65 78 65 00 49 72 63 43 6f 6e 6e 65 63 74 69 6f 6e 00 4d 65 65 62 65 79 2e 53 6d 61 72 74 49 72 63 34 6e 65 74 } //01 00 
		$a_01_1 = {5a 6f 6d 62 69 65 00 41 74 74 61 63 6b 00 70 61 72 61 6d 73 41 74 74 61 63 6b 00 49 72 63 4d 65 73 73 61 67 65 44 61 74 61 00 49 72 63 43 6c 69 65 6e 74 } //01 00 
		$a_00_2 = {41 00 6c 00 6c 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 73 00 20 00 53 00 74 00 6f 00 70 00 70 00 65 00 64 00 21 00 } //00 00  All Attacks Stopped!
	condition:
		any of ($a_*)
 
}