
rule Backdoor_Win32_PcClient_YX{
	meta:
		description = "Backdoor:Win32/PcClient.YX,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 11 00 00 01 00 "
		
	strings :
		$a_00_0 = {25 73 5c 25 73 } //01 00  %s\%s
		$a_00_1 = {25 73 5c 2a 2e 2a } //01 00  %s\*.*
		$a_00_2 = {63 6d 64 2e 65 78 65 } //01 00  cmd.exe
		$a_00_3 = {5c 5c 2e 5c 25 73 } //01 00  \\.\%s
		$a_00_4 = {53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 48 54 54 50 5c 73 68 65 6c 6c 5c 6f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 } //01 00  SOFTWARE\Classes\HTTP\shell\open\command
		$a_00_5 = {5c 5c 2e 5c 70 69 70 65 5c } //01 00  \\.\pipe\
		$a_00_6 = {25 73 25 73 25 73 25 73 } //01 00  %s%s%s%s
		$a_00_7 = {25 73 25 73 25 73 25 73 5c 50 61 72 61 6d 65 74 65 72 73 } //01 00  %s%s%s%s\Parameters
		$a_00_8 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c } //01 00  %SystemRoot%\System32\
		$a_00_9 = {25 73 20 25 73 20 25 73 } //01 00  %s %s %s
		$a_00_10 = {5b 25 30 34 64 2d 25 30 32 64 2d 25 30 32 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 5d } //01 00  [%04d-%02d-%02d %02d:%02d:%02d]
		$a_00_11 = {25 64 2e 65 78 65 } //01 00  %d.exe
		$a_00_12 = {25 64 2e 74 6d 70 } //01 00  %d.tmp
		$a_00_13 = {48 6f 73 74 3a } //01 00  Host:
		$a_00_14 = {68 74 74 70 3a 2f 2f 25 73 } //01 00  http://%s
		$a_00_15 = {4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 32 3b 20 53 56 31 3b 20 2e 4e 45 54 20 43 4c 52 20 31 2e 31 2e 34 33 32 32 29 } //02 00  Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; .NET CLR 1.1.4322)
		$a_01_16 = {8d 45 fc 50 8d 85 ec dd ff ff 68 00 20 00 00 50 ff 75 08 ff 15 00 93 00 10 85 c0 74 20 39 5d fc 74 1b 8d 45 0c 53 50 8d 85 ec dd ff ff ff 75 fc 89 5d 0c 50 56 ff 15 94 91 00 10 eb c3 56 ff 15 d8 91 00 10 6a 01 5b ff 75 08 ff 15 04 93 00 10 5f 5e ff 75 f0 ff 15 04 93 00 10 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_PcClient_YX_2{
	meta:
		description = "Backdoor:Win32/PcClient.YX,SIGNATURE_TYPE_PEHSTR_EXT,14 00 0e 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 } //01 00  \svchost.exe
		$a_00_1 = {44 6f 53 65 72 76 69 63 65 } //01 00  DoService
		$a_00_2 = {2e 73 79 73 } //01 00  .sys
		$a_00_3 = {64 72 69 76 65 72 73 5c } //01 00  drivers\
		$a_00_4 = {2e 70 78 79 } //01 00  .pxy
		$a_00_5 = {2e 64 72 76 } //07 00  .drv
		$a_01_6 = {8d 85 74 fe ff ff 50 ff 15 28 20 40 00 8b 3d 2c 20 40 00 8d 85 74 fe ff ff 68 58 30 40 00 50 ff d7 8d 8d 74 fe ff ff 8d 86 fe 04 00 00 51 50 89 45 e4 ff 15 10 20 40 00 8d 86 70 02 00 00 50 ff 75 e4 ff d7 68 50 30 40 00 ff 75 e4 ff d7 8d 8d 74 fe ff ff 8d 86 fe 06 00 00 51 50 ff 15 10 20 40 00 8d 86 70 02 00 00 50 8d 86 fe 06 00 00 50 ff d7 8d 86 fe 06 00 00 68 48 30 40 00 50 ff d7 8d 8d 74 fe ff ff 8d 86 fe 07 00 00 51 } //07 00 
		$a_01_7 = {50 ff 15 10 20 40 00 8d 86 70 02 00 00 50 8d 86 fe 07 00 00 50 ff d7 8d 86 fe 07 00 00 68 40 30 40 00 50 ff d7 8d 8d 74 fe ff ff 8d 86 fe 05 00 00 51 50 89 45 08 ff 15 10 20 40 00 68 34 30 40 00 ff 75 08 ff d7 8d 86 70 02 00 00 50 ff 75 08 ff d7 68 2c 30 40 00 ff 75 08 ff d7 8d 86 ec 03 00 00 50 e8 67 fb ff ff } //00 00 
	condition:
		any of ($a_*)
 
}