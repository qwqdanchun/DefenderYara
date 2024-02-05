
rule VirTool_Win32_EsentutlDmp_A{
	meta:
		description = "VirTool:Win32/EsentutlDmp.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 00 65 00 73 00 65 00 6e 00 74 00 75 00 74 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_02_1 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 90 02 02 63 00 6f 00 6e 00 66 00 69 00 67 00 90 02 02 53 00 41 00 4d 00 20 00 90 00 } //01 00 
		$a_02_2 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 90 02 02 63 00 6f 00 6e 00 66 00 69 00 67 00 90 02 02 53 00 59 00 53 00 54 00 45 00 4d 00 20 00 90 00 } //01 00 
		$a_02_3 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 90 02 02 63 00 6f 00 6e 00 66 00 69 00 67 00 90 02 02 53 00 45 00 43 00 55 00 52 00 49 00 54 00 59 00 20 00 90 00 } //01 00 
		$a_00_4 = {20 00 2f 00 79 00 20 00 } //01 00 
		$a_00_5 = {20 00 2f 00 64 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}