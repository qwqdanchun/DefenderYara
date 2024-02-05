
rule DDoS_Win32_Rovelobok_A{
	meta:
		description = "DDoS:Win32/Rovelobok.A,SIGNATURE_TYPE_PEHSTR_EXT,2c 00 2c 00 06 00 00 20 00 "
		
	strings :
		$a_01_0 = {52 6f 62 6c 6f 78 20 48 61 63 6b 65 72 } //08 00 
		$a_01_1 = {76 00 65 00 72 00 74 00 69 00 63 00 6c 00 61 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 31 00 6e 00 74 00 65 00 72 00 78 00 5f 00 73 00 74 00 6f 00 6f 00 66 00 2f 00 6c 00 6f 00 67 00 5f 00 65 00 78 00 2e 00 70 00 68 00 70 00 } //08 00 
		$a_01_2 = {31 00 6e 00 74 00 65 00 72 00 78 00 5f 00 73 00 74 00 6f 00 6f 00 66 00 2f 00 6c 00 6f 00 67 00 5f 00 70 00 69 00 6e 00 67 00 2e 00 70 00 68 00 70 00 } //04 00 
		$a_01_3 = {75 00 70 00 64 00 61 00 74 00 65 00 65 00 65 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_4 = {73 00 6c 00 6f 00 77 00 6c 00 6f 00 72 00 69 00 73 00 } //02 00 
		$a_01_5 = {4a 00 61 00 76 00 61 00 5f 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 } //00 00 
		$a_00_6 = {5d 04 00 00 da 1e 03 80 5c 21 00 00 db 1e 03 80 00 00 01 00 06 00 0b 00 84 21 43 61 70 68 61 77 2e 41 } //4f 00 
	condition:
		any of ($a_*)
 
}