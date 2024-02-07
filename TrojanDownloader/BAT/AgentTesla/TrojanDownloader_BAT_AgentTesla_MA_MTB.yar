
rule TrojanDownloader_BAT_AgentTesla_MA_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {3a 00 2f 00 2f 00 74 00 72 00 69 00 67 00 6f 00 6e 00 65 00 76 00 6f 00 2e 00 78 00 79 00 7a 00 2f 00 62 00 72 00 75 00 68 00 2f 00 78 00 64 00 } //0a 00  ://trigonevo.xyz/bruh/xd
		$a_01_1 = {3a 00 2f 00 2f 00 74 00 72 00 69 00 67 00 6f 00 6e 00 65 00 76 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 66 00 69 00 6c 00 65 00 73 00 2f 00 78 00 64 00 } //01 00  ://trigonevo.com/files/xd
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_01_3 = {50 6f 72 6e 44 6f 77 6e 6c 6f 61 64 } //01 00  PornDownload
		$a_01_4 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 20 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 } //01 00  Please disable antivirus
		$a_01_5 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_6 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 49 00 4d 00 20 00 54 00 72 00 69 00 67 00 6f 00 6e 00 } //01 00  taskkill /F /IM Trigon
		$a_01_7 = {65 00 63 00 68 00 6f 00 20 00 6a 00 20 00 7c 00 20 00 64 00 65 00 6c 00 20 00 61 00 75 00 74 00 6f 00 64 00 65 00 6c 00 65 00 74 00 65 00 2e 00 62 00 61 00 74 00 } //01 00  echo j | del autodelete.bat
		$a_01_8 = {50 6f 72 6e 43 68 65 63 6b 65 64 } //01 00  PornChecked
		$a_01_9 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_10 = {2e 00 2f 00 54 00 72 00 69 00 67 00 6f 00 6e 00 2f 00 62 00 69 00 6e 00 2f 00 54 00 72 00 69 00 67 00 6f 00 6e 00 2e 00 64 00 6c 00 6c 00 } //00 00  ./Trigon/bin/Trigon.dll
	condition:
		any of ($a_*)
 
}