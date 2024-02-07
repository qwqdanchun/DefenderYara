
rule TrojanSpy_Win32_Pasuom_A{
	meta:
		description = "TrojanSpy:Win32/Pasuom.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 70 6c 6f 61 64 76 61 6c 75 65 53 65 72 76 65 72 } //01 00  uploadvalueServer
		$a_01_1 = {55 6e 70 72 6f 74 65 63 74 } //02 00  Unprotect
		$a_01_2 = {6d 79 6d 79 43 72 79 70 74 } //01 00  mymyCrypt
		$a_01_3 = {44 61 74 61 50 72 6f 74 65 63 74 69 6f 6e 53 63 6f 70 65 } //01 00  DataProtectionScope
		$a_00_4 = {5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //01 00  \Login Data
		$a_00_5 = {22 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 5f 00 6b 00 65 00 79 00 22 00 3a 00 22 00 } //03 00  "encrypted_key":"
		$a_02_6 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 20 2e 00 72 00 75 00 2f 00 70 00 73 00 77 00 64 00 2e 00 70 00 68 00 70 00 90 00 } //00 00 
		$a_00_7 = {5d 04 00 00 } //bc 09 
	condition:
		any of ($a_*)
 
}