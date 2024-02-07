
rule Trojan_Win32_VB_FQ{
	meta:
		description = "Trojan:Win32/VB.FQ,SIGNATURE_TYPE_PEHSTR,1f 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_01_1 = {5c 00 47 00 72 00 61 00 70 00 68 00 69 00 63 00 2e 00 76 00 62 00 70 00 } //0a 00  \Graphic.vbp
		$a_01_2 = {5c 00 47 00 72 00 61 00 70 00 68 00 69 00 63 00 2e 00 65 00 78 00 65 00 } //01 00  \Graphic.exe
		$a_01_3 = {49 00 20 00 4c 00 30 00 76 00 33 00 20 00 79 00 30 00 75 00 } //01 00  I L0v3 y0u
		$a_01_4 = {5c 00 69 00 20 00 6c 00 6f 00 76 00 65 00 20 00 79 00 6f 00 75 00 } //00 00  \i love you
	condition:
		any of ($a_*)
 
}