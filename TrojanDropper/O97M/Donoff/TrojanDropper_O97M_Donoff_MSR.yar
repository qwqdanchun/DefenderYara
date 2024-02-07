
rule TrojanDropper_O97M_Donoff_MSR{
	meta:
		description = "TrojanDropper:O97M/Donoff!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 69 6e 48 74 74 70 2e 90 02 12 22 29 90 00 } //01 00 
		$a_03_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 90 02 1a 22 29 2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 32 29 20 26 20 22 5c 72 75 6e 64 6c 6c 36 34 2e 65 78 65 90 00 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e } //01 00  CreateObject("WScript.Shell").Run
		$a_01_3 = {65 78 70 6f 72 74 3d 64 6f 77 6e 6c 6f 61 64 26 69 64 3d 31 79 69 44 6e 75 4c 52 66 51 54 42 64 61 6b 36 53 38 67 4b 6e 4a 4c 45 7a 4d 6b 33 79 76 65 70 48 } //00 00  export=download&id=1yiDnuLRfQTBdak6S8gKnJLEzMk3yvepH
	condition:
		any of ($a_*)
 
}
rule TrojanDropper_O97M_Donoff_MSR_2{
	meta:
		description = "TrojanDropper:O97M/Donoff!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //01 00  CreateObject("WScript.Shell")
		$a_03_1 = {4e 61 6d 65 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 90 02 09 2e 64 6f 63 22 20 41 73 20 22 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 90 02 09 2e 65 78 65 22 90 00 } //01 00 
		$a_03_2 = {45 6e 76 69 72 6f 6e 24 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 26 20 22 5c 41 70 70 44 61 74 61 5c 52 6f 61 6d 69 6e 67 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 90 02 06 2e 75 72 6c 22 90 00 } //01 00 
		$a_03_3 = {53 65 74 20 6f 53 68 6f 72 74 63 75 74 20 3d 20 90 02 04 2e 43 72 65 61 74 65 53 68 6f 72 74 63 75 74 28 90 02 16 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}