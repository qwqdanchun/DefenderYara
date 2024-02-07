
rule VirTool_Win32_Orbyt_B_dr{
	meta:
		description = "VirTool:Win32/Orbyt.B!dr,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {66 72 6d 4d 61 69 6e 00 4d 6f 64 53 68 65 6c 6c 45 78 65 63 75 74 65 00 4d 6f 64 52 43 34 00 00 4d 6f 64 48 69 64 65 41 70 70 00 00 4d 6f 64 47 6c 6f 62 61 6c 00 00 00 4d 6f 64 44 69 72 45 78 69 73 74 73 00 } //01 00 
		$a_00_1 = {4f 00 72 00 62 00 7a 00 20 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 } //01 00  Orbz Crypter
		$a_00_2 = {68 00 61 00 6e 00 73 00 69 00 72 00 6f 00 63 00 6b 00 7a 00 } //01 00  hansirockz
		$a_00_3 = {2f 00 5c 00 23 00 2f 00 5c 00 } //00 00  /\#/\
	condition:
		any of ($a_*)
 
}