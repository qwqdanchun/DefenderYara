
rule Trojan_Win32_HijackSQLServer_A{
	meta:
		description = "Trojan:Win32/HijackSQLServer.A,SIGNATURE_TYPE_CMDHSTR_EXT,1f 00 1f 00 07 00 00 0a 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //0a 00  powershell
		$a_00_1 = {2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 66 00 69 00 6c 00 65 00 28 00 } //0a 00  .downloadfile(
		$a_00_2 = {6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //01 00  net.webclient
		$a_00_3 = {77 00 6d 00 69 00 63 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 63 00 61 00 6c 00 6c 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 } //01 00  wmic process call create
		$a_00_4 = {73 00 74 00 61 00 72 00 74 00 20 00 } //01 00  start 
		$a_00_5 = {73 00 74 00 61 00 72 00 74 00 2d 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 } //01 00  start-process 
		$a_00_6 = {77 00 6d 00 69 00 63 00 69 00 6d 00 76 00 32 00 2f 00 77 00 69 00 6e 00 33 00 32 00 5f 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //00 00  wmicimv2/win32_process
	condition:
		any of ($a_*)
 
}