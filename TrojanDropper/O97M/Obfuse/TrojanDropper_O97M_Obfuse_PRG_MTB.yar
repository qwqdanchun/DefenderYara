
rule TrojanDropper_O97M_Obfuse_PRG_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.PRG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 28 22 41 70 70 6c 79 2e 50 69 63 6b 22 29 } //01 00  Application.Run ("Apply.Pick")
		$a_01_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 28 22 53 74 61 72 74 2e 57 6f 72 6b 22 29 } //01 00  Application.Run ("Start.Work")
		$a_01_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 28 22 57 69 6e 64 6f 77 73 2e 43 6f 6e 74 69 6e 75 65 22 29 } //01 00  Application.Run ("Windows.Continue")
		$a_01_3 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 28 22 53 6d 61 72 74 57 6f 72 6b 2e 53 6d 61 72 74 57 6f 72 6b 22 29 } //01 00  Application.Run ("SmartWork.SmartWork")
		$a_01_4 = {73 74 72 65 61 6b 73 6d 76 35 31 20 3d 20 75 70 68 6f 6c 64 73 6e 76 35 31 20 26 20 22 2e 6d 61 22 20 26 20 22 69 6e 22 } //01 00  streaksmv51 = upholdsnv51 & ".ma" & "in"
		$a_01_5 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 28 73 74 72 65 61 6b 73 6d 76 35 31 29 } //01 00  Application.Run (streaksmv51)
		$a_01_6 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 43 68 72 24 28 38 37 29 20 26 20 22 6f 72 64 2e 41 70 22 20 26 20 22 70 6c 69 22 20 26 20 22 63 61 74 22 20 26 20 22 69 6f 6e 22 29 } //01 00  = CreateObject(Chr$(87) & "ord.Ap" & "pli" & "cat" & "ion")
		$a_01_7 = {3d 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 22 } //01 00  = "C:\Windows\"
		$a_01_8 = {64 6f 73 61 67 65 64 76 32 31 36 20 3d 20 64 6f 73 61 67 65 64 76 32 31 36 20 26 20 4d 69 64 28 73 65 6e 73 6f 72 79 31 36 73 74 76 2c 20 32 32 2c 20 31 29 } //01 00  dosagedv216 = dosagedv216 & Mid(sensory16stv, 22, 1)
		$a_01_9 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 43 68 72 24 28 38 37 29 20 26 20 22 53 22 20 26 20 22 63 72 22 20 26 20 22 69 70 22 20 26 20 22 74 2e 22 20 26 20 22 73 68 22 20 26 20 22 65 6c 6c 22 29 } //01 00  = CreateObject(Chr$(87) & "S" & "cr" & "ip" & "t." & "sh" & "ell")
		$a_01_10 = {2e 52 65 67 57 72 69 74 65 20 67 75 69 67 6e 6f 6c 72 67 76 35 31 2c 20 6e 65 77 56 61 6c 75 65 2c 20 22 52 45 47 5f 44 57 4f 52 44 22 } //00 00  .RegWrite guignolrgv51, newValue, "REG_DWORD"
	condition:
		any of ($a_*)
 
}