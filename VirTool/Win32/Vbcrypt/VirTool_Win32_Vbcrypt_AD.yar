
rule VirTool_Win32_Vbcrypt_AD{
	meta:
		description = "VirTool:Win32/Vbcrypt.AD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 } //01 00  MSVBVM60
		$a_01_1 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 } //01 00 
		$a_00_2 = {3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4c 00 6f 00 67 00 61 00 6e 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 27 00 73 00 5c 00 53 00 6f 00 75 00 72 00 63 00 65 00 27 00 73 00 5c 00 4e 00 6f 00 76 00 6f 00 20 00 50 00 72 00 6f 00 6a 00 65 00 74 00 6f 00 5c 00 53 00 74 00 75 00 62 00 5c 00 73 00 74 00 75 00 62 00 2e 00 76 00 62 00 70 00 } //00 00  :\Documents and Settings\Logan\Desktop\Crypter's\Source's\Novo Projeto\Stub\stub.vbp
	condition:
		any of ($a_*)
 
}