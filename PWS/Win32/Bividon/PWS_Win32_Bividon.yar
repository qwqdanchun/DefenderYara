
rule PWS_Win32_Bividon{
	meta:
		description = "PWS:Win32/Bividon,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {8b 55 fc 8a 54 1a ff 80 f2 e9 88 54 18 ff 43 4e 75 e6 } //0a 00 
		$a_00_1 = {41 70 70 44 61 74 61 00 ff ff ff ff 40 00 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //01 00 
		$a_01_2 = {6a 00 68 80 00 00 00 6a 02 6a 00 6a 02 68 00 00 00 40 } //01 00 
		$a_00_3 = {56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 00 55 8b } //01 00 
		$a_00_4 = {00 73 68 65 6c 6c 5f 74 72 61 79 77 6e 64 00 } //01 00 
		$a_00_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b } //00 00  SetWindowsHook
	condition:
		any of ($a_*)
 
}