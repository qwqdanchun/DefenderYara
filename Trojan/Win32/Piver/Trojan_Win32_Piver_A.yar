
rule Trojan_Win32_Piver_A{
	meta:
		description = "Trojan:Win32/Piver.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 52 75 6e 00 53 63 6e 43 66 67 00 } //01 00 
		$a_01_1 = {52 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 73 00 22 00 2c 00 52 00 75 00 6e 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 25 00 73 00 } //01 00 
		$a_01_2 = {6d 00 73 00 77 00 64 00 25 00 30 00 33 00 58 00 2e 00 74 00 6d 00 70 00 } //01 00 
		$a_01_3 = {41 43 44 43 42 42 31 00 41 43 44 43 42 42 32 } //01 00 
		$a_01_4 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 74 00 65 00 6d 00 70 00 5c 00 00 00 00 00 25 00 73 00 73 00 65 00 63 00 25 00 30 00 38 00 78 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_03_5 = {49 50 52 49 50 90 02 08 53 79 73 57 4f 57 36 34 90 02 08 73 79 73 74 65 6d 33 32 90 02 0a 73 63 20 63 72 65 61 74 65 20 25 73 20 62 69 6e 50 61 74 68 3d 90 00 } //00 00 
		$a_00_6 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}