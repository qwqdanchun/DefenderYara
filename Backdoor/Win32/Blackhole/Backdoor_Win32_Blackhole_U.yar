
rule Backdoor_Win32_Blackhole_U{
	meta:
		description = "Backdoor:Win32/Blackhole.U,SIGNATURE_TYPE_PEHSTR_EXT,ffffff8a 00 ffffff8a 00 09 00 00 64 00 "
		
	strings :
		$a_01_0 = {42 6c 61 63 6b 48 6f 6c 65 20 52 65 6d 6f 74 65 20 43 6f 6e 74 72 6f 6c 20 53 65 72 76 69 63 65 73 } //0a 00  BlackHole Remote Control Services
		$a_00_1 = {62 72 63 5f 53 65 72 76 65 72 2e 65 78 65 } //0a 00  brc_Server.exe
		$a_00_2 = {62 72 63 5f 53 65 72 76 65 72 2e 64 6c 6c } //05 00  brc_Server.dll
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 31 00 33 00 38 00 73 00 6f 00 66 00 74 00 2e 00 6f 00 72 00 67 00 } //05 00  http://www.138soft.org
		$a_01_4 = {6c 00 6f 00 76 00 65 00 6a 00 69 00 6e 00 67 00 74 00 61 00 6f 00 40 00 32 00 31 00 63 00 6e 00 2e 00 63 00 6f 00 6d 00 } //05 00  lovejingtao@21cn.com
		$a_00_5 = {68 74 74 70 3a 2f 2f 69 70 2e 61 71 31 33 38 2e 63 6f 6d 2f 73 65 74 69 70 2e 61 73 70 } //01 00  http://ip.aq138.com/setip.asp
		$a_00_6 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_7 = {46 50 55 4d 61 73 6b 56 61 6c 75 65 } //01 00  FPUMaskValue
		$a_01_8 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  Toolhelp32ReadProcessMemory
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Blackhole_U_2{
	meta:
		description = "Backdoor:Win32/Blackhole.U,SIGNATURE_TYPE_PEHSTR_EXT,ffffff99 00 ffffff99 00 0d 00 00 64 00 "
		
	strings :
		$a_01_0 = {42 6c 61 63 6b 48 6f 6c 65 20 52 65 6d 6f 74 65 20 43 6f 6e 74 72 6f 6c 20 53 65 72 76 69 63 65 73 } //0a 00  BlackHole Remote Control Services
		$a_00_1 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //0a 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_2 = {46 50 55 4d 61 73 6b 56 61 6c 75 65 } //05 00  FPUMaskValue
		$a_01_3 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //05 00  CreateToolhelp32Snapshot
		$a_01_4 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  Toolhelp32ReadProcessMemory
		$a_00_5 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 } //05 00  Process32First
		$a_00_6 = {73 6f 63 6b 65 74 } //05 00  socket
		$a_01_7 = {73 68 75 74 64 6f 77 6e } //05 00  shutdown
		$a_01_8 = {73 65 74 73 6f 63 6b 6f 70 74 } //02 00  setsockopt
		$a_01_9 = {68 74 74 70 3a 2f 2f 77 77 77 2e 31 33 38 73 6f 66 74 2e 6f 72 67 } //02 00  http://www.138soft.org
		$a_01_10 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 31 00 33 00 38 00 73 00 6f 00 66 00 74 00 2e 00 6f 00 72 00 67 00 } //01 00  http://www.138soft.org
		$a_01_11 = {6c 6f 76 65 6a 69 6e 67 74 61 6f 40 32 31 63 6e 2e 63 6f 6d } //01 00  lovejingtao@21cn.com
		$a_01_12 = {67 65 74 69 70 2e 61 73 70 } //00 00  getip.asp
	condition:
		any of ($a_*)
 
}