
rule HackTool_Win32_DumpLsass_S{
	meta:
		description = "HackTool:Win32/DumpLsass.S,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 73 61 73 73 20 64 75 6d 70 } //01 00 
		$a_01_1 = {6c 00 73 00 61 00 73 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_2 = {4f 70 65 6e 50 72 6f 63 65 73 73 00 } //01 00 
		$a_01_3 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 57 00 } //01 00 
		$a_01_4 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 57 00 } //01 00 
		$a_01_5 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 00 } //01 00 
		$a_01_6 = {4d 69 6e 69 44 75 6d 70 57 72 69 74 65 44 75 6d 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}