
rule TrojanSpy_Win32_Delf_CZ{
	meta:
		description = "TrojanSpy:Win32/Delf.CZ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {73 73 6d 6d 74 74 70 70 90 02 30 74 65 78 74 6f 90 02 10 68 74 74 70 3a 2f 2f 77 77 77 2e 77 61 72 64 72 61 6b 65 2e 6e 65 74 2f 69 64 65 61 90 02 20 2e 70 68 70 90 00 } //01 00 
		$a_02_1 = {6d 6d 73 73 6e 6e 90 02 30 74 65 78 74 6f 90 02 10 68 74 74 70 3a 2f 2f 77 77 77 2e 77 61 72 64 72 61 6b 65 2e 6e 65 74 2f 69 64 65 61 90 02 20 2e 70 68 70 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}