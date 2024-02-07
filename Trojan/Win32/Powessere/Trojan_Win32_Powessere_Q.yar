
rule Trojan_Win32_Powessere_Q{
	meta:
		description = "Trojan:Win32/Powessere.Q,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {6d 00 73 00 68 00 74 00 61 00 } //01 00  mshta
		$a_00_1 = {76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 } //01 00  vbscript:Execute
		$a_00_2 = {29 00 2e 00 52 00 75 00 6e 00 } //01 00  ).Run
		$a_00_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_00_4 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 45 00 78 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 } //01 00  Invoke-Expression
		$a_00_5 = {69 00 77 00 72 00 20 00 2d 00 75 00 72 00 69 00 20 00 } //01 00  iwr -uri 
		$a_02_6 = {2e 00 70 00 68 00 70 00 20 00 2d 00 6d 00 65 00 74 00 68 00 6f 00 64 00 20 00 70 00 6f 00 73 00 74 00 20 00 2d 00 62 00 6f 00 64 00 79 00 20 00 90 02 20 29 00 2e 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}