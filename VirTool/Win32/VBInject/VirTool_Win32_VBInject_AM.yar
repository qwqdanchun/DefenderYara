
rule VirTool_Win32_VBInject_AM{
	meta:
		description = "VirTool:Win32/VBInject.AM,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {d0 ed 3c 8f 33 55 8a 2d 46 ef 6e 65 9a e9 04 83 3d 48 50 d9 08 b9 ce 00 ac cc f8 61 cb 88 74 5d 3a 46 8d 8a c8 3e c9 10 d8 47 50 72 33 } //01 00 
		$a_01_1 = {53 00 6b 00 69 00 70 00 6a 00 61 00 63 00 6b 00 20 00 45 00 6e 00 63 00 72 00 79 00 70 00 74 00 46 00 69 00 6c 00 65 00 20 00 70 00 72 00 6f 00 63 00 65 00 64 00 75 00 72 00 65 00 } //01 00  Skipjack EncryptFile procedure
		$a_01_2 = {48 00 61 00 73 00 68 00 20 00 56 00 61 00 6c 00 75 00 65 00 20 00 28 00 43 00 72 00 79 00 70 00 74 00 48 00 61 00 73 00 68 00 44 00 61 00 74 00 61 00 20 00 41 00 50 00 49 00 29 00 } //01 00  Hash Value (CryptHashData API)
		$a_01_3 = {73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 20 00 6b 00 65 00 79 00 20 00 28 00 43 00 72 00 79 00 70 00 74 00 44 00 65 00 72 00 69 00 76 00 65 00 4b 00 65 00 79 00 20 00 41 00 50 00 49 00 29 00 } //01 00  session key (CryptDeriveKey API)
		$a_01_4 = {57 00 72 00 69 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  WriteProcessMemory
		$a_01_5 = {53 00 65 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //00 00  SetThreadContext
	condition:
		any of ($a_*)
 
}