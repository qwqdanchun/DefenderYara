
rule Trojan_Win32_AceDeceiver_A{
	meta:
		description = "Trojan:Win32/AceDeceiver.A,SIGNATURE_TYPE_PEHSTR,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 79 6e 63 2f 61 66 73 79 6e 63 2e 72 71 2e 73 69 67 00 2f 41 69 72 46 61 69 72 2f 73 79 6e 63 2f 61 66 73 79 6e 63 2e 72 73 00 2f 41 69 72 46 61 69 72 2f 73 79 6e 63 2f 61 66 73 79 6e 63 2e 72 73 2e 73 69 67 00 63 6f 6d 2e 61 70 70 6c 65 2e 61 74 63 00 00 00 77 77 77 2e 69 34 2e 63 6e } //01 00 
		$a_01_1 = {61 75 74 68 33 2e 69 34 2e 63 6e 00 00 2f 69 54 75 6e 65 73 5f 43 6f 6e 74 72 6f 6c 2f 69 54 75 6e 65 73 2f 69 34 74 6f 6f 6c 32 2e 61 63 63 00 00 2f 66 69 6c 65 73 2f 69 34 2f 69 34 2e 69 70 61 00 00 00 00 25 00 73 00 5c 00 63 00 61 00 63 00 68 00 65 00 5c 00 25 00 73 00 2e 00 69 00 70 00 61 00 00 00 2e 00 69 00 70 00 61 00 } //00 00 
	condition:
		any of ($a_*)
 
}