
rule BrowserModifier_Win32_OneStepSearch{
	meta:
		description = "BrowserModifier:Win32/OneStepSearch,SIGNATURE_TYPE_PEHSTR_EXT,38 00 33 00 04 00 00 32 00 "
		
	strings :
		$a_00_0 = {c0 e0 02 8b d5 c1 fa 04 0a d0 } //05 00 
		$a_03_1 = {63 68 65 63 6b 75 70 64 90 02 04 73 6c 6f 61 64 90 02 04 74 62 68 69 64 65 90 02 04 74 62 73 68 6f 77 90 00 } //01 00 
		$a_11_2 = {6e 65 53 74 65 70 53 65 61 72 63 68 2e 2e 2e 00 01 } //00 0b 
		$a_4f_3 = {65 53 74 65 70 2e 2e 2e 00 00 00 78 70 00 00 02 00 } //02 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_OneStepSearch_2{
	meta:
		description = "BrowserModifier:Win32/OneStepSearch,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 00 ff 75 0c 50 e8 4e ff ff ff 0b c0 75 07 bb 01 00 00 00 eb 34 83 c0 08 89 45 f8 2b 45 fc 83 7d 10 00 74 03 83 e8 08 3d 00 08 00 00 } //01 00 
		$a_03_1 = {25 ff ff 00 00 bb 69 90 90 00 00 f7 e3 8b 1d 90 01 02 40 00 c1 eb 10 03 c3 a3 90 01 02 40 00 a1 90 01 02 40 00 25 ff ff 00 00 bb 69 90 90 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_OneStepSearch_3{
	meta:
		description = "BrowserModifier:Win32/OneStepSearch,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {63 68 65 63 6b 75 70 64 90 02 04 73 6c 6f 61 64 90 02 04 74 62 68 69 64 65 90 02 04 74 62 73 68 6f 77 90 00 } //01 00 
		$a_01_1 = {53 00 65 00 61 00 72 00 63 00 68 00 49 00 6e 00 4f 00 6e 00 65 00 53 00 74 00 65 00 70 00 2e 00 2e 00 2e 00 00 00 } //01 00 
		$a_01_2 = {53 00 65 00 61 00 72 00 63 00 68 00 49 00 6e 00 4f 00 6e 00 65 00 53 00 74 00 65 00 70 00 20 00 4f 00 70 00 74 00 69 00 6f 00 6e 00 73 00 20 00 50 00 61 00 6e 00 65 00 6c 00 00 00 } //01 00 
		$a_01_3 = {53 00 65 00 61 00 72 00 63 00 68 00 49 00 6e 00 4f 00 6e 00 65 00 53 00 74 00 65 00 70 00 20 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 20 00 41 00 63 00 74 00 69 00 76 00 61 00 74 00 65 00 64 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_OneStepSearch_4{
	meta:
		description = "BrowserModifier:Win32/OneStepSearch,SIGNATURE_TYPE_PEHSTR,1e 00 1e 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 4f 6e 65 53 74 65 70 20 53 65 61 72 63 68 20 6c 6f 61 64 65 72 00 } //0a 00 
		$a_01_1 = {00 4f 6e 65 53 74 65 70 53 65 61 72 63 68 2e 6e 65 74 2c 20 49 6e 63 2e 00 } //03 00 
		$a_01_2 = {43 6f 70 79 72 69 67 68 74 20 28 63 29 20 32 30 30 37 20 4f 6e 65 53 74 65 70 53 65 61 72 63 68 2e 6e 65 74 2c 20 49 6e 63 2e } //03 00  Copyright (c) 2007 OneStepSearch.net, Inc.
		$a_01_3 = {49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 6c 00 4e 00 61 00 6d 00 65 00 00 00 6f 00 6e 00 65 00 73 00 74 00 65 00 70 00 } //03 00 
		$a_01_4 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 6f 00 6e 00 65 00 73 00 74 00 65 00 70 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_5 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //02 00  GetProcAddress
		$a_01_6 = {47 65 74 43 6f 6d 6d 61 6e 64 4c 69 6e 65 41 } //00 00  GetCommandLineA
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_OneStepSearch_5{
	meta:
		description = "BrowserModifier:Win32/OneStepSearch,SIGNATURE_TYPE_PEHSTR,21 00 21 00 0a 00 00 07 00 "
		
	strings :
		$a_01_0 = {77 77 77 2e 6f 6e 65 73 74 65 70 73 65 61 72 63 68 2e 6e 65 74 00 00 00 00 53 63 72 69 70 74 00 00 68 6f 6d 65 2e 6a 73 } //07 00 
		$a_01_1 = {6f 6e 65 73 74 65 70 73 65 61 72 63 68 2e 6e 65 74 2f 3f 70 72 74 3d 25 73 26 } //07 00  onestepsearch.net/?prt=%s&
		$a_01_2 = {4f 6e 65 53 74 65 70 20 53 65 61 72 63 68 00 00 7b 35 42 34 43 33 42 34 33 2d 34 39 42 36 2d 34 32 41 37 2d 41 36 30 32 2d 46 37 41 43 44 43 41 30 44 34 30 39 7d } //07 00 
		$a_01_3 = {44 6c 6c 50 61 74 68 00 6f 6e 65 73 74 65 70 2e 65 78 65 } //07 00 
		$a_01_4 = {4f 6e 65 53 74 65 70 53 65 61 72 63 68 00 00 00 54 65 6d 70 49 6e 73 74 61 6c 6c 44 69 72 } //07 00 
		$a_01_5 = {55 6e 69 6e 73 74 61 6c 6c 5c 4f 6e 65 53 74 65 70 53 65 61 72 63 68 00 00 00 54 65 73 74 48 6f 73 74 } //06 00 
		$a_01_6 = {4f 6e 65 53 74 65 70 53 65 61 72 63 68 5f 64 65 6c 65 74 65 64 5f } //06 00  OneStepSearch_deleted_
		$a_01_7 = {68 74 74 70 3a 2f 2f 75 70 67 72 61 64 65 2e 6f 6e 65 73 74 65 70 73 65 61 72 63 68 2e 6e 65 74 } //06 00  http://upgrade.onestepsearch.net
		$a_01_8 = {4f 6e 65 53 74 65 70 20 53 65 61 72 63 68 20 4f 70 74 69 6f 6e 73 20 50 61 6e 65 6c } //06 00  OneStep Search Options Panel
		$a_01_9 = {55 70 64 61 74 65 20 61 6e 64 20 63 6f 6e 74 72 6f 6c 20 66 6f 72 20 4f 6e 65 53 74 65 70 20 53 65 61 72 63 68 } //00 00  Update and control for OneStep Search
	condition:
		any of ($a_*)
 
}