
rule Trojan_BAT_Downloader_BH_MTB{
	meta:
		description = "Trojan:BAT/Downloader.BH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 05 00 "
		
	strings :
		$a_81_0 = {68 74 74 70 3a 2f 2f 77 77 77 2e 74 72 61 63 74 6f 72 61 6e 64 69 6e 61 73 2e 63 6f 6d 2f 61 6a 75 6b 66 6a 68 6f 73 67 68 2f 69 6f 43 6f 6e 73 6f 6c 65 41 70 70 } //05 00  http://www.tractorandinas.com/ajukfjhosgh/ioConsoleApp
		$a_81_1 = {68 74 74 70 73 3a 2f 2f 77 77 77 2e 75 70 6c 6f 6f 64 65 72 2e 6e 65 74 2f 69 6d 67 2f 69 6d 61 67 65 } //01 00  https://www.uplooder.net/img/image
		$a_81_2 = {70 6f 77 65 72 73 68 65 6c 6c } //01 00  powershell
		$a_81_3 = {70 69 6e 67 20 79 61 68 6f 6f 2e 63 6f 6d } //01 00  ping yahoo.com
		$a_81_4 = {70 69 6e 67 20 67 6f 6f 67 6c 65 2e 63 6f 6d } //01 00  ping google.com
		$a_01_5 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_6 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}