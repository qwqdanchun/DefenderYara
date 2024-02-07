
rule TrojanDownloader_O97M_YedatObfus_A{
	meta:
		description = "TrojanDownloader:O97M/YedatObfus.A,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //01 00  CreateObject("Scripting.FileSystemObject")
		$a_01_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //01 00  CreateObject("WScript.Shell")
		$a_03_2 = {20 41 73 20 53 74 72 69 6e 67 90 02 0f 20 3d 20 90 02 0f 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 90 02 0f 28 41 72 72 61 79 28 90 00 } //01 00 
		$a_03_3 = {49 66 20 4c 65 6e 28 44 69 72 28 90 02 0f 2c 20 90 02 0f 29 29 20 3d 20 30 20 54 68 65 6e 20 4d 6b 44 69 72 90 02 10 4e 65 78 74 90 00 } //01 00 
		$a_03_4 = {53 65 74 20 90 02 0f 20 3d 20 90 02 0f 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 90 02 0f 29 90 00 } //01 00 
		$a_03_5 = {53 65 74 20 90 02 0f 20 3d 20 90 02 0f 2e 45 78 65 63 28 90 02 0f 28 41 72 72 61 79 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}