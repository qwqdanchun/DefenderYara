
rule Backdoor_Win32_PcClient_DN{
	meta:
		description = "Backdoor:Win32/PcClient.DN,SIGNATURE_TYPE_PEHSTR,1b 00 1b 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 37 2e 30 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 32 3b 20 2e 4e 45 54 20 43 4c 52 20 31 2e 31 2e 34 33 32 32 3b 20 2e 4e 45 54 20 43 4c 52 20 32 2e 30 2e 35 30 37 32 37 3b 20 49 6e 66 6f 50 61 74 68 2e 31 29 } //02 00  User-Agent: Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.1)
		$a_01_1 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 4f 4e 54 52 4f 4c 53 45 54 5c 53 45 52 56 49 43 45 53 5c } //02 00  SYSTEM\CurrentCONTROLSET\SERVICES\
		$a_01_2 = {25 73 25 30 38 78 2e 73 79 73 } //02 00  %s%08x.sys
		$a_01_3 = {25 64 2e 65 78 65 } //02 00  %d.exe
		$a_01_4 = {5b 25 30 32 64 2d 25 30 34 64 2d 25 30 32 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 5d } //02 00  [%02d-%04d-%02d %02d:%02d:%02d]
		$a_01_5 = {2f 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 } //02 00  /svchost.exe -k 
		$a_01_6 = {53 65 72 76 69 63 65 44 6c 6c } //02 00  ServiceDll
		$a_01_7 = {47 6c 6f 62 61 6c 5c 25 73 2d 6b 65 79 2d 6d 65 74 75 78 } //02 00  Global\%s-key-metux
		$a_01_8 = {5c 5c 2e 5c 25 73 } //01 00  \\.\%s
		$a_01_9 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //01 00  OpenSCManagerA
		$a_01_10 = {53 65 72 76 69 63 65 4d 61 69 6e } //01 00  ServiceMain
		$a_01_11 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 57 } //00 00  SetWindowsHookExW
	condition:
		any of ($a_*)
 
}