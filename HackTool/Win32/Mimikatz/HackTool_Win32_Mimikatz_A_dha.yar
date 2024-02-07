
rule HackTool_Win32_Mimikatz_A_dha{
	meta:
		description = "HackTool:Win32/Mimikatz.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 61 00 73 00 68 00 20 00 61 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 6f 00 70 00 74 00 69 00 6f 00 6e 00 61 00 6c 00 20 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //01 00  Hash a password with optional username
		$a_01_1 = {50 00 72 00 69 00 6d 00 61 00 72 00 79 00 3a 00 4b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 2d 00 4e 00 65 00 77 00 65 00 72 00 2d 00 4b 00 65 00 79 00 73 00 } //01 00  Primary:Kerberos-Newer-Keys
		$a_01_2 = {50 00 61 00 73 00 73 00 2d 00 74 00 68 00 65 00 2d 00 63 00 63 00 61 00 63 00 68 00 65 00 } //01 00  Pass-the-ccache
		$a_01_3 = {63 00 72 00 65 00 64 00 6d 00 61 00 6e 00 } //01 00  credman
		$a_01_4 = {6c 00 73 00 61 00 73 00 72 00 76 00 } //01 00  lsasrv
		$a_01_5 = {6c 00 6f 00 67 00 6f 00 6e 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //00 00  logonPasswords
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mimikatz_A_dha_2{
	meta:
		description = "HackTool:Win32/Mimikatz.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0b 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 28 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 6c 00 69 00 6e 00 65 00 29 00 } //02 00  mimikatz(commandline)
		$a_01_1 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 5f 00 64 00 6f 00 4c 00 6f 00 63 00 61 00 6c 00 } //02 00  mimikatz_doLocal
		$a_01_2 = {5b 00 65 00 78 00 70 00 65 00 72 00 69 00 6d 00 65 00 6e 00 74 00 61 00 6c 00 5d 00 20 00 70 00 61 00 74 00 63 00 68 00 20 00 45 00 76 00 65 00 6e 00 74 00 73 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 74 00 6f 00 20 00 61 00 76 00 6f 00 69 00 64 00 20 00 6e 00 65 00 77 00 20 00 65 00 76 00 65 00 6e 00 74 00 73 00 } //01 00  [experimental] patch Events service to avoid new events
		$a_01_3 = {5b 00 6d 00 61 00 73 00 74 00 65 00 72 00 6b 00 65 00 79 00 5d 00 20 00 77 00 69 00 74 00 68 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 3a 00 20 00 25 00 73 00 20 00 28 00 25 00 73 00 20 00 75 00 73 00 65 00 72 00 29 00 } //02 00  [masterkey] with password: %s (%s user)
		$a_01_4 = {4b 00 69 00 77 00 69 00 41 00 6e 00 64 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //02 00  KiwiAndRegistryTools
		$a_00_5 = {73 61 6d 69 66 72 65 65 5f 73 61 6d 70 72 5f 75 73 65 72 5f 69 6e 66 6f 5f 62 75 66 66 65 72 } //01 00  samifree_sampr_user_info_buffer
		$a_01_6 = {6c 00 73 00 61 00 73 00 72 00 76 00 2e 00 64 00 6c 00 6c 00 } //01 00  lsasrv.dll
		$a_01_7 = {6d 00 75 00 6c 00 74 00 69 00 72 00 64 00 70 00 } //01 00  multirdp
		$a_01_8 = {77 00 64 00 69 00 67 00 65 00 73 00 74 00 2e 00 64 00 6c 00 6c 00 } //01 00  wdigest.dll
		$a_01_9 = {6c 00 6f 00 67 00 6f 00 6e 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00  logonPasswords
		$a_01_10 = {63 00 72 00 65 00 64 00 6d 00 61 00 6e 00 } //00 00  credman
		$a_00_11 = {7e 15 00 00 7b bc } //99 53 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mimikatz_A_dha_3{
	meta:
		description = "HackTool:Win32/Mimikatz.A!dha!!Mikatz.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 61 00 73 00 68 00 20 00 61 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 6f 00 70 00 74 00 69 00 6f 00 6e 00 61 00 6c 00 20 00 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //01 00  Hash a password with optional username
		$a_01_1 = {50 00 72 00 69 00 6d 00 61 00 72 00 79 00 3a 00 4b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 2d 00 4e 00 65 00 77 00 65 00 72 00 2d 00 4b 00 65 00 79 00 73 00 } //01 00  Primary:Kerberos-Newer-Keys
		$a_01_2 = {50 00 61 00 73 00 73 00 2d 00 74 00 68 00 65 00 2d 00 63 00 63 00 61 00 63 00 68 00 65 00 } //01 00  Pass-the-ccache
		$a_01_3 = {63 00 72 00 65 00 64 00 6d 00 61 00 6e 00 } //01 00  credman
		$a_01_4 = {6c 00 73 00 61 00 73 00 72 00 76 00 } //01 00  lsasrv
		$a_01_5 = {6c 00 6f 00 67 00 6f 00 6e 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //ec ff  logonPasswords
		$a_80_6 = {77 69 6e 64 6f 77 73 5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 } //windows\kevlar-api\kevlarsigs  ec ff 
		$a_80_7 = {5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 36 34 5c 78 36 34 5c 72 65 6c 65 61 73 65 5c 48 49 50 48 61 6e 64 6c 65 72 73 36 34 2e 70 64 62 } //\kevlar-api\kevlarsigs64\x64\release\HIPHandlers64.pdb  ec ff 
		$a_80_8 = {5c 6d 63 61 66 65 65 5c 68 6f 73 74 20 69 6e 74 72 75 73 69 6f 6e 20 70 72 65 76 65 6e 74 69 6f 6e 5c 68 69 70 } //\mcafee\host intrusion prevention\hip  ec ff 
		$a_80_9 = {5c 73 64 6b 2e 70 72 6f 74 65 63 74 6f 72 5c 6d 69 6e 6f 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 36 34 2e 70 64 62 } //\sdk.protector\minor\x64\Release\Protector64.pdb  ec ff 
		$a_80_10 = {6d 6f 72 70 68 69 73 65 63 5f 64 6c 6c 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_dll_version_s  ec ff 
		$a_80_11 = {6d 6f 72 70 68 69 73 65 63 5f 70 72 6f 64 75 63 74 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_product_version_s  ec ff 
		$a_80_12 = {5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 53 65 72 76 69 63 65 36 34 2e 70 64 62 } //\x64\Release\ProtectorService64.pdb  00 00 
	condition:
		any of ($a_*)
 
}
rule HackTool_Win32_Mimikatz_A_dha_4{
	meta:
		description = "HackTool:Win32/Mimikatz.A!dha!!Mikatz.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,07 00 07 00 10 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 28 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 6c 00 69 00 6e 00 65 00 29 00 } //02 00  mimikatz(commandline)
		$a_01_1 = {6d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 5f 00 64 00 6f 00 4c 00 6f 00 63 00 61 00 6c 00 } //02 00  mimikatz_doLocal
		$a_01_2 = {4b 00 69 00 77 00 69 00 41 00 6e 00 64 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //02 00  KiwiAndRegistryTools
		$a_00_3 = {73 61 6d 69 66 72 65 65 5f 73 61 6d 70 72 5f 75 73 65 72 5f 69 6e 66 6f 5f 62 75 66 66 65 72 } //01 00  samifree_sampr_user_info_buffer
		$a_01_4 = {6c 00 73 00 61 00 73 00 72 00 76 00 2e 00 64 00 6c 00 6c 00 } //01 00  lsasrv.dll
		$a_01_5 = {6d 00 75 00 6c 00 74 00 69 00 72 00 64 00 70 00 } //01 00  multirdp
		$a_01_6 = {77 00 64 00 69 00 67 00 65 00 73 00 74 00 2e 00 64 00 6c 00 6c 00 } //01 00  wdigest.dll
		$a_01_7 = {6c 00 6f 00 67 00 6f 00 6e 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //01 00  logonPasswords
		$a_01_8 = {63 00 72 00 65 00 64 00 6d 00 61 00 6e 00 } //ec ff  credman
		$a_80_9 = {77 69 6e 64 6f 77 73 5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 } //windows\kevlar-api\kevlarsigs  ec ff 
		$a_80_10 = {5c 6b 65 76 6c 61 72 2d 61 70 69 5c 6b 65 76 6c 61 72 73 69 67 73 36 34 5c 78 36 34 5c 72 65 6c 65 61 73 65 5c 48 49 50 48 61 6e 64 6c 65 72 73 36 34 2e 70 64 62 } //\kevlar-api\kevlarsigs64\x64\release\HIPHandlers64.pdb  ec ff 
		$a_80_11 = {5c 6d 63 61 66 65 65 5c 68 6f 73 74 20 69 6e 74 72 75 73 69 6f 6e 20 70 72 65 76 65 6e 74 69 6f 6e 5c 68 69 70 } //\mcafee\host intrusion prevention\hip  ec ff 
		$a_80_12 = {5c 73 64 6b 2e 70 72 6f 74 65 63 74 6f 72 5c 6d 69 6e 6f 72 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 36 34 2e 70 64 62 } //\sdk.protector\minor\x64\Release\Protector64.pdb  ec ff 
		$a_80_13 = {6d 6f 72 70 68 69 73 65 63 5f 64 6c 6c 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_dll_version_s  ec ff 
		$a_80_14 = {6d 6f 72 70 68 69 73 65 63 5f 70 72 6f 64 75 63 74 5f 76 65 72 73 69 6f 6e 5f 73 } //morphisec_product_version_s  ec ff 
		$a_80_15 = {5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 50 72 6f 74 65 63 74 6f 72 53 65 72 76 69 63 65 36 34 2e 70 64 62 } //\x64\Release\ProtectorService64.pdb  00 00 
	condition:
		any of ($a_*)
 
}