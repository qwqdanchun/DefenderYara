
rule PWS_Win32_Frethog_gen_I{
	meta:
		description = "PWS:Win32/Frethog.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0b 00 0b 00 00 03 00 "
		
	strings :
		$a_00_0 = {74 f2 2c 41 3c 1a 1a c9 80 e1 20 02 c1 04 41 86 e0 2c 41 3c 1a 1a c9 80 e1 20 02 c1 04 41 38 e0 } //01 00 
		$a_00_1 = {50 72 6f 64 75 63 74 5f 4e 6f 74 69 66 69 63 61 } //02 00  Product_Notifica
		$a_00_2 = {41 6c 65 72 74 44 69 61 6c 6f 67 00 5c 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //02 00 
		$a_00_3 = {23 33 32 37 37 30 00 00 52 61 76 4d 6f 6e 2e 65 78 65 } //01 00 
		$a_00_4 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //02 00  CurrentVersion\Run
		$a_00_5 = {72 75 6e 64 6c 31 33 32 2e 65 78 65 } //02 00  rundl132.exe
		$a_00_6 = {b9 07 00 00 00 33 c0 8d 7c 24 0d c6 44 24 0c 00 f3 ab 66 ab aa } //02 00 
		$a_00_7 = {46 3b f7 8a 04 03 88 44 34 0b 7c ec 8d 7c 24 0c } //01 00 
		$a_01_8 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00  CreateToolhelp32Snapshot
		$a_00_9 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //01 00  TerminateProcess
		$a_01_10 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //00 00  CreateRemoteThread
	condition:
		any of ($a_*)
 
}