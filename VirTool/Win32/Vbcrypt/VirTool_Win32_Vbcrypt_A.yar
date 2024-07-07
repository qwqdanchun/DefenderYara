
rule VirTool_Win32_Vbcrypt_A{
	meta:
		description = "VirTool:Win32/Vbcrypt.A,SIGNATURE_TYPE_PEHSTR,06 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 42 00 61 00 73 00 65 00 42 00 6f 00 61 00 72 00 64 00 } //1 Select * from Win32_BaseBoard
		$a_01_1 = {55 00 53 00 45 00 52 00 4e 00 41 00 4d 00 45 00 00 00 00 00 24 00 00 00 53 00 59 00 4e 00 54 00 48 00 45 00 54 00 49 00 43 00 55 00 53 00 45 00 52 00 2e 00 46 00 47 00 56 00 53 00 } //1
		$a_01_2 = {00 4c 69 51 75 69 64 56 61 70 6f 75 72 53 74 75 62 00 } //1 䰀兩極噤灡畯卲畴b
		$a_01_3 = {43 72 79 70 74 6f 4d 61 69 6e 00 00 43 72 79 70 74 6f 52 43 34 } //1
		$a_01_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_5 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}