
rule Trojan_Win32_HijackSQLServer_AB{
	meta:
		description = "Trojan:Win32/HijackSQLServer.AB,SIGNATURE_TYPE_CMDHSTR_EXT,23 00 23 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //0a 00  powershell
		$a_00_1 = {6e 00 65 00 74 00 2e 00 77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //0a 00  net.webclient
		$a_00_2 = {2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 } //05 00  .downloadstring(
		$a_00_3 = {69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 65 00 78 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 } //05 00  invoke-expression
		$a_00_4 = {69 00 65 00 78 00 } //ce ff  iex
		$a_00_5 = {63 00 68 00 6f 00 63 00 6f 00 6c 00 61 00 74 00 65 00 79 00 } //00 00  chocolatey
	condition:
		any of ($a_*)
 
}