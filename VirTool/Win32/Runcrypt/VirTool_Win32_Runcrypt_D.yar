
rule VirTool_Win32_Runcrypt_D{
	meta:
		description = "VirTool:Win32/Runcrypt.D,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 64 52 63 34 00 00 4d 6f 64 4d 61 69 6e 00 50 72 6f 6a 65 63 74 31 00 00 00 00 0c 00 00 00 3c 00 25 00 2a 00 23 00 25 00 3e 00 00 00 00 00 16 00 00 00 44 00 6e 00 54 00 25 00 6d 00 32 00 35 00 40 00 23 00 71 00 df 00 00 00 0c 00 08 00 00 00 00 00 00 00 00 00 46 00 00 00 28 00 28 00 28 00 37 00 35 00 32 00 32 00 32 00 33 00 37 00 25 00 2b 00 5e 00 5e 00 27 00 5e 00 25 00 26 00 2b 00 36 00 34 00 37 00 34 00 35 00 32 00 32 00 29 00 25 00 37 00 37 00 37 00 29 00 29 00 29 00 29 } //01 00 
		$a_00_1 = {5c 00 74 00 73 00 74 00 20 00 63 00 72 00 79 00 70 00 74 00 65 00 72 00 } //00 00  \tst crypter
	condition:
		any of ($a_*)
 
}