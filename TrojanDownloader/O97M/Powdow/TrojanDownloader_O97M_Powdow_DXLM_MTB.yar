
rule TrojanDownloader_O97M_Powdow_DXLM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.DXLM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 61 6c 6c 20 45 72 72 2e 52 61 69 73 65 28 76 62 4f 62 6a 65 63 74 45 72 72 6f 72 2c 20 22 4d 79 44 65 63 6f 64 65 22 2c 20 22 49 6e 70 75 74 20 73 74 72 69 6e 67 20 69 73 20 6e 6f 74 20 76 61 6c 69 64 20 42 61 73 65 36 34 2e 22 29 } //01 00  Call Err.Raise(vbObjectError, "MyDecode", "Input string is not valid Base64.")
		$a_03_1 = {73 74 72 73 74 72 20 3d 20 22 63 6d 64 2e 65 78 65 20 2f 63 20 22 22 70 6f 77 65 72 73 68 65 6c 6c 20 2d 45 78 65 63 75 74 69 6f 6e 50 6f 6c 69 63 79 20 42 79 70 61 73 53 20 2d 45 4e 43 20 22 20 2b 20 53 74 72 43 6f 6e 76 28 44 65 63 6f 64 65 36 34 28 90 02 04 5f 53 74 61 74 75 73 5f 90 02 06 28 29 29 2c 20 76 62 46 72 6f 6d 55 6e 69 63 6f 64 65 29 20 2b 20 22 22 22 22 90 00 } //01 00 
		$a_01_2 = {53 65 74 20 6f 62 6a 50 72 6f 63 65 73 73 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 5c 5c 2e 5c 72 6f 6f 74 5c 63 69 6d 76 32 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 } //01 00  Set objProcess = GetObject("winmgmts:\\.\root\cimv2:Win32_Process")
		$a_01_3 = {6f 62 6a 50 72 6f 63 65 73 73 2e 43 72 65 61 74 65 20 73 74 72 73 74 72 2c 20 4e 75 6c 6c 2c 20 6f 62 6a 43 6f 6e 66 69 67 2c 20 69 6e 74 50 72 6f 63 65 73 73 49 44 } //01 00  objProcess.Create strstr, Null, objConfig, intProcessID
		$a_01_4 = {50 72 69 76 61 74 65 20 43 6f 6e 73 74 20 63 6c 4f 6e 65 4d 61 73 6b 20 3d 20 31 36 35 31 35 30 37 32 } //01 00  Private Const clOneMask = 16515072
		$a_01_5 = {62 49 6e 20 3d 20 53 74 72 43 6f 6e 76 28 73 53 74 72 69 6e 67 2c 20 76 62 46 72 6f 6d 55 6e 69 63 6f 64 65 29 } //01 00  bIn = StrConv(sString, vbFromUnicode)
		$a_03_6 = {49 66 20 69 50 61 64 20 54 68 65 6e 20 73 4f 75 74 20 3d 20 4c 65 66 74 24 28 73 4f 75 74 2c 20 4c 65 6e 28 73 4f 75 74 29 20 2d 20 69 50 61 64 29 90 02 10 44 65 63 6f 64 65 36 34 20 3d 20 73 4f 75 74 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}