
rule Adware_Win32_Loones{
	meta:
		description = "Adware:Win32/Loones,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {4c 00 6f 00 6f 00 6e 00 73 00 90 01 02 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 40 2e 00 63 00 6f 00 6d 00 2f 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 2e 00 90 00 } //01 00 
		$a_03_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4c 00 6f 00 6f 00 6e 00 73 00 5c 00 43 00 61 00 6d 00 70 00 61 00 69 00 67 00 6e 00 73 00 90 01 04 64 00 61 00 69 00 6c 00 79 00 5f 00 63 00 6e 00 74 00 90 01 02 63 00 61 00 6d 00 70 00 61 00 69 00 67 00 6e 00 5f 00 69 00 64 00 90 00 } //01 00 
		$a_03_2 = {64 00 69 00 73 00 70 00 6c 00 61 00 79 00 5f 00 69 00 6e 00 74 00 65 00 72 00 76 00 61 00 6c 00 90 01 02 64 00 61 00 69 00 6c 00 79 00 5f 00 64 00 69 00 73 00 70 00 6c 00 61 00 79 00 5f 00 63 00 61 00 70 00 90 00 } //01 00 
		$a_01_3 = {55 00 6e 00 72 00 65 00 67 00 53 00 65 00 72 00 76 00 65 00 72 00 50 00 65 00 72 00 55 00 73 00 65 00 72 00 00 00 00 00 52 00 65 00 67 00 53 00 65 00 72 00 76 00 65 00 72 00 50 00 65 00 72 00 55 00 73 00 65 00 72 00 } //01 00 
		$a_03_4 = {5c 69 6d 65 64 69 61 5c 63 70 70 90 02 20 5c 52 65 6c 65 61 73 65 5c 4c 6f 6f 6e 73 90 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}