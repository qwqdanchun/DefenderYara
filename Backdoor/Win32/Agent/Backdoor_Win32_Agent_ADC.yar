
rule Backdoor_Win32_Agent_ADC{
	meta:
		description = "Backdoor:Win32/Agent.ADC,SIGNATURE_TYPE_PEHSTR_EXT,ffffffb1 00 ffffffb1 00 11 00 00 32 00 "
		
	strings :
		$a_00_0 = {5c 75 70 64 61 74 65 2e 62 61 6b } //02 00  \update.bak
		$a_00_1 = {2e 68 74 6d 47 45 54 } //02 00  .htmGET
		$a_00_2 = {2e 61 73 70 47 45 54 } //02 00  .aspGET
		$a_00_3 = {2e 68 74 6d 6c 47 45 54 } //02 00  .htmlGET
		$a_00_4 = {63 3a 5c 70 61 67 65 66 69 6c 65 2e 70 69 66 } //02 00  c:\pagefile.pif
		$a_00_5 = {57 69 6e 64 6f 77 73 39 38 } //02 00  Windows98
		$a_00_6 = {57 69 6e 64 6f 77 73 39 35 } //02 00  Windows95
		$a_00_7 = {57 69 6e 64 6f 77 73 4e 54 } //02 00  WindowsNT
		$a_00_8 = {57 69 6e 64 6f 77 73 32 30 30 30 } //02 00  Windows2000
		$a_00_9 = {57 69 6e 64 6f 77 73 58 50 } //02 00  WindowsXP
		$a_00_10 = {57 69 6e 64 6f 77 73 32 30 30 33 } //02 00  Windows2003
		$a_00_11 = {66 75 63 6b 77 65 62 } //02 00  fuckweb
		$a_00_12 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 3a 2f 2f 77 77 77 2e 62 61 69 64 75 2e 63 6f 6d } //02 00  Referer: http://www.baidu.com
		$a_00_13 = {5c 41 75 74 6f 52 75 6e 2e 69 6e 66 } //01 00  \AutoRun.inf
		$a_00_14 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 50 00 68 00 79 00 73 00 69 00 63 00 61 00 6c 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  \Device\PhysicalMemory
		$a_00_15 = {5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //64 00  \system32\drivers\svchost.exe
		$a_02_16 = {33 c0 53 56 57 8d 7c 24 90 01 01 f3 ab 8d 44 24 90 01 01 68 00 01 00 00 50 ff 15 90 01 09 83 c9 ff 33 c0 8d 90 01 03 f2 ae f7 d1 2b f9 50 8b f7 8b d9 8b fa 83 c9 ff f2 ae 8b cb 4f c1 e9 02 f3 a5 6a 02 8b cb 6a 02 50 83 e1 03 6a 02 8d 90 01 03 68 00 00 00 40 f3 a4 50 ff 15 90 01 08 6a 00 51 8b f0 68 00 20 00 00 68 90 01 04 56 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}