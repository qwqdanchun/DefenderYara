
rule Ransom_Win32_Samas{
	meta:
		description = "Ransom:Win32/Samas,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 00 70 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 } //01 00  iplogger.com/
		$a_01_1 = {44 00 65 00 6c 00 65 00 74 00 65 00 4f 00 52 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  DeleteORAutoRun.exe
		$a_01_2 = {4c 00 6f 00 61 00 64 00 65 00 72 00 20 00 42 00 79 00 20 00 54 00 65 00 74 00 72 00 69 00 73 00 73 00 50 00 6c 00 61 00 79 00 } //01 00  Loader By TetrissPlay
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //00 00  SELECT * FROM Win32_OperatingSystem
	condition:
		any of ($a_*)
 
}