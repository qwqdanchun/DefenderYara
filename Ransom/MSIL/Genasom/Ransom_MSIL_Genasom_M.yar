
rule Ransom_MSIL_Genasom_M{
	meta:
		description = "Ransom:MSIL/Genasom.M,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 00 45 00 47 00 20 00 61 00 64 00 64 00 20 00 48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 31 00 20 00 2f 00 66 00 } //01 00  REG add HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System /v DisableCMD /t REG_DWORD /d 1 /f
		$a_01_1 = {56 00 65 00 72 00 69 00 66 00 79 00 20 00 79 00 6f 00 75 00 72 00 20 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 20 00 6f 00 66 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //01 00  Verify your version of Microsoft Windows
		$a_01_2 = {4e 00 65 00 77 00 20 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 20 00 4b 00 65 00 79 00 3a 00 } //01 00  New Product Key:
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 53 00 52 00 } //01 00  DisableSR
		$a_01_4 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //01 00  DisableRegistryTools
		$a_01_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //00 00  DisableTaskMgr
		$a_00_6 = {5d 04 00 00 } //8a 16 
	condition:
		any of ($a_*)
 
}