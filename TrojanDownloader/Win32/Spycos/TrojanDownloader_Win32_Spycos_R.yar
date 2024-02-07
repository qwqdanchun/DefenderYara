
rule TrojanDownloader_Win32_Spycos_R{
	meta:
		description = "TrojanDownloader:Win32/Spycos.R,SIGNATURE_TYPE_PEHSTR_EXT,11 00 10 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {bb 01 00 00 00 e9 a3 00 00 00 8b 45 f8 0f b6 44 38 ff 89 45 e8 47 8b 75 f8 85 f6 74 05 83 ee 04 8b 36 3b f7 7d 05 bf 01 00 00 00 90 01 4d 8b 45 e8 33 45 e0 89 45 e4 8d 45 cc 90 00 } //05 00 
		$a_03_1 = {22 20 2d 75 00 90 09 30 00 34 90 01 01 00 00 ff ff ff ff 18 00 90 00 } //01 00 
		$a_01_2 = {43 6f 6e 74 72 6f 6c 50 61 6e 65 6c 43 70 6c 2e 63 70 6c 00 } //01 00 
		$a_01_3 = {70 64 6c 6c 69 6e 73 74 61 6c 65 72 2e 64 6c 6c 00 69 6e 73 74 61 6c 6c 00 } //01 00 
		$a_01_4 = {55 50 44 20 31 30 20 44 49 53 43 41 52 44 41 42 4c 45 20 22 68 74 6d 6c 67 72 64 2e 65 78 65 22 } //00 00  UPD 10 DISCARDABLE "htmlgrd.exe"
	condition:
		any of ($a_*)
 
}