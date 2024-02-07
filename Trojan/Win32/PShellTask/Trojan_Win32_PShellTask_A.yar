
rule Trojan_Win32_PShellTask_A{
	meta:
		description = "Trojan:Win32/PShellTask.A,SIGNATURE_TYPE_CMDHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 } //01 00  schtasks
		$a_02_1 = {6d 00 73 00 68 00 74 00 61 00 90 02 10 76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 90 00 } //01 00 
		$a_00_2 = {63 00 72 00 65 00 61 00 74 00 65 00 6f 00 62 00 6a 00 65 00 63 00 74 00 28 00 } //01 00  createobject(
		$a_00_3 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  wscript.shell
		$a_00_4 = {2e 00 72 00 75 00 6e 00 } //01 00  .run
		$a_00_5 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_00_6 = {69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 } //01 00  invoke-
		$a_02_7 = {77 00 69 00 6e 00 64 00 6f 00 77 00 90 02 02 63 00 6c 00 6f 00 73 00 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}