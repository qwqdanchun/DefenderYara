
rule VirTool_Win32_Vbcrypt_B{
	meta:
		description = "VirTool:Win32/Vbcrypt.B,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 6f 00 61 00 64 00 6d 00 65 00 5c 00 6d 00 2e 00 76 00 62 00 70 00 } //01 00  loadme\m.vbp
		$a_01_1 = {77 00 69 00 6e 00 64 00 69 00 72 00 } //01 00  windir
		$a_01_2 = {21 f9 71 02 78 b2 36 45 be 7c f0 47 d1 c6 37 25 00 00 00 00 00 00 01 00 00 00 30 32 30 34 33 30 50 72 6f 6a 65 63 74 31 00 30 2d 43 30 30 30 } //01 00 
		$a_01_3 = {00 47 61 6c 6c 65 72 79 00 a0 00 00 50 72 6f 6a 65 63 74 31 00 } //01 00 
		$a_01_4 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}