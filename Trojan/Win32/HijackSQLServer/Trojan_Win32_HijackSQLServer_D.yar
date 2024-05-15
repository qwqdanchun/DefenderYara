
rule Trojan_Win32_HijackSQLServer_D{
	meta:
		description = "Trojan:Win32/HijackSQLServer.D,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 0f 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  cmd.exe
		$a_00_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00  powershell.exe
		$a_00_2 = {77 00 6d 00 69 00 63 00 69 00 6d 00 76 00 32 00 2f 00 77 00 69 00 6e 00 33 00 32 00 5f 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 } //01 00  wmicimv2/win32_process 
		$a_00_3 = {70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 63 00 61 00 6c 00 6c 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 } //01 00  process call create 
		$a_00_4 = {73 00 74 00 61 00 72 00 74 00 2d 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 } //01 00  start-process 
		$a_00_5 = {77 00 69 00 6e 00 72 00 6d 00 } //01 00  winrm
		$a_00_6 = {65 00 63 00 68 00 6f 00 } //01 00  echo
		$a_00_7 = {69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 77 00 65 00 62 00 72 00 65 00 71 00 75 00 65 00 73 00 74 00 } //01 00  invoke-webrequest
		$a_00_8 = {69 00 77 00 72 00 20 00 } //01 00  iwr 
		$a_00_9 = {2d 00 4f 00 75 00 74 00 46 00 69 00 6c 00 65 00 } //01 00  -OutFile
		$a_00_10 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 66 00 69 00 6c 00 65 00 } //01 00  downloadfile
		$a_00_11 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 } //01 00  downloadstring
		$a_00_12 = {66 00 72 00 6f 00 6d 00 62 00 61 00 73 00 65 00 36 00 34 00 73 00 74 00 72 00 69 00 6e 00 67 00 } //9c ff  frombase64string
		$a_00_13 = {5c 00 77 00 65 00 62 00 70 00 72 00 65 00 73 00 65 00 6e 00 74 00 65 00 64 00 2e 00 77 00 70 00 63 00 72 00 6d 00 2e 00 63 00 6f 00 6e 00 73 00 6f 00 6c 00 65 00 2e 00 65 00 78 00 65 00 } //9c ff  \webpresented.wpcrm.console.exe
		$a_80_14 = {63 61 70 5f 76 65 72 69 66 79 2e 62 61 74 } //cap_verify.bat  00 00 
	condition:
		any of ($a_*)
 
}