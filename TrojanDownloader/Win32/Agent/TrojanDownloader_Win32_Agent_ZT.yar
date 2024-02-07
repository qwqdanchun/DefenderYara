
rule TrojanDownloader_Win32_Agent_ZT{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZT,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 05 00 00 0a 00 "
		
	strings :
		$a_02_0 = {8d 4c 24 18 51 68 00 10 00 00 56 56 57 ff 15 90 01 04 81 c3 00 10 00 00 81 c6 00 10 00 00 90 00 } //0a 00 
		$a_02_1 = {68 04 01 00 00 51 56 55 e8 90 01 04 85 c0 75 90 01 01 55 68 80 00 00 00 6a 03 55 6a 01 8d 94 24 2c 01 00 00 68 00 00 00 80 52 ff 15 90 00 } //05 00 
		$a_00_2 = {68 74 74 70 3a 2f 2f 77 6d 6a 71 72 2e 63 6e } //01 00  http://wmjqr.cn
		$a_00_3 = {4b 65 72 6e 65 6c 46 61 69 6c 43 68 65 63 6b } //01 00  KernelFailCheck
		$a_00_4 = {25 73 5c 73 79 73 63 68 65 63 6b 2e 65 78 65 } //00 00  %s\syscheck.exe
	condition:
		any of ($a_*)
 
}