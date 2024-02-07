
rule TrojanDownloader_BAT_AgentTesla_BE_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.BE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {73 00 75 00 62 00 71 00 74 00 61 00 6e 00 65 00 6f 00 75 00 73 00 73 00 68 00 6f 00 70 00 2e 00 63 00 6f 00 6d 00 } //05 00  subqtaneousshop.com
		$a_01_1 = {24 32 66 37 39 35 30 38 38 2d 30 61 64 62 2d 34 61 34 38 2d 61 62 35 66 2d 33 30 61 38 32 32 32 33 38 37 63 32 } //01 00  $2f795088-0adb-4a48-ab5f-30a8222387c2
		$a_01_2 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00  select * from Win32_OperatingSystem
		$a_01_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_5 = {2d 00 2d 00 55 00 73 00 65 00 72 00 20 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 2d 00 2d 00 } //00 00  --User Information--
	condition:
		any of ($a_*)
 
}