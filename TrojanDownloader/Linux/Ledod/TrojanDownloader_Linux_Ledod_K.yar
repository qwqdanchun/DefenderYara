
rule TrojanDownloader_Linux_Ledod_K{
	meta:
		description = "TrojanDownloader:Linux/Ledod.K,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 22 25 41 50 50 44 41 54 41 25 22 29 } //1 .ExpandEnvironmentStrings("%APPDATA%")
		$a_03_1 = {53 65 74 20 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 48 54 54 50 22 29 } //1
		$a_03_2 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f [0-60] 2e 65 78 65 22 2c 20 46 61 6c 73 65 } //1
		$a_03_3 = {2e 73 61 76 65 74 6f 66 69 6c 65 20 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 20 26 20 22 5c ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 5c ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 2e 63 6f 6d 22 2c 20 32 } //1
		$a_03_4 = {2e 52 75 6e 20 43 68 72 28 33 34 29 20 26 20 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 20 26 20 43 68 72 28 33 34 29 2c 20 31 2c 20 54 72 75 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}