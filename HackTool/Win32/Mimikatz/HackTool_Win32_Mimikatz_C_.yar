
rule HackTool_Win32_Mimikatz_C_{
	meta:
		description = "HackTool:Win32/Mimikatz.C!!Mimikatz.C,SIGNATURE_TYPE_ARHSTR_EXT,1e 00 1e 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {6d 69 6d 69 6b 61 74 7a 20 90 02 02 2e 90 02 02 2e 90 02 02 20 28 78 90 01 02 29 20 62 75 69 6c 74 20 6f 6e 90 00 } //0a 00 
		$a_00_1 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 6f 00 67 00 6f 00 6e 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //0a 00 
		$a_00_2 = {64 00 65 00 6c 00 65 00 74 00 69 00 6e 00 67 00 20 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 62 00 69 00 6e 00 0a 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mimikatz_C__2{
	meta:
		description = "HackTool:Win32/Mimikatz.C!!Mikatz.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,1e 00 1e 00 0a 00 00 0a 00 "
		
	strings :
		$a_02_0 = {6d 69 6d 69 6b 61 74 7a 20 90 02 02 2e 90 02 02 2e 90 02 02 20 28 78 90 01 02 29 20 62 75 69 6c 74 20 6f 6e 90 00 } //0a 00 
		$a_00_1 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 6f 00 67 00 6f 00 6e 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //0a 00 
		$a_00_2 = {64 00 65 00 6c 00 65 00 74 00 69 00 6e 00 67 00 20 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 64 00 65 00 62 00 75 00 67 00 2e 00 62 00 69 00 6e 00 0a 00 00 00 } //ec ff 
		$a_80_3 = {77 69 6e 64 6f 77 73 5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 } //windows\kevlar-api\kevlarsigs  ec ff 
		$a_80_4 = {5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 36 34 5c 78 36 34 5c 72 65 6c 65 61 73 65 5c 48 49 50 48 61 6e 64 6c 65 72 73 36 34 2e 70 64 62 } //\kevlar-api\kevlarsigs64\x64\release\HIPHandlers64.pdb  ec ff 
		$a_80_5 = {5c 6d 63 61 66 65 65 5c 68 6f 73 74 20 69 6e 74 72 75 73 69 6f 6e 20 70 72 65 76 65 6e 74 69 6f 6e 5c 68 69 70 } //\mcafee\host intrusion prevention\hip  ec ff 
		$a_80_6 = {5c 73 64 6b 2e 70 72 6f 74 65 63 74 6f 72 5c 6d 69 6e 6f 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 36 34 2e 70 64 62 } //\sdk.protector\minor\x64\Release\Protector64.pdb  ec ff 
		$a_80_7 = {6d 6f 72 70 68 69 73 65 63 5f 64 6c 6c 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_dll_version_s  ec ff 
		$a_80_8 = {6d 6f 72 70 68 69 73 65 63 5f 70 72 6f 64 75 63 74 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_product_version_s  ec ff 
		$a_80_9 = {5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 53 65 72 76 69 63 65 36 34 2e 70 64 62 } //\x64\Release\ProtectorService64.pdb  00 00 
	condition:
		any of ($a_*)
 
}