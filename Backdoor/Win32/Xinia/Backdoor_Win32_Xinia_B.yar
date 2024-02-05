
rule Backdoor_Win32_Xinia_B{
	meta:
		description = "Backdoor:Win32/Xinia.B,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 4f 55 53 45 43 41 4c 4c 41 54 00 25 73 5c 74 6c 6e 74 73 76 72 2e 65 78 65 00 25 73 5c 6c 6f 74 74 65 72 79 2e 64 6c 6c 00 25 73 5c 74 6f 6c 6c 65 72 73 2e 69 6e 69 00 54 48 49 53 49 52 53 54 00 54 6c 6e 74 53 76 72 00 54 65 6c 6e 65 74 00 59 4f 55 52 4e 41 4d 45 00 00 00 2f 63 20 61 74 74 72 69 62 20 2b 68 20 2b 73 20 63 3a 5c 74 69 6d 65 2e 6c 6f 67 00 2f 63 20 64 61 74 65 20 3c 63 3a 5c 74 69 6d 65 2e 6c 6f 67 00 00 00 00 6f 70 65 6e 00 00 00 00 63 6d 64 00 2f 63 20 64 61 74 65 20 31 39 38 37 2d 31 30 2d 39 00 00 00 5c 6c 6f 74 74 65 72 79 2e 64 6c 6c 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Xinia_B_2{
	meta:
		description = "Backdoor:Win32/Xinia.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {00 00 00 00 77 2b 62 00 52 45 54 52 20 52 61 72 2e 65 78 65 20 0d 0a 00 5c 52 61 72 2e 65 78 65 00 00 00 00 68 61 68 61 2e 6a 70 67 00 00 00 00 48 4f 73 74 2e 6a 70 67 00 00 00 00 53 54 4f 52 20 00 00 00 20 25 64 2d 25 64 2d 25 64 2d 25 64 00 00 00 00 72 62 00 00 52 61 72 2e 65 78 65 00 2e 2e 00 00 2e 00 00 00 5c 00 00 00 54 65 6d 70 31 5c 00 00 54 65 6d 70 31 00 00 00 5c 2a 2e 2a 00 00 00 00 6f 70 65 6e 00 00 00 00 63 6d 64 00 2f 63 20 72 61 72 20 61 20 2d 70 68 6b 73 6f 75 6c 73 20 00 54 65 6d 70 31 2e 72 61 72 20 00 00 } //01 00 
		$a_01_1 = {2f 63 20 61 74 74 72 69 62 20 2b 68 20 2b 73 20 63 3a 5c 74 69 6d 65 31 2e 6c 6f 67 } //00 00 
	condition:
		any of ($a_*)
 
}