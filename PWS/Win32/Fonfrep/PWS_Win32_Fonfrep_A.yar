
rule PWS_Win32_Fonfrep_A{
	meta:
		description = "PWS:Win32/Fonfrep.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 5c 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_1 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 20 00 66 00 72 00 6f 00 6d 00 20 00 6d 00 6f 00 7a 00 5f 00 6c 00 6f 00 67 00 69 00 6e 00 73 00 } //01 00 
		$a_01_2 = {5f 00 2b 00 5f 00 2b 00 5f 00 70 00 61 00 73 00 73 00 5f 00 2b 00 5f 00 2b 00 5f 00 } //02 00 
		$a_01_3 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 4f 00 77 00 6e 00 65 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 46 00 46 00 5c 00 53 00 5c 00 70 00 72 00 6a 00 46 00 46 00 2e 00 76 00 62 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}