
rule VirTool_Win32_RenPsEncode_gen_A{
	meta:
		description = "VirTool:Win32/RenPsEncode.gen!A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 09 00 00 01 00 "
		
	strings :
		$a_02_0 = {20 00 2d 00 65 00 90 02 04 20 00 51 00 51 00 42 00 6b 00 41 00 47 00 51 00 41 00 4c 00 51 00 42 00 4e 00 41 00 48 00 41 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_1 = {20 00 2d 00 65 00 90 02 04 20 00 55 00 77 00 42 00 30 00 41 00 47 00 45 00 41 00 63 00 67 00 42 00 30 00 41 00 43 00 30 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_2 = {20 00 2d 00 65 00 90 02 04 20 00 59 00 77 00 42 00 74 00 41 00 47 00 51 00 41 00 4c 00 67 00 42 00 6c 00 41 00 48 00 67 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_3 = {20 00 2d 00 65 00 90 02 04 20 00 53 00 51 00 42 00 75 00 41 00 48 00 59 00 41 00 62 00 77 00 42 00 72 00 41 00 47 00 55 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_4 = {20 00 2d 00 65 00 90 02 04 20 00 51 00 77 00 41 00 36 00 41 00 46 00 77 00 41 00 56 00 77 00 42 00 70 00 41 00 47 00 34 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_5 = {20 00 2d 00 65 00 90 02 04 20 00 4b 00 41 00 42 00 4f 00 41 00 47 00 55 00 41 00 64 00 77 00 41 00 74 00 41 00 45 00 38 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_6 = {20 00 2d 00 65 00 90 02 04 20 00 63 00 41 00 42 00 76 00 41 00 48 00 63 00 41 00 5a 00 51 00 42 00 79 00 41 00 48 00 4d 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_7 = {20 00 2d 00 65 00 90 02 04 20 00 4a 00 41 00 42 00 6c 00 41 00 48 00 67 00 41 00 5a 00 51 00 41 00 67 00 41 00 44 00 30 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //01 00 
		$a_02_8 = {20 00 2d 00 65 00 90 02 04 20 00 59 00 77 00 42 00 74 00 41 00 47 00 51 00 41 00 49 00 41 00 41 00 76 00 41 00 47 00 4d 00 41 00 90 22 80 0b 30 2d 39 41 2d 5a 61 2d 7a 2f 2b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}