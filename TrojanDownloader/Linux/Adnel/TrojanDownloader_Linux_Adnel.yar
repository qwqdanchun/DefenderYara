
rule TrojanDownloader_Linux_Adnel{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 77 77 2e 69 70 68 6f 6e 65 74 65 63 68 69 65 2e 63 6f 6d 2f 77 7a 2f 63 61 6e 2f 63 61 77 69 6e 6e } //01 00 
		$a_01_1 = {22 5c 53 4f 6b 66 64 73 73 64 2e 69 6e 69 22 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_2{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 68 70 67 2e 73 65 2f 74 6d 70 2f 6c 6e 73 2e 74 78 74 } //01 00 
		$a_01_1 = {68 74 74 70 3a 2f 2f 73 75 6e 64 73 76 61 6c 6c 73 72 6b 2e 6e 75 2f 74 6d 70 2f 6c 6e 73 2e 74 78 74 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_3{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 49 46 45 78 55 79 41 70 59 7a 73 20 3d 20 56 48 65 34 31 55 28 4c 53 65 78 65 41 58 57 35 50 49 2c 20 53 72 61 31 68 29 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 43 49 46 45 78 55 79 41 70 59 7a 73 2c 20 30 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_4{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 58 75 34 41 75 59 66 6d 20 3d 20 55 6b 6b 32 58 28 50 4e 4c 4f 73 45 6a 69 63 53 38 76 6c 56 6d 77 36 2c 20 4b 76 6b 7a 72 4e 68 63 73 77 79 38 29 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 4c 58 75 34 41 75 59 66 6d 2c 20 30 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_5{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 41 55 72 52 58 78 31 63 32 45 6e 64 6f 20 3d 20 59 75 65 4d 5a 41 62 6c 4a 47 28 4d 57 6b 33 7a 41 2c 20 42 5a 62 35 59 4c 61 56 54 4f 62 30 29 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 47 41 55 72 52 58 78 31 63 32 45 6e 64 6f 2c 20 30 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_6{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 64 55 69 20 3d 20 50 30 49 46 4f 6a 4c 6a 4c 47 55 6e 58 28 48 62 36 47 6c 49 30 4b 67 62 33 59 48 29 } //01 00 
		$a_01_1 = {4b 36 32 33 6e 62 59 69 6e 62 20 3d 20 44 64 55 69 28 58 67 64 49 42 54 2c 20 4c 67 42 4c 6a 39 73 75 66 44 6c 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_7{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 43 79 6c 45 6b 77 4c 53 35 55 74 53 4f 20 3d 20 48 56 45 4b 37 6b 4d 30 51 57 76 28 4b 4a 39 4e 51 44 58 45 31 36 39 47 6b 43 73 68 2c 20 4c 58 38 70 30 29 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 46 43 79 6c 45 6b 77 4c 53 35 55 74 53 4f 2c 20 30 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_8{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 41 6d 42 30 4d 79 5a 37 49 76 47 56 43 20 3d 20 49 34 77 50 43 70 4e 69 4d 59 31 36 28 53 36 6c 46 4a 45 6d 44 2c 20 58 73 56 66 75 57 61 62 32 67 64 32 42 37 29 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 47 41 6d 42 30 4d 79 5a 37 49 76 47 56 43 2c 20 30 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_9{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 06 00 00 04 00 "
		
	strings :
		$a_01_0 = {2e 72 6f 2f 63 67 69 2d 62 69 6e 2f 77 65 64 2f 31 } //01 00 
		$a_01_1 = {44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e } //01 00 
		$a_01_2 = {54 65 6d 70 } //01 00 
		$a_01_3 = {53 68 65 6c 6c } //01 00 
		$a_01_4 = {45 6e 76 69 72 6f 6e } //01 00 
		$a_01_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 } //00 00 
		$a_00_6 = {8f 66 00 00 03 } //00 03 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_10{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 2e 70 6f 6d 66 2e 73 65 2f } //01 00 
		$a_01_1 = {2f 64 77 6e 6c 76 68 22 } //01 00 
		$a_01_2 = {45 6e 76 69 72 6f 6e 28 22 54 65 6d 70 22 29 20 26 20 22 5c 22 20 26 20 22 73 74 61 72 74 75 70 2e 65 78 65 22 } //01 00 
		$a_01_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 20 30 2c 20 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_11{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 37 58 71 6d 36 68 4f 47 57 33 35 6c 4a 37 6c 4c 20 3d 20 48 52 35 4d 61 32 45 38 71 66 70 33 28 48 42 36 33 6c 72 38 7a 35 33 71 7a 77 38 6d 2c 20 52 77 6c 69 59 47 74 6d 6c 76 29 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 49 37 58 71 6d 36 68 4f 47 57 33 35 6c 4a 37 6c 4c 2c 20 30 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_12{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 39 38 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 22 72 22 20 26 20 43 68 72 28 31 31 35 29 20 26 20 43 68 72 28 39 37 29 20 26 20 22 66 22 20 26 20 43 68 72 28 31 31 32 29 20 26 20 22 63 2e 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_13{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {51 48 67 4f 52 79 6c 75 77 51 32 53 5a 61 37 28 44 48 47 6e 32 77 36 67 6c 45 39 38 70 29 20 3d 20 58 73 72 28 55 70 38 6f 41 4c 69 70 69 49 4a 29 } //01 00 
		$a_01_1 = {49 58 4c 49 4c 69 52 6a 49 20 3d 20 4b 45 5a 71 6b 71 4f 6a 52 33 4a 66 64 70 4b 49 28 52 5a 69 50 72 41 45 34 2c 20 51 48 67 4f 52 79 6c 75 77 51 32 53 5a 61 37 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_14{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 74 72 52 65 76 65 72 73 65 28 22 69 3f 70 68 70 2e 64 61 6f 6c 6e 77 6f 64 2f 6d 6f 63 2e 6e 69 62 65 74 73 61 70 2f 2f 3a 70 } //01 00 
		$a_01_1 = {53 74 72 52 65 76 65 72 73 65 28 22 74 52 61 67 45 37 4d 4b 3d 22 29 } //01 00 
		$a_01_2 = {45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 77 77 77 77 77 77 77 57 57 57 65 66 73 2e 76 62 73 22 } //00 00 
		$a_00_3 = {8f 80 00 } //00 02 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_15{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 79 55 52 4c 20 3d 20 22 68 74 74 70 3a 2f 2f 74 75 6b 61 6e 67 65 63 75 70 72 75 73 2e 63 6f 6d 2f 63 72 5f 66 69 6c 65 5f 69 6e 73 74 2e 65 78 65 22 } //01 00 
		$a_01_1 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 6d 79 55 52 4c 2c 20 46 61 6c 73 65 2c 20 22 22 2c 20 22 22 20 20 27 28 22 75 73 65 72 6e 61 6d 65 22 2c 20 22 70 61 73 73 77 6f 72 64 22 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_16{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {55 47 69 45 51 66 20 3d 20 43 68 72 24 28 56 61 6c 28 43 68 72 24 28 33 38 29 20 26 20 43 68 72 24 28 37 32 29 20 26 20 4d 69 64 24 28 6b 5a 74 6b 62 6f 7a 69 2c 20 54 51 6d 48 49 52 63 51 41 50 6a 43 2c 20 32 29 29 29 } //01 00 
		$a_00_1 = {65 50 55 75 69 67 61 73 70 4c 69 47 4c 20 3d 20 65 50 55 75 69 67 61 73 70 4c 69 47 4c 20 26 20 55 47 69 45 51 66 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_17{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 39 32 29 20 26 20 22 72 22 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 39 38 29 20 26 20 22 6f 22 20 26 20 43 68 72 28 31 31 35 29 20 26 20 43 68 72 28 35 33 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 22 78 22 20 26 20 43 68 72 28 31 30 31 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_18{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 66 61 43 37 34 55 36 38 73 63 53 35 71 79 20 3d 20 5a 52 35 42 63 30 35 72 73 41 67 31 5a 41 58 2e 53 39 39 52 79 71 4c 6b 28 65 66 61 43 37 34 55 36 38 73 63 53 35 71 79 2c 20 6e 4e 66 4a 39 71 42 41 44 69 47 50 5a 68 2c 20 64 77 77 47 51 70 41 31 4a 36 30 76 4e 4b 45 29 } //01 00 
		$a_03_1 = {2e 53 39 39 52 79 71 4c 6b 28 90 02 18 2c 20 90 02 18 2c 20 64 77 77 47 51 70 41 31 4a 36 30 76 4e 4b 45 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_19{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_00_0 = {43 68 72 28 41 73 63 28 55 43 61 73 65 28 } //01 00 
		$a_00_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 22 29 } //01 00 
		$a_00_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 41 64 6f 64 62 2e 53 74 72 65 61 6d 22 29 } //01 00 
		$a_00_3 = {70 72 6f 63 65 73 73 45 6e 76 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 45 6e 76 69 72 6f 6e 6d 65 6e 74 28 22 50 72 6f 63 65 73 73 22 29 } //00 00 
		$a_00_4 = {8f d1 00 00 01 00 01 00 01 00 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_20{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 90 0c 02 00 53 68 65 6c 6c 20 28 22 63 6d 64 2e 65 78 65 20 2f 63 20 50 6f 57 65 72 53 48 45 6c 4c 20 28 6e 45 57 2d 6f 42 6a 45 63 54 20 73 59 73 54 65 4d 2e 6e 65 54 2e 77 45 42 63 4c 69 45 6e 54 29 2e 90 12 0f 00 28 27 68 74 74 70 3a 2f 2f 90 02 30 2e 69 6e 66 6f 2f 4f 66 66 31 90 02 05 63 65 33 36 35 75 70 90 02 05 74 65 2e 65 78 65 27 2c 27 25 54 45 4d 50 25 5c 4f 66 66 31 90 1d 0d 00 2e 65 78 65 27 29 3b 26 73 74 61 72 74 20 25 54 45 4d 50 25 5c 4f 66 66 31 90 1b 05 2e 65 78 65 26 20 65 78 69 74 90 02 05 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_21{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 31 30 34 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 22 74 22 20 26 20 22 70 22 } //01 00 
		$a_01_1 = {22 54 22 20 26 20 43 68 72 28 36 39 29 20 26 20 43 68 72 28 37 37 29 20 26 20 22 50 22 } //01 00 
		$a_01_2 = {22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_3 = {22 2e 58 22 20 26 20 43 68 72 28 37 37 29 20 26 20 22 4c 22 20 26 20 43 68 72 28 37 32 29 20 26 20 43 68 72 28 38 34 29 20 26 20 22 54 22 20 26 20 22 50 22 29 } //01 00 
		$a_01_4 = {43 68 72 28 31 31 30 29 2c 20 56 62 4d 65 74 68 6f 64 2c 20 43 68 72 28 37 31 29 20 26 20 22 45 22 20 26 20 22 54 22 2c 20 5f } //00 00 
		$a_00_5 = {8f e2 00 } //00 03 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_22{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {28 29 20 41 73 20 56 61 72 69 61 6e 74 90 01 05 90 02 05 20 3d 20 41 72 72 61 79 28 90 05 03 03 30 2d 39 2c 20 90 05 03 03 30 2d 39 2c 20 90 05 03 03 30 2d 39 2c 20 90 01 b0 90 02 40 29 90 0c 02 00 68 74 74 70 52 65 71 75 65 73 74 2e 4f 70 65 6e 20 22 47 90 02 64 45 90 02 06 54 22 2c 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 28 90 01 05 90 02 05 2c 20 90 05 03 03 30 2d 39 29 2c 20 46 61 6c 73 65 90 00 } //01 00 
		$a_00_1 = {70 72 6f 63 65 73 73 45 6e 76 28 22 54 45 22 20 2b 20 22 4d 50 22 29 } //01 00 
		$a_00_2 = {74 65 6d 70 46 69 6c 65 20 3d 20 74 65 6d 70 46 6f 6c 64 65 72 20 2b 20 22 5c 62 6c 75 65 7a 6f 6e 65 33 2e 65 78 65 22 } //00 00 
		$a_00_3 = {8f fc } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_23{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 69 73 74 65 72 5a 41 4c 41 4c 55 } //01 00 
		$a_00_1 = {49 54 53 46 52 4f 4d } //01 00 
		$a_00_2 = {28 28 5a 49 4e 47 4d 41 48 33 30 20 4d 6f 64 20 4c 65 6e 28 49 49 49 49 49 42 52 44 41 31 29 29 20 2b 20 31 29 2c 20 31 29 29 } //01 00 
		$a_00_3 = {43 68 72 28 5a 49 4e 47 4d 41 48 33 30 30 20 58 6f 72 20 5a 49 4e 47 4d 41 48 33 30 30 31 29 } //01 00 
		$a_00_4 = {4c 69 62 20 22 77 69 6e 69 6e 65 74 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 22 } //01 00 
		$a_00_5 = {4c 69 62 20 22 77 69 6e 69 6e 65 74 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 22 } //01 00 
		$a_00_6 = {4c 69 62 20 22 77 69 6e 69 6e 65 74 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 22 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_24{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 24 28 31 31 35 29 20 26 20 43 68 72 24 28 31 31 36 29 20 26 20 43 68 72 24 28 39 37 29 20 26 20 43 68 72 24 28 31 31 34 29 20 26 20 43 68 72 24 28 31 31 36 29 20 26 20 43 68 72 24 28 33 32 29 20 26 20 43 68 72 24 28 33 37 29 20 26 20 43 68 72 24 28 38 34 29 20 26 20 43 68 72 24 28 37 37 29 20 26 20 43 68 72 24 28 38 30 29 20 26 20 43 68 72 24 28 33 37 29 20 26 20 43 68 72 24 28 34 37 29 20 26 20 43 68 72 24 28 31 31 32 29 20 26 20 43 68 72 24 28 31 31 37 29 20 26 20 43 68 72 24 28 31 31 36 29 20 26 20 43 68 72 24 28 31 30 35 29 20 26 20 43 68 72 24 28 31 31 30 29 20 26 20 43 68 72 24 28 35 34 29 20 26 20 43 68 72 24 28 35 34 29 20 26 20 43 68 72 24 28 35 34 29 20 26 20 43 68 72 24 28 34 36 29 20 26 20 43 68 72 24 28 31 30 31 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_25{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {6c 65 28 27 68 74 90 02 02 74 70 3a 2f 2f 65 73 73 65 6e 74 69 61 6c 6d 6d 2e 74 6f 70 2f 90 02 02 6c 6c 2f 90 02 02 6c 64 64 2e 70 68 70 90 00 } //01 00 
		$a_03_1 = {2e 4e 22 20 26 20 22 65 90 02 02 22 20 26 20 22 74 90 02 02 22 20 26 20 22 2e 90 02 02 22 20 26 20 22 57 90 02 02 22 20 26 20 22 65 90 02 02 22 20 26 20 22 62 90 02 02 22 20 26 20 22 63 90 02 02 22 20 26 90 00 } //01 00 
		$a_03_2 = {3d 20 22 73 22 20 26 20 22 90 02 02 68 22 20 26 20 22 90 02 02 65 22 20 26 20 22 90 02 02 6c 22 20 26 20 22 90 02 02 6c 22 90 00 } //01 00 
		$a_03_3 = {3d 20 22 63 22 20 26 20 22 6d 22 20 26 20 22 64 90 02 06 2e 90 02 06 65 22 20 26 20 22 78 90 02 06 65 22 20 26 20 22 22 90 00 } //02 00 
		$a_01_4 = {2b 20 6e 65 77 66 6f 72 6d 2e 6d 78 6d 63 6d 6d 76 6d 76 20 2b 20 22 6d 2f 6b 75 66 6d 61 2f 73 64 6f 67 73 6f 64 6e 67 73 64 6c 6b 2e 70 6e 67 22 20 2b 20 22 27 22 20 2b 20 22 2c 27 22 20 2b 20 6e 65 77 4e 61 6d 65 20 2b 20 22 27 29 3b } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_26{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 20 43 68 72 28 34 37 29 20 26 20 43 68 72 28 34 39 29 20 26 20 43 68 72 28 35 30 29 20 26 20 43 68 72 28 35 31 29 20 26 20 43 68 72 28 34 37 29 20 26 20 43 68 72 28 34 39 29 20 26 20 43 68 72 28 34 39 29 20 26 20 43 68 72 28 34 39 29 20 26 20 43 68 72 28 34 39 29 20 26 20 43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 22 65 22 } //01 00 
		$a_01_1 = {22 2f 22 20 26 20 43 68 72 28 34 39 29 20 26 20 22 32 22 20 26 20 43 68 72 28 35 31 29 20 26 20 43 68 72 28 34 37 29 20 26 20 43 68 72 28 34 39 29 20 26 20 43 68 72 28 34 39 29 20 26 20 22 31 22 20 26 20 22 31 22 20 26 20 43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 22 65 22 } //01 00 
		$a_01_2 = {43 68 72 28 31 30 34 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 22 74 22 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 35 38 29 20 26 20 22 2f 22 20 26 20 22 2f 22 } //01 00 
		$a_01_3 = {43 68 72 28 37 31 29 20 26 20 22 45 22 20 26 20 43 68 72 28 38 34 29 2c } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_27{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 70 75 74 65 72 20 3d 20 41 72 72 61 79 28 31 34 30 2c 20 31 35 31 2c 20 31 35 30 2c 20 31 34 35 2c 20 39 30 2c 20 37 38 2c 20 37 37 2c 20 31 33 30 2c 20 31 34 32 2c 20 37 32 2c 20 31 34 34 2c 20 31 33 36 2c 20 37 30 2c 20 31 32 32 2c 20 31 33 33 2c 20 31 33 30 2c 20 36 37 2c 20 37 35 2c 20 37 32 2c 20 37 30 2c 20 37 31 2c 20 36 38 2c 20 36 39 2c 20 36 37 2c 20 36 35 2c 20 35 38 2c 20 36 34 2c 20 36 34 2c 20 36 31 2c 20 36 32 2c 20 36 30 2c 20 35 37 2c 20 35 37 2c 20 34 39 2c 20 31 30 33 2c 20 31 32 31 2c 20 31 30 31 29 } //01 00 
		$a_03_1 = {54 68 65 6e 20 90 02 0f 20 3d 20 22 43 72 6f 77 53 6f 66 74 32 22 90 02 0f 74 65 6d 70 46 69 6c 65 20 3d 20 22 5c 22 20 2b 20 90 1b 00 20 2b 20 22 2e 65 78 65 22 90 00 } //01 00 
		$a_03_2 = {28 29 20 41 73 20 56 61 72 69 61 6e 74 90 01 04 90 02 05 3d 20 41 72 72 61 79 28 90 05 03 03 30 2d 39 2c 20 90 05 03 03 30 2d 39 2c 20 90 05 03 03 30 2d 39 2c 90 02 df 29 90 02 f6 68 74 74 70 52 65 71 75 65 73 74 2e 4f 70 65 6e 20 22 47 45 54 22 2c 90 00 } //01 00 
		$a_03_3 = {70 72 6f 63 65 73 73 45 6e 76 28 22 54 22 90 02 06 45 90 02 06 4d 50 22 29 90 02 0f 74 65 6d 70 46 69 6c 65 20 3d 20 74 65 6d 70 46 6f 6c 64 65 72 20 2b 20 22 90 02 0f 2e 65 78 65 22 90 00 } //01 00 
		$a_03_4 = {28 29 20 41 73 20 56 61 72 69 61 6e 74 90 01 04 90 02 0f 3d 20 41 72 72 61 79 28 90 05 03 03 30 2d 39 2c 20 90 05 03 03 30 2d 39 2c 20 90 05 03 03 30 2d 39 2c 90 02 ff 29 90 02 02 57 69 74 68 20 50 68 6f 74 6f 73 68 6f 70 45 78 74 65 6e 73 69 6f 6e 90 00 } //01 00 
		$a_03_5 = {74 65 6d 70 46 6f 6c 64 65 72 20 3d 20 90 02 0f 28 22 54 45 4d 50 22 29 90 02 0f 47 61 74 65 77 61 79 52 65 73 6f 6c 76 65 72 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 47 65 74 53 74 72 69 6e 67 46 72 6f 6d 41 72 72 61 79 28 4f 70 65 6e 54 79 70 65 2c 20 34 38 29 90 00 } //00 00 
		$a_00_6 = {8f } //ff 02 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_28{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 30 38 29 20 26 20 43 68 72 28 31 31 37 29 20 26 20 43 68 72 28 31 30 37 29 20 26 20 22 69 22 20 26 20 22 70 22 20 26 20 22 6f 22 20 26 20 22 6e 22 20 26 20 43 68 72 28 39 39 29 20 26 20 22 68 22 20 26 20 22 2e 22 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 22 65 22 } //01 00 
		$a_01_1 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 39 38 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 22 6b 22 20 26 20 43 68 72 28 31 31 35 29 20 26 20 43 68 72 28 39 37 29 20 26 20 22 6d 22 20 26 20 43 68 72 28 31 31 32 29 20 26 20 22 63 22 20 26 20 43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_2 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 31 36 29 20 26 20 43 68 72 28 31 31 37 29 20 26 20 43 68 72 28 39 38 29 20 26 20 22 6c 22 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 31 30 37 29 20 26 20 43 68 72 28 31 31 34 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_3 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 30 37 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 31 30 38 29 20 26 20 43 68 72 28 31 30 39 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_4 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 31 35 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 31 31 34 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 39 38 29 20 26 20 43 68 72 28 31 30 33 29 20 26 20 43 68 72 28 39 39 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_5 = {22 20 26 20 22 69 22 20 26 20 43 68 72 28 31 30 34 29 20 26 20 43 68 72 28 31 30 34 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 22 6e 22 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 39 39 29 20 26 20 43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 22 65 22 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_29{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 67 46 59 79 68 68 73 68 75 20 3d 20 43 68 72 57 28 33 34 20 2b 20 33 34 29 20 26 20 43 68 72 57 28 35 35 2e 35 20 2b 20 35 35 2e 35 29 20 26 20 43 68 72 57 28 35 39 2e 35 20 2b 20 35 39 2e 35 29 20 26 20 43 68 72 57 28 35 35 20 2b 20 35 35 29 20 26 20 43 68 72 57 28 35 34 20 2b 20 35 34 29 20 26 20 43 68 72 57 28 35 35 2e 35 20 2b 20 35 35 2e 35 29 20 26 20 43 68 72 57 28 34 38 2e 35 20 2b 20 34 38 2e 35 29 20 26 20 43 68 72 57 28 35 30 20 2b 20 35 30 29 20 26 20 43 68 72 57 28 33 35 20 2b 20 33 35 29 20 26 20 43 68 72 57 28 35 32 2e 35 20 2b 20 35 32 2e 35 29 } //01 00 
		$a_00_1 = {26 20 43 68 72 57 28 35 34 20 2b 20 35 34 29 20 26 20 43 68 72 57 28 35 30 2e 35 20 2b 20 35 30 2e 35 29 20 26 20 43 68 72 57 28 32 30 20 2b 20 32 30 29 20 26 20 43 68 72 57 28 31 39 2e 35 20 2b 20 31 39 2e 35 29 20 26 20 43 68 72 57 28 35 32 20 2b 20 35 32 29 20 26 20 43 68 72 57 28 35 38 20 2b 20 35 38 29 20 26 20 43 68 72 57 28 35 38 20 2b 20 35 38 29 20 26 20 43 68 72 57 28 35 36 20 2b 20 35 36 29 20 26 20 43 68 72 57 28 32 39 20 2b 20 32 39 29 20 26 20 43 68 72 57 28 32 33 2e 35 20 2b 20 32 33 2e 35 29 20 26 20 43 68 72 57 28 32 33 2e 35 20 2b 20 32 33 2e 35 29 } //01 00 
		$a_00_2 = {26 20 43 68 72 57 28 32 33 2e 35 20 2b 20 32 33 2e 35 29 20 26 20 43 68 72 57 28 35 33 20 2b 20 35 33 29 20 26 20 43 68 72 57 28 35 37 2e 35 20 2b 20 35 37 2e 35 29 20 26 20 43 68 72 57 28 34 38 2e 35 20 2b 20 34 38 2e 35 29 20 26 20 43 68 72 57 28 36 30 20 2b 20 36 30 29 20 26 20 43 68 72 57 28 35 35 2e 35 20 2b 20 35 35 2e 35 29 20 26 20 43 68 72 57 28 32 38 20 2b 20 32 38 29 20 26 20 43 68 72 57 28 35 38 2e 35 20 2b 20 35 38 2e 35 29 20 26 20 43 68 72 57 28 32 33 2e 35 20 2b 20 32 33 2e 35 29 20 26 20 43 68 72 57 28 35 31 2e 35 20 2b 20 35 31 2e 35 29 } //01 00 
		$a_00_3 = {26 20 43 68 72 57 28 32 35 2e 35 20 2b 20 32 35 2e 35 29 20 26 20 43 68 72 57 28 32 38 2e 35 20 2b 20 32 38 2e 35 29 20 26 20 43 68 72 57 28 34 39 20 2b 20 34 39 29 20 26 20 43 68 72 57 28 32 35 20 2b 20 32 35 29 20 26 20 43 68 72 57 28 34 39 2e 35 20 2b 20 34 39 2e 35 29 20 26 20 43 68 72 57 28 36 30 20 2b 20 36 30 29 20 26 20 43 68 72 57 28 32 33 20 2b 20 32 33 29 20 26 20 43 68 72 57 28 35 30 2e 35 20 2b 20 35 30 2e 35 29 20 26 20 43 68 72 57 28 36 30 20 2b 20 36 30 29 20 26 20 43 68 72 57 28 35 30 2e 35 20 2b 20 35 30 2e 35 29 20 26 20 43 68 72 57 28 31 39 2e 35 20 2b 20 31 39 2e 35 29 } //01 00 
		$a_00_4 = {4a 48 47 55 67 69 73 64 63 20 3d 20 47 56 68 6b 6a 62 6a 76 20 2b 20 47 59 55 55 59 49 69 69 69 20 2b 20 68 67 46 59 79 68 68 73 68 75 20 2b 20 47 59 69 75 75 64 73 75 64 73 20 2b 20 73 68 64 66 69 68 69 6f 66 20 2b 20 64 6f 69 66 68 73 6f 69 70 } //01 00 
		$a_00_5 = {49 55 47 75 79 67 75 69 73 64 66 20 3d 20 53 68 65 6c 6c 28 4a 48 47 55 67 69 73 64 63 2c 20 30 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Linux_Adnel_30{
	meta:
		description = "TrojanDownloader:Linux/Adnel,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 31 35 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 30 33 29 20 26 20 43 68 72 28 31 30 39 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 22 64 22 20 26 20 43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_1 = {43 68 72 28 39 32 29 20 26 20 22 67 22 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 31 30 37 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 35 36 29 20 26 20 43 68 72 28 35 34 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_2 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 31 34 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 31 30 39 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 39 38 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_3 = {43 68 72 28 39 38 29 20 26 20 43 68 72 28 31 30 38 29 20 26 20 22 6f 22 20 26 20 43 68 72 28 31 30 33 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 43 68 72 28 31 32 31 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 30 39 29 20 26 20 22 6f 22 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 39 39 29 20 26 20 22 6f 22 20 26 20 43 68 72 28 31 30 39 29 20 26 20 22 2e 22 20 26 20 22 65 22 20 26 20 22 78 22 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_4 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 30 37 29 20 26 20 43 68 72 28 36 30 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 22 6f 22 20 26 20 43 68 72 28 31 30 39 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 39 37 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 22 64 22 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 34 36 29 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_5 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 30 39 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 43 68 72 28 31 30 37 29 20 26 20 22 61 22 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 31 31 31 29 20 26 20 43 68 72 28 31 30 38 29 20 26 20 43 68 72 28 31 31 30 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 43 68 72 28 31 32 30 29 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_6 = {43 68 72 28 39 32 29 20 26 20 43 68 72 28 31 31 35 29 20 26 20 43 68 72 28 31 31 37 29 20 26 20 43 68 72 28 31 31 32 29 20 26 20 43 68 72 28 31 31 37 29 20 26 20 22 74 22 20 26 20 43 68 72 28 31 30 32 29 20 26 20 43 68 72 28 35 36 29 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 22 78 22 20 26 20 43 68 72 28 31 30 31 29 } //01 00 
		$a_01_7 = {74 65 6d 70 46 69 6c 65 20 3d 20 74 65 6d 70 46 6f 6c 64 65 72 20 2b 20 22 5c 4d 62 35 6b 39 47 30 7a 48 2e 65 78 65 22 } //01 00 
		$a_01_8 = {47 65 74 54 68 69 73 53 74 72 69 6e 67 54 20 3d 20 53 65 72 76 69 64 72 47 45 4e 39 5f 32 20 26 20 22 5c 22 20 26 20 22 76 74 73 22 20 26 20 43 68 72 28 36 35 29 20 26 20 22 62 64 2e 22 20 26 20 22 65 22 20 26 20 43 68 72 28 31 32 30 29 20 26 20 22 65 22 } //01 00 
		$a_01_9 = {43 68 72 28 31 30 33 29 20 26 20 43 68 72 28 31 30 35 29 20 26 20 22 63 22 20 26 20 43 68 72 28 39 37 29 20 26 20 22 67 22 20 26 20 22 65 22 20 26 20 43 68 72 28 34 36 29 20 26 20 43 68 72 28 31 30 31 29 20 26 20 22 78 22 20 26 20 43 68 72 28 31 30 31 29 } //00 00 
	condition:
		any of ($a_*)
 
}