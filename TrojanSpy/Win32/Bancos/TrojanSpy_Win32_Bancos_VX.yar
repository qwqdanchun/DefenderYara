
rule TrojanSpy_Win32_Bancos_VX{
	meta:
		description = "TrojanSpy:Win32/Bancos.VX,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 66 65 72 6e 61 6e 64 61 64 65 75 68 6f 6a 65 00 } //01 00 
		$a_01_1 = {00 61 73 65 6e 68 61 00 } //01 00  愀敳桮a
		$a_01_2 = {00 00 64 00 61 00 64 00 6f 00 73 00 3d 00 00 00 } //01 00 
		$a_01_3 = {00 00 26 00 72 00 65 00 61 00 73 00 69 00 6f 00 6e 00 3d 00 00 00 } //01 00 
		$a_01_4 = {00 00 75 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}