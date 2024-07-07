
rule TrojanDownloader_O97M_obfuse_DR_MTB{
	meta:
		description = "TrojanDownloader:O97M/obfuse.DR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 } //1 Attribute VB_Name
		$a_00_1 = {53 75 62 20 6d 61 6c 69 63 69 6f 75 73 28 29 } //1 Sub malicious()
		$a_03_2 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 5c 5c 31 37 32 2e 31 36 2e 32 31 35 2e 31 33 31 5c 90 02 09 5c 6b 61 70 69 74 61 6e 68 61 63 6b 2e 64 6c 6c 90 00 } //1
		$a_00_3 = {52 75 6e 20 43 61 6c 63 75 6c 61 74 6f 72 } //1 Run Calculator
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_obfuse_DR_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/obfuse.DR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {72 6c 62 39 6c 6d 74 2e 63 6f 6d 2f 69 7a 35 2f 79 61 63 61 2e 70 68 70 3f 6c 3d 74 7a 65 36 2e 63 61 62 22 90 0a 2c 00 22 68 74 74 70 3a 2f 2f 90 00 } //1
		$a_00_1 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 } //1 Attribute VB_Name
		$a_00_2 = {2e 72 75 6e 20 22 72 65 67 73 76 72 33 32 20 31 2e 65 78 70 22 } //1 .run "regsvr32 1.exp"
		$a_00_3 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //1 Sub autoopen()
		$a_00_4 = {4e 65 77 20 57 73 68 53 68 65 6c 6c } //1 New WshShell
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_obfuse_DR_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/obfuse.DR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {26 20 22 5c 64 72 69 76 65 72 73 5c 90 02 0f 22 90 00 } //1
		$a_03_1 = {52 65 70 6c 61 63 65 28 90 01 01 2c 20 22 23 34 35 2e 37 38 2e 32 31 2e 31 35 30 20 90 02 14 22 2c 90 00 } //1
		$a_03_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 65 6e 64 4b 65 79 73 20 22 25 28 90 02 0a 29 7b 45 4e 54 45 52 7d 22 90 00 } //1
		$a_03_3 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 26 20 22 90 02 0f 2e 78 6c 73 22 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule TrojanDownloader_O97M_obfuse_DR_MTB_4{
	meta:
		description = "TrojanDownloader:O97M/obfuse.DR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {74 69 6c 70 53 2e 73 72 61 68 43 69 69 63 73 61 24 3d 6d 6a 24 } //1 tilpS.srahCiicsa$=mj$
		$a_01_1 = {33 37 40 41 36 40 45 32 40 46 36 40 34 37 40 31 36 40 36 37 40 46 32 40 31 33 40 31 33 40 31 33 40 45 32 40 38 33 40 35 33 40 31 33 40 45 32 40 37 33 40 32 33 40 32 33 40 45 32 40 32 33 40 39 33 40 31 33 40 46 32 40 46 32 40 41 33 40 30 37 40 34 37 40 34 37 40 38 36 } //1 37@A6@E2@F6@47@16@67@F2@13@13@13@E2@83@53@13@E2@73@23@23@E2@23@93@13@F2@F2@A3@07@47@47@86
		$a_01_2 = {39 32 40 37 32 40 33 37 40 41 36 40 45 32 40 46 36 40 34 37 40 31 36 40 36 37 40 43 35 40 37 32 40 30 32 40 42 32 40 31 34 40 34 35 40 31 34 40 34 34 40 30 35 40 30 35 40 31 34 40 41 33 40 36 37 40 45 36 40 35 36 40 34 32 40 38 32 40 33 37 40 33 37 40 35 36 40 33 36 40 46 36 40 32 37 40 30 37 40 44 32 40 34 37 40 32 37 40 31 36 40 34 37 40 33 37 } //1 92@72@37@A6@E2@F6@47@16@67@C5@72@02@B2@14@45@14@44@05@05@14@A3@67@E6@56@42@82@37@37@56@36@F6@27@07@D2@47@27@16@47@37
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}