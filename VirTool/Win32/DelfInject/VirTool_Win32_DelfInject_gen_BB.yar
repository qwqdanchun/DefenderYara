
rule VirTool_Win32_DelfInject_gen_BB{
	meta:
		description = "VirTool:Win32/DelfInject.gen!BB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 08 00 00 0a 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 30 00 00 8b 45 90 01 01 50 8b 45 90 01 01 8b 40 34 50 8b 85 90 01 04 50 a1 90 01 04 8b 00 ff d0 90 00 } //01 00 
		$a_11_1 = {72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 01 } //00 10 
		$a_53_2 = {74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 01 00 0c } //11 52 
		$a_73_3 = {6d 65 54 68 72 65 61 64 01 00 12 11 45 6e 75 6d 52 65 73 6f 75 72 63 65 4e 61 6d 65 73 41 01 00 0e 11 43 72 65 61 74 65 50 72 6f 63 65 73 73 41 01 00 0e 11 56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 01 00 11 11 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 00 5d 04 00 00 34 3a 02 80 5c 22 00 00 } //36 3a 
	condition:
		any of ($a_*)
 
}