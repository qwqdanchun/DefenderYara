
rule TrojanSpy_Win32_Bancos_VY{
	meta:
		description = "TrojanSpy:Win32/Bancos.VY,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {57 69 72 65 6c 65 73 73 2e 65 78 65 20 4e 61 63 69 6f 6e 61 6c } //04 00 
		$a_01_1 = {31 52 48 52 43 54 55 3c 50 62 74 76 64 63 70 75 7e 62 3d 31 68 70 31 61 64 74 75 74 31 70 72 72 74 75 74 63 31 70 31 62 64 31 7e 77 78 72 78 } //02 00 
		$a_01_2 = {25 73 3c 69 6e 70 75 74 20 74 79 70 65 3d 22 68 69 64 64 65 6e 22 20 6e 61 6d 65 3d 22 25 73 22 20 76 61 6c 75 65 3d 22 25 73 22 3e 25 73 } //03 00 
		$a_01_3 = {2e 70 6c 2f 72 65 6c 61 63 6a 65 2f 63 61 72 62 2e 70 68 70 } //00 00 
	condition:
		any of ($a_*)
 
}