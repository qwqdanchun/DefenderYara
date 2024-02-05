
rule VirTool_Win32_UACBypassExp_A{
	meta:
		description = "VirTool:Win32/UACBypassExp.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_1 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_2 = {63 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_3 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_4 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_5 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_6 = {72 00 65 00 67 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_7 = {72 00 65 00 67 00 65 00 64 00 69 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_8 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_9 = {20 00 2f 00 69 00 3a 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_UACBypassExp_A_2{
	meta:
		description = "VirTool:Win32/UACBypassExp.A,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_1 = {20 00 2d 00 77 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 20 00 } //01 00 
		$a_02_2 = {49 00 65 00 78 00 90 02 60 2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_UACBypassExp_A_3{
	meta:
		description = "VirTool:Win32/UACBypassExp.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 } //01 00 
		$a_00_1 = {2d 00 4d 00 70 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 20 00 } //01 00 
		$a_00_2 = {20 00 2d 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 20 00 31 00 } //01 00 
		$a_00_3 = {20 00 2d 00 45 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_UACBypassExp_A_4{
	meta:
		description = "VirTool:Win32/UACBypassExp.A,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 } //01 00 
		$a_00_1 = {57 00 4d 00 49 00 43 00 } //01 00 
		$a_00_2 = {2f 00 4e 00 61 00 6d 00 65 00 73 00 70 00 61 00 63 00 65 00 3a 00 5c 00 5c 00 72 00 6f 00 6f 00 74 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 63 00 6c 00 61 00 73 00 73 00 20 00 4d 00 53 00 46 00 54 00 5f 00 4d 00 70 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 } //01 00 
		$a_00_3 = {63 00 61 00 6c 00 6c 00 20 00 41 00 64 00 64 00 20 00 45 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 50 00 61 00 74 00 68 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_UACBypassExp_A_5{
	meta:
		description = "VirTool:Win32/UACBypassExp.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 00 00 90 02 60 72 00 65 00 67 00 90 02 08 20 00 61 00 64 00 64 00 20 00 48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 41 00 70 00 70 00 58 00 38 00 32 00 61 00 36 00 67 00 77 00 72 00 65 00 34 00 66 00 64 00 67 00 33 00 62 00 74 00 36 00 33 00 35 00 74 00 6e 00 35 00 63 00 74 00 71 00 6a 00 66 00 38 00 6d 00 73 00 64 00 64 00 32 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 90 00 } //01 00 
		$a_00_1 = {20 00 2f 00 64 00 20 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 } //01 00 
		$a_00_2 = {20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 } //01 00 
		$a_00_3 = {20 00 2f 00 66 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_UACBypassExp_A_6{
	meta:
		description = "VirTool:Win32/UACBypassExp.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {5c 00 72 00 65 00 67 00 2e 00 65 00 78 00 65 00 00 00 90 02 60 72 00 65 00 67 00 90 02 08 20 00 61 00 64 00 64 00 20 00 48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 43 00 6c 00 61 00 73 00 73 00 65 00 73 00 5c 00 41 00 70 00 70 00 58 00 38 00 32 00 61 00 36 00 67 00 77 00 72 00 65 00 34 00 66 00 64 00 67 00 33 00 62 00 74 00 36 00 33 00 35 00 74 00 6e 00 35 00 63 00 74 00 71 00 6a 00 66 00 38 00 6d 00 73 00 64 00 64 00 32 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 90 00 } //01 00 
		$a_00_1 = {20 00 2f 00 64 00 20 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 } //01 00 
		$a_00_2 = {20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 53 00 5a 00 20 00 } //01 00 
		$a_00_3 = {20 00 2f 00 66 00 } //00 00 
	condition:
		any of ($a_*)
 
}