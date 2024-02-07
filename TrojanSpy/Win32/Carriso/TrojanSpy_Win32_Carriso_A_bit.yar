
rule TrojanSpy_Win32_Carriso_A_bit{
	meta:
		description = "TrojanSpy:Win32/Carriso.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 31 39 32 2e 31 36 38 2e 31 31 2e 34 30 2f 63 2f 74 2e 70 68 70 } //01 00  http://192.168.11.40/c/t.php
		$a_01_1 = {46 69 6c 65 45 78 65 63 75 74 69 6f 6e 4d 6f 64 65 6c 3a 3a 45 78 65 63 75 74 65 46 69 6c 65 46 72 6f 6d 42 61 73 65 36 34 44 61 74 61 } //01 00  FileExecutionModel::ExecuteFileFromBase64Data
		$a_03_2 = {49 6e 6a 65 63 74 20 4d 61 6e 61 67 65 72 20 44 6f 6e 65 2e 90 02 20 43 61 72 72 69 65 72 20 4d 6f 64 75 6c 65 90 00 } //01 00 
		$a_03_3 = {43 68 65 63 6b 90 02 04 57 69 6e 33 32 90 02 04 50 6c 75 67 69 6e 90 02 04 53 65 72 76 65 72 90 02 04 43 6c 6f 75 64 90 02 04 4f 72 61 63 6c 65 90 02 04 4e 56 49 44 49 41 90 02 04 41 75 64 69 6f 90 02 04 41 76 69 72 61 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}