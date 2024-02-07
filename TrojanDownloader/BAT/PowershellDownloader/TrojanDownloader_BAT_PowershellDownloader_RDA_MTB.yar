
rule TrojanDownloader_BAT_PowershellDownloader_RDA_MTB{
	meta:
		description = "TrojanDownloader:BAT/PowershellDownloader.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 45 00 6e 00 63 00 6f 00 64 00 65 00 64 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //02 00  /c powershell -EncodedCommand
		$a_01_1 = {2d 00 45 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 50 00 61 00 74 00 68 00 20 00 40 00 28 00 24 00 65 00 6e 00 76 00 3a 00 55 00 73 00 65 00 72 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 2c 00 24 00 65 00 6e 00 76 00 3a 00 53 00 79 00 73 00 74 00 65 00 6d 00 44 00 72 00 69 00 76 00 65 00 29 00 } //02 00  -ExclusionPath @($env:UserProfile,$env:SystemDrive)
		$a_01_2 = {2d 00 43 00 68 00 69 00 6c 00 64 00 50 00 61 00 74 00 68 00 20 00 27 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 36 00 34 00 2e 00 65 00 78 00 65 00 27 00 29 00 29 00 } //01 00  -ChildPath 'services64.exe'))
		$a_01_3 = {44 65 65 70 6e 75 64 65 } //01 00  Deepnude
		$a_01_4 = {35 38 35 30 61 32 62 30 2d 33 37 31 37 2d 34 39 64 30 2d 62 33 39 32 2d 35 61 31 32 61 36 31 33 35 31 62 39 } //00 00  5850a2b0-3717-49d0-b392-5a12a61351b9
	condition:
		any of ($a_*)
 
}