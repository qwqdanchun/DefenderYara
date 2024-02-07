
rule TrojanSpy_Win32_Bancos_PZ{
	meta:
		description = "TrojanSpy:Win32/Bancos.PZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {47 00 3a 00 5c 00 61 00 5f 00 61 00 73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 48 00 65 00 6c 00 70 00 65 00 72 00 2e 00 76 00 62 00 70 00 } //01 00  G:\a_asystem\BrowserHelper.vbp
		$a_01_1 = {4e 61 6d 65 00 00 00 00 56 61 6c 75 65 00 00 00 53 65 72 76 65 72 00 00 50 6f 72 74 00 00 00 00 55 73 65 72 4e 61 6d 65 00 00 00 00 50 61 73 73 77 6f 72 64 00 } //01 00 
		$a_01_2 = {43 6f 64 69 67 6f 5f 4a 61 6e 65 6c 61 00 } //00 00  潃楤潧䩟湡汥a
	condition:
		any of ($a_*)
 
}