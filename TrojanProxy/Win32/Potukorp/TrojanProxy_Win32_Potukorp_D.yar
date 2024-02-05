
rule TrojanProxy_Win32_Potukorp_D{
	meta:
		description = "TrojanProxy:Win32/Potukorp.D,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 6d 64 2e 65 78 65 20 2f 63 20 69 70 63 6f 6e 66 69 67 20 2f 66 6c 75 73 68 64 6e 73 } //01 00 
		$a_01_1 = {4d 65 6d 44 6c 6c 2e 64 6c 6c 00 4b 69 65 73 73 00 4d 61 69 6e 00 } //01 00 
		$a_01_2 = {5b 6f 66 66 6c 69 6e 65 5d 00 5b 44 6e 73 5d 00 5b 48 6f 73 74 5d 00 5b 55 70 6c 6f 61 64 5d 00 5b 43 6f 75 6e 74 5d 00 5b 54 69 6d 65 5d } //01 00 
		$a_01_3 = {4d 61 69 6e 5c 53 74 61 72 74 20 50 61 67 65 00 2a 00 2a 2e 64 65 72 00 2a 2e 63 65 72 } //01 00 
		$a_01_4 = {3d 3f 30 45 30 34 30 41 31 45 34 33 31 34 31 45 31 43 30 38 30 36 30 32 31 44 30 35 35 41 31 42 35 45 } //01 00 
		$a_01_5 = {31 43 30 35 31 43 35 43 31 38 31 41 30 32 31 43 30 33 31 33 30 35 35 43 30 38 31 44 30 36 35 31 34 46 30 } //01 00 
		$a_03_6 = {68 01 03 00 80 6a 00 68 05 00 00 00 68 01 03 00 80 6a 00 68 90 01 01 00 00 00 68 02 00 00 00 bb cc 00 00 00 e8 90 00 } //00 00 
		$a_00_7 = {80 10 00 } //00 22 
	condition:
		any of ($a_*)
 
}