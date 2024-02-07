
rule Backdoor_Win32_PowerSpider_gen_N{
	meta:
		description = "Backdoor:Win32/PowerSpider.gen!N,SIGNATURE_TYPE_PEHSTR_EXT,22 01 1d 01 0c 00 00 64 00 "
		
	strings :
		$a_01_0 = {6a 6f 6b 79 63 61 72 64 2e 65 78 65 } //64 00  jokycard.exe
		$a_01_1 = {6f 69 63 71 32 30 30 30 2e 63 66 67 } //0a 00  oicq2000.cfg
		$a_01_2 = {73 6d 74 70 2e 25 73 } //0a 00  smtp.%s
		$a_00_3 = {57 4e 65 74 45 6e 75 6d 43 61 63 68 65 64 50 61 73 73 77 6f 72 64 73 } //0a 00  WNetEnumCachedPasswords
		$a_00_4 = {53 68 65 6c 6c 20 44 6f 63 4f 62 6a 65 63 74 20 56 69 65 77 } //0a 00  Shell DocObject View
		$a_01_5 = {52 65 64 4d 6f 6f 6e } //0a 00  RedMoon
		$a_01_6 = {43 74 72 6c 2b 41 6c 74 2b 45 6e 64 } //0a 00  Ctrl+Alt+End
		$a_00_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //0a 00  URLDownloadToFileA
		$a_01_8 = {43 50 77 64 56 69 65 77 } //0a 00  CPwdView
		$a_01_9 = {43 53 65 63 6f 6e 64 50 61 67 65 } //05 00  CSecondPage
		$a_01_10 = {25 73 5c 70 77 64 62 6f 78 2a 2e 65 78 65 } //05 00  %s\pwdbox*.exe
		$a_01_11 = {63 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 54 65 6e 63 65 6e 74 } //00 00  c:\Program Files\Tencent
	condition:
		any of ($a_*)
 
}