
rule HackTool_Win32_Prontofy_A_dha{
	meta:
		description = "HackTool:Win32/Prontofy.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 61 6b 65 49 55 6e 6b 6e 6f 77 6e } //01 00  FakeIUnknown
		$a_01_1 = {54 72 79 41 64 64 54 6f 6b 65 6e 50 72 69 76 } //01 00  TryAddTokenPriv
		$a_01_2 = {66 61 6b 65 49 55 6e 6b 6e 6f 77 6e 50 74 72 } //01 00  fakeIUnknownPtr
		$a_01_3 = {66 61 6b 65 49 55 6e 6b 6e 6f 77 6e 56 74 62 6c 50 74 72 } //01 00  fakeIUnknownVtblPtr
		$a_01_4 = {54 72 79 54 61 6b 65 54 6f 6b 65 6e } //01 00  TryTakeToken
		$a_01_5 = {63 72 65 61 74 65 50 72 6f 63 65 73 73 52 65 61 64 4f 75 74 } //01 00  createProcessReadOut
		$a_01_6 = {63 72 65 61 74 65 50 72 6f 63 65 73 73 49 6e 74 65 72 61 63 74 69 76 65 } //01 00  createProcessInteractive
		$a_01_7 = {57 69 6e 64 6f 77 73 49 6d 70 65 72 73 6f 6e 61 74 69 6f 6e 43 6f 6e 74 65 78 74 } //01 00  WindowsImpersonationContext
		$a_01_8 = {38 00 35 00 34 00 41 00 32 00 30 00 46 00 42 00 2d 00 32 00 44 00 34 00 34 00 2d 00 34 00 35 00 37 00 44 00 2d 00 39 00 39 00 32 00 46 00 2d 00 45 00 46 00 31 00 33 00 37 00 38 00 35 00 44 00 32 00 42 00 35 00 31 00 } //00 00  854A20FB-2D44-457D-992F-EF13785D2B51
	condition:
		any of ($a_*)
 
}