
rule VirTool_Win32_Vbinder_N{
	meta:
		description = "VirTool:Win32/Vbinder.N,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 79 00 61 00 72 00 64 00 69 00 6d 00 36 00 30 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 6f 00 69 00 73 00 6f 00 6e 00 20 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 20 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 20 00 32 00 5c 00 53 00 74 00 75 00 62 00 5c 00 53 00 74 00 75 00 62 00 2e 00 76 00 62 00 70 00 } //01 00  C:\Documents and Settings\yardim60\Desktop\Poison Crypter Private 2\Stub\Stub.vbp
		$a_01_1 = {62 00 69 00 73 00 6d 00 69 00 6c 00 6c 00 61 00 68 00 41 00 6c 00 6c 00 61 00 68 00 48 00 65 00 72 00 6b 00 65 00 7a 00 69 00 4b 00 6f 00 72 00 75 00 73 00 75 00 6e 00 } //01 00  bismillahAllahHerkeziKorusun
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  WriteProcessMemory
	condition:
		any of ($a_*)
 
}