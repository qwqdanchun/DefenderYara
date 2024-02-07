
rule HackTool_Win32_Granier_A_dha{
	meta:
		description = "HackTool:Win32/Granier.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {4a 00 61 00 73 00 6f 00 6e 00 20 00 2d 00 20 00 45 00 78 00 63 00 68 00 61 00 6e 00 67 00 65 00 20 00 4d 00 61 00 69 00 6c 00 20 00 42 00 46 00 20 00 2d 00 20 00 76 00 20 00 } //02 00  Jason - Exchange Mail BF - v 
		$a_01_1 = {4a 61 73 6f 6e 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 4a 61 73 6f 6e 2e 70 64 62 } //01 00  Jason\obj\Release\Jason.pdb
		$a_01_2 = {45 00 6d 00 61 00 69 00 6c 00 20 00 63 00 68 00 65 00 63 00 6b 00 20 00 74 00 69 00 6d 00 65 00 20 00 70 00 65 00 72 00 20 00 54 00 68 00 72 00 65 00 61 00 64 00 20 00 3a 00 } //01 00  Email check time per Thread :
		$a_01_3 = {41 00 64 00 64 00 20 00 74 00 6f 00 20 00 55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 20 00 53 00 74 00 61 00 72 00 74 00 20 00 3a 00 } //01 00  Add to Username Start :
		$a_01_4 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 20 00 22 00 7b 00 30 00 7d 00 22 00 20 00 45 00 6d 00 61 00 69 00 6c 00 73 00 20 00 3a 00 } //00 00  Downloading "{0}" Emails :
	condition:
		any of ($a_*)
 
}