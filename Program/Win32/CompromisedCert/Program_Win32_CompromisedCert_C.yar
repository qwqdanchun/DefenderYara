
rule Program_Win32_CompromisedCert_C{
	meta:
		description = "Program:Win32/CompromisedCert.C,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 65 6c 6c 2e 46 6f 75 6e 64 61 74 69 6f 6e 2e 65 44 65 6c 6c 2e 43 6f 6d 6d 6f 6e 2e 64 6c 6c 00 44 65 6c 6c 2e 46 6f 75 6e 64 61 74 69 6f 6e 2e 65 44 65 6c 6c 2e 43 6f 6d 6d 6f 6e 00 3c 4d 6f 64 75 6c 65 3e 00 53 68 61 72 65 64 41 73 73 65 6d 62 6c 79 49 6e 66 6f 00 6d 73 63 6f 72 6c } //01 00 
		$a_01_1 = {44 65 6c 6c 2e 46 6f 75 6e 64 61 74 69 6f 6e 2e 65 44 65 6c 6c 2e 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 2e 64 6c 6c 00 44 65 6c 6c 2e 46 6f 75 6e 64 61 74 69 6f 6e 2e 65 44 65 6c 6c 2e 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 00 3c 4d 6f 64 75 6c 65 3e 00 53 68 61 72 65 64 41 73 73 65 6d } //01 00 
		$a_01_2 = {44 65 6c 6c 2e 46 6f 75 6e 64 61 74 69 6f 6e 2e 41 67 65 6e 74 2e 50 6c 75 67 69 6e 73 2e 65 44 65 6c 6c 2e 64 6c 6c 00 44 65 6c 6c 2e 46 6f 75 6e 64 61 74 69 6f 6e 2e 41 67 65 6e 74 2e 50 6c 75 67 69 6e 73 2e 65 44 65 6c 6c 00 3c 4d 6f 64 75 6c 65 3e 00 49 41 70 70 54 65 6c 65 6d 65 74 } //00 00 
	condition:
		any of ($a_*)
 
}