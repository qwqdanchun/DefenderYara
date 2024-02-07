
rule TrojanDownloader_BAT_Small_T_bit{
	meta:
		description = "TrojanDownloader:BAT/Small.T!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {64 00 6f 00 63 00 73 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 63 00 90 02 10 69 00 64 00 3d 00 90 02 40 65 00 78 00 70 00 6f 00 72 00 74 00 3d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 90 00 } //02 00 
		$a_03_1 = {2e 00 70 00 68 00 70 00 90 02 10 69 00 64 00 3d 00 90 02 20 26 00 74 00 79 00 70 00 65 00 3d 00 90 02 20 26 00 74 00 65 00 78 00 74 00 3d 00 90 00 } //01 00 
		$a_03_2 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 6d 00 61 00 6e 00 33 00 33 00 2e 00 72 00 75 00 2f 00 90 02 20 2e 00 6a 00 70 00 67 00 90 00 } //01 00 
		$a_03_3 = {77 00 69 00 6e 00 33 00 32 00 5f 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 90 02 10 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 49 00 44 00 90 00 } //01 00 
		$a_01_4 = {77 00 69 00 6e 00 33 00 32 00 5f 00 6c 00 6f 00 67 00 69 00 63 00 61 00 6c 00 64 00 69 00 73 00 6b 00 2e 00 64 00 65 00 76 00 69 00 63 00 65 00 69 00 64 00 3d 00 } //01 00  win32_logicaldisk.deviceid=
		$a_01_5 = {56 00 6f 00 6c 00 75 00 6d 00 65 00 53 00 65 00 72 00 69 00 61 00 6c 00 4e 00 75 00 6d 00 62 00 65 00 72 00 } //00 00  VolumeSerialNumber
	condition:
		any of ($a_*)
 
}