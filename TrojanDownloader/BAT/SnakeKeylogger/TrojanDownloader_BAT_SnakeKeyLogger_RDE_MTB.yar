
rule TrojanDownloader_BAT_SnakeKeyLogger_RDE_MTB{
	meta:
		description = "TrojanDownloader:BAT/SnakeKeyLogger.RDE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 66 62 35 34 38 36 38 2d 37 64 61 38 2d 34 37 66 36 2d 61 64 66 63 2d 61 66 36 62 63 35 37 36 39 36 62 30 } //01 00  8fb54868-7da8-47f6-adfc-af6bc57696b0
		$a_01_1 = {2f 00 2f 00 31 00 38 00 35 00 2e 00 32 00 34 00 36 00 2e 00 32 00 32 00 30 00 2e 00 32 00 31 00 30 00 2f 00 5a 00 6c 00 73 00 7a 00 79 00 70 00 69 00 76 00 6c 00 64 00 2e 00 62 00 6d 00 70 00 } //01 00  //185.246.220.210/Zlszypivld.bmp
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_01_3 = {47 00 65 00 74 00 2d 00 44 00 61 00 74 00 65 00 } //01 00  Get-Date
		$a_01_4 = {44 00 69 00 69 00 6c 00 6a 00 74 00 72 00 6a 00 72 00 70 00 77 00 73 00 74 00 61 00 65 00 79 00 6f 00 6b 00 6f 00 66 00 2e 00 4b 00 62 00 65 00 6a 00 70 00 6e 00 65 00 70 00 67 00 6c 00 61 00 62 00 76 00 61 00 67 00 66 00 65 00 77 00 63 00 69 00 6e 00 74 00 6c 00 } //01 00  Diiljtrjrpwstaeyokof.Kbejpnepglabvagfewcintl
		$a_01_5 = {4d 00 77 00 6e 00 72 00 65 00 6e 00 77 00 71 00 65 00 6f 00 6e 00 70 00 66 00 76 00 61 00 } //00 00  Mwnrenwqeonpfva
	condition:
		any of ($a_*)
 
}