
rule Spyware_Win32_SmartDove{
	meta:
		description = "Spyware:Win32/SmartDove,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 54 45 4d 50 5c 5f 63 68 65 63 6b 74 65 6d 70 74 65 73 74 } //01 00 
		$a_01_1 = {41 4c 4c 55 53 45 52 53 50 52 4f 46 49 4c 45 } //06 00 
		$a_01_2 = {25 73 5c 5f 63 68 65 63 6b 74 65 6d 70 74 65 73 74 00 00 00 25 73 5c 41 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c 4d 69 63 72 6f 73 6f 66 74 5c } //02 00 
		$a_02_3 = {4d 41 43 48 49 4e 45 5c 53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 43 4c 53 49 44 5c 7b 31 36 90 01 01 37 37 30 41 30 2d 30 45 38 37 2d 34 32 37 38 2d 42 37 34 38 2d 32 34 36 30 44 36 34 41 38 33 38 36 7d 5c 49 6e 70 72 6f 63 53 65 72 76 65 72 33 32 90 00 } //02 00 
		$a_02_4 = {49 45 48 65 6c 70 65 72 5f 90 01 04 2e 64 6c 6c 90 00 } //02 00 
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Spyware_Win32_SmartDove_2{
	meta:
		description = "Spyware:Win32/SmartDove,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 54 45 4d 50 5c 5f 63 68 65 63 6b 74 65 6d 70 74 65 73 74 } //01 00 
		$a_01_1 = {41 4c 4c 55 53 45 52 53 50 52 4f 46 49 4c 45 } //06 00 
		$a_02_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 74 5c 53 65 74 74 69 6e 67 73 5c 7b 31 36 90 01 01 37 37 30 41 30 2d 30 45 38 37 2d 34 32 37 38 2d 42 37 34 38 2d 32 34 36 30 44 36 34 41 38 33 38 36 7d 90 02 10 25 73 5c 5f 63 68 65 63 6b 74 65 6d 70 74 65 73 74 90 00 } //02 00 
		$a_01_3 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //02 00 
		$a_01_4 = {53 65 74 45 6e 74 72 69 65 73 49 6e 41 63 6c 20 45 72 72 6f 72 20 25 75 } //02 00 
		$a_01_5 = {53 65 74 4e 61 6d 65 64 53 65 63 75 72 69 74 79 49 6e 66 6f 20 45 72 72 6f 72 20 25 75 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Spyware_Win32_SmartDove_3{
	meta:
		description = "Spyware:Win32/SmartDove,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 54 45 4d 50 5c 5f 63 68 65 63 6b 74 65 6d 70 74 65 73 74 } //01 00 
		$a_01_1 = {41 4c 4c 55 53 45 52 53 50 52 4f 46 49 4c 45 } //02 00 
		$a_01_2 = {25 73 5c 5f 63 68 65 63 6b 74 65 6d 70 74 65 73 74 00 00 00 25 73 5c 41 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c 4d 69 63 72 6f 73 6f 66 74 5c } //02 00 
		$a_02_3 = {4d 41 43 48 49 4e 45 5c 53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 43 4c 53 49 44 5c 7b 31 36 90 01 01 37 37 30 41 30 2d 30 45 38 37 2d 34 32 37 38 2d 42 37 34 38 2d 32 34 36 30 44 36 34 41 38 33 38 36 7d 5c 49 6e 70 72 6f 63 53 65 72 76 65 72 33 32 90 00 } //02 00 
		$a_02_4 = {49 45 48 65 6c 70 65 72 5f 90 01 04 2e 64 6c 6c 90 00 } //02 00 
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //02 00 
		$a_01_6 = {53 65 74 45 6e 74 72 69 65 73 49 6e 41 63 6c 20 45 72 72 6f 72 20 25 75 } //02 00 
		$a_01_7 = {53 65 74 4e 61 6d 65 64 53 65 63 75 72 69 74 79 49 6e 66 6f 20 45 72 72 6f 72 20 25 75 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Spyware_Win32_SmartDove_4{
	meta:
		description = "Spyware:Win32/SmartDove,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {49 45 48 65 6c 70 65 72 25 64 25 64 25 64 5f 25 73 2e 64 6c 6c } //02 00 
		$a_01_1 = {63 6c 69 65 6e 74 2e 79 69 71 69 6c 61 69 2e 63 6f 6d 3a 31 32 30 37 } //02 00 
		$a_01_2 = {49 45 48 65 6c 70 65 72 2e 44 4c 4c } //02 00 
		$a_01_3 = {6c 6f 67 69 6e 2e 79 69 71 69 6c 61 69 2e 63 6f 6d 3a 31 32 30 37 } //02 00 
		$a_01_4 = {72 65 67 63 6f 64 65 } //02 00 
		$a_01_5 = {72 65 71 75 65 73 74 2e 79 69 71 69 6c 61 69 2e 63 6f 6d 3a 31 32 30 37 } //02 00 
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 43 6c 61 73 73 65 73 5c 43 4c 53 49 44 5c 7b 31 36 41 37 37 30 41 30 2d 30 45 38 37 2d 34 32 37 38 2d 42 37 34 38 2d 32 34 36 30 44 36 34 41 38 33 38 36 7d 5c 49 6e 70 72 6f 63 53 65 72 76 65 72 33 32 } //02 00 
		$a_01_7 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 31 36 41 37 37 30 41 30 2d 30 45 38 37 2d 34 32 37 38 2d 42 37 34 38 2d 32 34 36 30 44 36 34 41 38 33 38 36 7d } //00 00 
	condition:
		any of ($a_*)
 
}