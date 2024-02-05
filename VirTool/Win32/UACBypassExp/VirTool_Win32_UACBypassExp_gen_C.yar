
rule VirTool_Win32_UACBypassExp_gen_C{
	meta:
		description = "VirTool:Win32/UACBypassExp.gen!C,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 13 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_1 = {5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_2 = {5c 00 63 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_3 = {5c 00 77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_4 = {5c 00 6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_5 = {5c 00 73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_6 = {5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_7 = {5c 00 72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_8 = {5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_9 = {5c 00 72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 } //f6 ff 
		$a_00_10 = {36 00 61 00 62 00 33 00 33 00 65 00 36 00 31 00 2d 00 34 00 31 00 63 00 33 00 2d 00 34 00 62 00 37 00 30 00 2d 00 62 00 36 00 34 00 64 00 2d 00 39 00 61 00 31 00 64 00 31 00 62 00 34 00 38 00 61 00 62 00 62 00 63 00 } //f6 ff 
		$a_00_11 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 20 00 54 00 68 00 72 00 65 00 61 00 74 00 20 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 5c 00 } //f6 ff 
		$a_00_12 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 } //f6 ff 
		$a_00_13 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 63 00 63 00 6d 00 63 00 61 00 63 00 68 00 65 00 5c 00 } //f6 ff 
		$a_00_14 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 43 00 43 00 4d 00 5c 00 } //f6 ff 
		$a_00_15 = {5c 00 53 00 79 00 73 00 56 00 6f 00 6c 00 5c 00 } //f6 ff 
		$a_00_16 = {5c 00 6e 00 65 00 74 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 } //f6 ff 
		$a_00_17 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 41 00 54 00 50 00 4f 00 6e 00 62 00 6f 00 61 00 72 00 64 00 69 00 6e 00 67 00 53 00 63 00 72 00 69 00 70 00 74 00 } //f6 ff 
		$a_00_18 = {20 00 2d 00 4e 00 6f 00 6e 00 69 00 6e 00 74 00 65 00 72 00 61 00 63 00 74 00 69 00 76 00 65 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}