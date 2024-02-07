
rule Backdoor_Win32_Dograft_A{
	meta:
		description = "Backdoor:Win32/Dograft.A,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 65 67 69 73 74 65 72 4e 65 74 77 6f 72 6b 50 6c 75 67 43 6c 69 65 6e 74 } //01 00  RegisterNetworkPlugClient
		$a_01_1 = {31 32 33 34 35 36 37 38 39 30 2e 76 78 64 } //01 00  1234567890.vxd
		$a_01_2 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 } //03 00  SeShutdownPrivilege
		$a_01_3 = {5c 5c 2e 5c 70 69 70 65 5c 44 6f 67 43 72 61 66 74 58 } //01 00  \\.\pipe\DogCraftX
		$a_01_4 = {57 4d 5f 48 6f 6f 6b 73 5f 52 75 6e 46 44 } //03 00  WM_Hooks_RunFD
		$a_01_5 = {4d 41 47 49 43 4c 49 4e 4b } //01 00  MAGICLINK
		$a_01_6 = {3c 73 79 73 74 65 6d 64 69 72 3e } //03 00  <systemdir>
		$a_01_7 = {53 65 72 76 65 72 3a 20 4d 69 63 72 6f 73 6f 66 74 2d 49 49 53 2f 35 2e 30 } //03 00  Server: Microsoft-IIS/5.0
		$a_01_8 = {2f 25 64 2e 61 73 70 3f 25 63 20 48 54 54 50 2f 31 2e 31 } //00 00  /%d.asp?%c HTTP/1.1
	condition:
		any of ($a_*)
 
}