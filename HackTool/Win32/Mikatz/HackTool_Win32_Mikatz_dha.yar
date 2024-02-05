
rule HackTool_Win32_Mikatz_dha{
	meta:
		description = "HackTool:Win32/Mikatz!dha,SIGNATURE_TYPE_PEHSTR_EXT,2d 01 2d 01 05 00 00 64 00 "
		
	strings :
		$a_01_0 = {6d 69 6d 69 6b 61 74 7a } //64 00 
		$a_01_1 = {70 6f 77 65 72 73 68 65 6c 6c 5f 72 65 66 6c 65 63 74 69 76 65 5f 6d 69 6d 69 6b 61 74 7a } //64 00 
		$a_00_2 = {4c 00 53 00 41 00 20 00 4b 00 65 00 79 00 28 00 73 00 29 00 20 00 3a 00 20 00 25 00 75 00 2c 00 } //01 00 
		$a_01_3 = {70 6f 77 65 72 6b 61 74 7a 2e 64 6c 6c } //01 00 
		$a_00_4 = {73 61 6d 65 6e 75 6d 65 72 61 74 65 64 6f 6d 61 69 6e 73 69 6e 73 61 6d 73 65 72 76 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mikatz_dha_2{
	meta:
		description = "HackTool:Win32/Mikatz!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 6b 00 69 00 77 00 69 00 5c 00 6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 } //01 00 
		$a_02_1 = {67 65 74 43 72 65 64 6d 61 6e 90 02 05 67 65 74 43 72 65 64 6d 61 6e 46 75 6e 63 74 69 6f 6e 73 90 02 05 67 65 74 44 65 73 63 72 69 70 74 69 6f 6e 90 02 05 67 65 74 4b 65 72 62 65 72 6f 73 90 02 05 67 65 74 4b 65 72 62 65 72 6f 73 46 75 6e 63 74 69 6f 6e 73 90 02 05 67 65 74 4c 69 76 65 53 53 50 90 02 05 67 65 74 4c 69 76 65 53 53 50 46 75 6e 63 74 69 6f 6e 73 90 00 } //01 00 
		$a_02_2 = {67 65 74 4c 6f 63 61 6c 41 63 63 6f 75 6e 74 73 90 02 05 67 65 74 4c 6f 67 6f 6e 50 61 73 73 77 6f 72 64 73 90 02 05 67 65 74 4c 6f 67 6f 6e 53 65 73 73 69 6f 6e 73 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mikatz_dha_3{
	meta:
		description = "HackTool:Win32/Mikatz!dha,SIGNATURE_TYPE_PEHSTR_EXT,67 00 67 00 06 00 00 64 00 "
		
	strings :
		$a_01_0 = {6d 69 6d 69 6b 61 74 7a } //01 00 
		$a_00_1 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 72 00 79 00 70 00 74 00 47 00 65 00 74 00 55 00 73 00 65 00 72 00 4b 00 65 00 79 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //01 00 
		$a_00_2 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 6b 00 65 00 79 00 53 00 70 00 65 00 63 00 20 00 3d 00 3d 00 20 00 43 00 45 00 52 00 54 00 5f 00 4e 00 43 00 52 00 59 00 50 00 54 00 5f 00 4b 00 45 00 59 00 5f 00 53 00 50 00 45 00 43 00 20 00 77 00 69 00 74 00 68 00 6f 00 75 00 74 00 20 00 43 00 4e 00 } //01 00 
		$a_00_3 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 72 00 79 00 70 00 74 00 41 00 63 00 71 00 75 00 69 00 72 00 65 00 43 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 4b 00 65 00 79 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //01 00 
		$a_00_4 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 65 00 72 00 74 00 47 00 65 00 74 00 43 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //01 00 
		$a_00_5 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 5f 00 6c 00 5f 00 63 00 65 00 72 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 73 00 20 00 3b 00 20 00 43 00 65 00 72 00 74 00 47 00 65 00 74 00 4e 00 61 00 6d 00 65 00 53 00 74 00 72 00 69 00 6e 00 67 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mikatz_dha_4{
	meta:
		description = "HackTool:Win32/Mikatz!dha,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 6c 6f 67 2e 67 65 6e 74 69 6c 6b 69 77 69 2e 63 6f 6d 2f 6d 69 6d 69 6b 61 74 7a } //01 00 
		$a_01_1 = {6b 65 6c 6c 6f 77 6f 72 6c 64 2e 64 6c 6c 00 68 65 6c 6c 6f 77 6f 72 6c 64 00 70 69 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mikatz_dha_5{
	meta:
		description = "HackTool:Win32/Mikatz!dha,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00 
		$a_01_1 = {73 61 6d 65 6e 75 6d 65 72 61 74 65 64 6f 6d 61 69 6e 73 69 6e 73 61 6d 73 65 72 76 65 72 } //01 00 
		$a_01_2 = {73 65 6b 75 72 6c 73 61 5f 6b 65 72 62 65 72 6f 73 } //01 00 
		$a_01_3 = {46 00 55 00 43 00 4b 00 20 00 41 00 4e 00 59 00 20 00 41 00 56 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mikatz_dha_6{
	meta:
		description = "HackTool:Win32/Mikatz!dha,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 6c 00 6f 00 67 00 2e 00 67 00 65 00 6e 00 74 00 69 00 6c 00 6b 00 69 00 77 00 69 00 2e 00 63 00 6f 00 6d 00 2f 00 6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 } //01 00 
		$a_01_1 = {73 00 65 00 61 00 72 00 63 00 68 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00 
		$a_01_2 = {6d 00 6f 00 64 00 5f 00 63 00 72 00 79 00 70 00 74 00 6f 00 6e 00 67 00 3a 00 3a 00 67 00 65 00 74 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 4b 00 65 00 79 00 2f 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 4b 00 65 00 79 00 42 00 6c 00 6f 00 62 00 54 00 6f 00 50 00 56 00 4b 00 20 00 3a 00 } //01 00 
		$a_01_3 = {44 00 75 00 6d 00 70 00 20 00 64 00 65 00 73 00 20 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 73 00 20 00 63 00 6f 00 75 00 72 00 61 00 6e 00 74 00 65 00 73 00 20 00 70 00 61 00 72 00 20 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 73 00 20 00 4c 00 53 00 41 00 53 00 53 00 } //01 00 
		$a_01_4 = {4b 00 69 00 77 00 69 00 41 00 6e 00 64 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}