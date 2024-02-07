
rule TrojanDownloader_Win32_VB_XK{
	meta:
		description = "TrojanDownloader:Win32/VB.XK,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 20 00 2d 00 6e 00 20 00 33 00 20 00 3e 00 3e 00 20 00 4e 00 55 00 4c 00 20 00 26 00 26 00 20 00 64 00 65 00 6c 00 } //01 00  cmd /c ping localhost -n 3 >> NUL && del
		$a_01_1 = {41 00 76 00 70 00 4d 00 2c 00 61 00 76 00 70 00 6d 00 2c 00 6b 00 6c 00 73 00 77 00 64 00 2c 00 6b 00 61 00 76 00 2c 00 6b 00 61 00 76 00 73 00 76 00 63 00 2c 00 61 00 76 00 70 00 2e 00 } //01 00  AvpM,avpm,klswd,kav,kavsvc,avp.
		$a_01_2 = {54 00 65 00 61 00 54 00 69 00 6d 00 65 00 72 00 2c 00 73 00 64 00 68 00 65 00 6c 00 70 00 65 00 72 00 2c 00 53 00 70 00 79 00 62 00 6f 00 74 00 2c 00 73 00 70 00 79 00 62 00 6f 00 74 00 2c 00 4d 00 53 00 41 00 53 00 43 00 75 00 69 00 } //0a 00  TeaTimer,sdhelper,Spybot,spybot,MSASCui
		$a_00_3 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //0a 00  mshta.exe
		$a_00_4 = {78 70 72 65 6d 61 69 6e } //0a 00  xpremain
		$a_00_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 43 61 63 68 65 46 69 6c 65 41 } //0a 00  URLDownloadToCacheFileA
		$a_00_6 = {5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //00 00  \VB98\VB6.OLB
	condition:
		any of ($a_*)
 
}