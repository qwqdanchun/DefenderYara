
rule HackTool_PowerShell_Mikatz_dha_{
	meta:
		description = "HackTool:PowerShell/Mikatz!dha!!Mikatz.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,07 00 07 00 11 00 00 01 00 "
		
	strings :
		$a_00_0 = {24 00 50 00 45 00 42 00 79 00 74 00 65 00 73 00 36 00 34 00 20 00 3d 00 20 00 27 00 54 00 56 00 71 00 51 00 } //01 00  $PEBytes64 = 'TVqQ
		$a_00_1 = {24 00 50 00 45 00 42 00 79 00 74 00 65 00 73 00 33 00 32 00 20 00 3d 00 20 00 27 00 54 00 56 00 71 00 51 00 } //01 00  $PEBytes32 = 'TVqQ
		$a_00_2 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 6f 00 67 00 6f 00 6e 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00  sekurlsa::logonpasswords
		$a_00_3 = {44 00 75 00 6d 00 70 00 43 00 65 00 72 00 74 00 73 00 } //01 00  DumpCerts
		$a_00_4 = {44 00 75 00 6d 00 70 00 43 00 72 00 65 00 64 00 73 00 } //01 00  DumpCreds
		$a_00_5 = {4d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 } //01 00  Mimikatz
		$a_00_6 = {70 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 3a 00 3a 00 64 00 65 00 62 00 75 00 67 00 } //02 00  privilege::debug
		$a_00_7 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 5f 00 72 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 76 00 65 00 5f 00 6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 } //ec ff  powershell_reflective_mimikatz
		$a_80_8 = {77 69 6e 64 6f 77 73 5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 } //windows\kevlar-api\kevlarsigs  ec ff 
		$a_80_9 = {5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 36 34 5c 78 36 34 5c 72 65 6c 65 61 73 65 5c 48 49 50 48 61 6e 64 6c 65 72 73 36 34 2e 70 64 62 } //\kevlar-api\kevlarsigs64\x64\release\HIPHandlers64.pdb  ec ff 
		$a_80_10 = {5c 6d 63 61 66 65 65 5c 68 6f 73 74 20 69 6e 74 72 75 73 69 6f 6e 20 70 72 65 76 65 6e 74 69 6f 6e 5c 68 69 70 } //\mcafee\host intrusion prevention\hip  ec ff 
		$a_80_11 = {5c 6d 63 61 66 65 65 5c 65 6e 64 70 6f 69 6e 74 20 73 65 63 75 72 69 74 79 5c } //\mcafee\endpoint security\  ec ff 
		$a_80_12 = {5c 74 68 72 65 61 74 20 70 72 65 76 65 6e 74 69 6f 6e 5c 69 70 73 5c 68 69 70 68 61 6e 64 6c 65 72 73 } //\threat prevention\ips\hiphandlers  ec ff 
		$a_80_13 = {5c 73 64 6b 2e 70 72 6f 74 65 63 74 6f 72 5c 6d 69 6e 6f 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 36 34 2e 70 64 62 } //\sdk.protector\minor\x64\Release\Protector64.pdb  ec ff 
		$a_80_14 = {6d 6f 72 70 68 69 73 65 63 5f 64 6c 6c 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_dll_version_s  ec ff 
		$a_80_15 = {6d 6f 72 70 68 69 73 65 63 5f 70 72 6f 64 75 63 74 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_product_version_s  ec ff 
		$a_80_16 = {5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 53 65 72 76 69 63 65 36 34 2e 70 64 62 } //\x64\Release\ProtectorService64.pdb  00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_PowerShell_Mikatz_dha__2{
	meta:
		description = "HackTool:PowerShell/Mikatz!dha!!Mikatz.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 0f 00 00 01 00 "
		
	strings :
		$a_00_0 = {5b 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 28 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 53 00 65 00 74 00 4e 00 61 00 6d 00 65 00 20 00 3d 00 20 00 22 00 44 00 75 00 6d 00 70 00 43 00 72 00 65 00 64 00 73 00 22 00 2c 00 20 00 50 00 6f 00 73 00 69 00 74 00 69 00 6f 00 6e 00 20 00 3d 00 20 00 31 00 29 00 5d 00 } //01 00  [Parameter(ParameterSetName = "DumpCreds", Position = 1)]
		$a_00_1 = {5b 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 28 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 53 00 65 00 74 00 4e 00 61 00 6d 00 65 00 20 00 3d 00 20 00 22 00 44 00 75 00 6d 00 70 00 43 00 65 00 72 00 74 00 73 00 22 00 2c 00 20 00 50 00 6f 00 73 00 69 00 74 00 69 00 6f 00 6e 00 20 00 3d 00 20 00 31 00 29 00 5d 00 } //01 00  [Parameter(ParameterSetName = "DumpCerts", Position = 1)]
		$a_00_2 = {24 00 50 00 45 00 42 00 79 00 74 00 65 00 73 00 36 00 34 00 } //01 00  $PEBytes64
		$a_00_3 = {24 00 50 00 45 00 42 00 79 00 74 00 65 00 73 00 33 00 32 00 } //01 00  $PEBytes32
		$a_00_4 = {2e 00 44 00 65 00 66 00 69 00 6e 00 65 00 46 00 69 00 65 00 6c 00 64 00 28 00 27 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 27 00 2c 00 20 00 5b 00 55 00 49 00 6e 00 74 00 33 00 32 00 5d 00 } //01 00  .DefineField('VirtualAddress', [UInt32]
		$a_00_5 = {2e 00 47 00 65 00 74 00 4d 00 65 00 74 00 68 00 6f 00 64 00 28 00 27 00 47 00 65 00 74 00 50 00 72 00 6f 00 63 00 41 00 64 00 64 00 72 00 65 00 73 00 73 00 27 00 } //ec ff  .GetMethod('GetProcAddress'
		$a_80_6 = {77 69 6e 64 6f 77 73 5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 } //windows\kevlar-api\kevlarsigs  ec ff 
		$a_80_7 = {5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 36 34 5c 78 36 34 5c 72 65 6c 65 61 73 65 5c 48 49 50 48 61 6e 64 6c 65 72 73 36 34 2e 70 64 62 } //\kevlar-api\kevlarsigs64\x64\release\HIPHandlers64.pdb  ec ff 
		$a_80_8 = {5c 6d 63 61 66 65 65 5c 68 6f 73 74 20 69 6e 74 72 75 73 69 6f 6e 20 70 72 65 76 65 6e 74 69 6f 6e 5c 68 69 70 } //\mcafee\host intrusion prevention\hip  ec ff 
		$a_80_9 = {5c 6d 63 61 66 65 65 5c 65 6e 64 70 6f 69 6e 74 20 73 65 63 75 72 69 74 79 5c } //\mcafee\endpoint security\  ec ff 
		$a_80_10 = {5c 74 68 72 65 61 74 20 70 72 65 76 65 6e 74 69 6f 6e 5c 69 70 73 5c 68 69 70 68 61 6e 64 6c 65 72 73 } //\threat prevention\ips\hiphandlers  ec ff 
		$a_80_11 = {5c 73 64 6b 2e 70 72 6f 74 65 63 74 6f 72 5c 6d 69 6e 6f 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 36 34 2e 70 64 62 } //\sdk.protector\minor\x64\Release\Protector64.pdb  ec ff 
		$a_80_12 = {6d 6f 72 70 68 69 73 65 63 5f 64 6c 6c 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_dll_version_s  ec ff 
		$a_80_13 = {6d 6f 72 70 68 69 73 65 63 5f 70 72 6f 64 75 63 74 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_product_version_s  ec ff 
		$a_80_14 = {5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 53 65 72 76 69 63 65 36 34 2e 70 64 62 } //\x64\Release\ProtectorService64.pdb  00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_PowerShell_Mikatz_dha__3{
	meta:
		description = "HackTool:PowerShell/Mikatz!dha!!Mikatz.gen!G,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {24 00 50 00 45 00 42 00 79 00 74 00 65 00 73 00 36 00 34 00 20 00 3d 00 20 00 27 00 54 00 56 00 71 00 51 00 } //01 00  $PEBytes64 = 'TVqQ
		$a_00_1 = {24 00 50 00 45 00 42 00 79 00 74 00 65 00 73 00 33 00 32 00 20 00 3d 00 20 00 27 00 54 00 56 00 71 00 51 00 } //01 00  $PEBytes32 = 'TVqQ
		$a_00_2 = {73 00 65 00 6b 00 75 00 72 00 6c 00 73 00 61 00 3a 00 3a 00 6c 00 6f 00 67 00 6f 00 6e 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00  sekurlsa::logonpasswords
		$a_00_3 = {44 00 75 00 6d 00 70 00 43 00 65 00 72 00 74 00 73 00 } //01 00  DumpCerts
		$a_00_4 = {44 00 75 00 6d 00 70 00 43 00 72 00 65 00 64 00 73 00 } //01 00  DumpCreds
		$a_00_5 = {4d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 } //01 00  Mimikatz
		$a_00_6 = {70 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 3a 00 3a 00 64 00 65 00 62 00 75 00 67 00 } //02 00  privilege::debug
		$a_00_7 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 5f 00 72 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 76 00 65 00 5f 00 6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 } //00 00  powershell_reflective_mimikatz
	condition:
		any of ($a_*)
 
}