
rule VirTool_BAT_CryptInject_PH_MTB{
	meta:
		description = "VirTool:BAT/CryptInject.PH!MTB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 00 69 00 6e 00 6b 00 5a 00 69 00 70 00 2e 00 64 00 6c 00 6c 00 } //01 00  LinkZip.dll
		$a_01_1 = {41 73 73 65 6d 62 6c 79 20 66 6f 72 20 44 6f 74 4e 65 74 54 6f 4a 53 63 72 69 70 74 } //01 00  Assembly for DotNetToJScript
		$a_01_2 = {4a 61 6d 65 73 20 46 6f 72 73 68 61 77 } //01 00  James Forshaw
		$a_01_3 = {25 00 74 00 65 00 6d 00 70 00 25 00 } //01 00  %temp%
		$a_01_4 = {62 00 64 00 2e 00 68 00 74 00 61 00 } //01 00  bd.hta
		$a_01_5 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  mshta.exe
		$a_01_6 = {4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 20 00 28 00 63 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 6c 00 65 00 3b 00 20 00 57 00 69 00 6e 00 33 00 32 00 3b 00 20 00 57 00 69 00 6e 00 48 00 74 00 74 00 70 00 2e 00 57 00 69 00 6e 00 48 00 74 00 74 00 70 00 52 00 65 00 71 00 75 00 65 00 73 00 74 00 2e 00 } //01 00  Mozilla/4.0 (compatible; Win32; WinHttp.WinHttpRequest.
		$a_01_7 = {66 69 6e 61 6c 55 72 6c } //01 00  finalUrl
		$a_01_8 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_9 = {61 76 55 72 6c } //00 00  avUrl
	condition:
		any of ($a_*)
 
}