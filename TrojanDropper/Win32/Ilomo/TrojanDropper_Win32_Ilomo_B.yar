
rule TrojanDropper_Win32_Ilomo_B{
	meta:
		description = "TrojanDropper:Win32/Ilomo.B,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 05 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {53 6a 01 88 18 c6 40 fd 64 c6 40 fe 61 c6 40 ff 74 68 00 00 00 80 } //04 00 
		$a_03_1 = {8b f0 83 fe ff 74 3c 6a 40 68 00 30 00 00 56 53 ff 15 90 01 04 3b c3 89 45 f8 74 26 90 00 } //03 00 
		$a_01_2 = {25 43 6f 6d 53 70 65 63 25 20 2f 63 20 64 69 72 20 2f 73 20 25 53 79 73 74 65 6d 52 6f 6f 74 25 3e 6e 75 6c 20 26 26 20 64 65 6c 20 22 } //01 00  %ComSpec% /c dir /s %SystemRoot%>nul && del "
		$a_01_3 = {31 32 33 34 35 00 } //01 00  ㈱㐳5
		$a_01_4 = {43 4c 53 49 44 5c 7b 30 30 30 32 44 46 30 31 2d 30 30 30 30 2d 30 30 30 30 2d 43 30 30 30 2d 30 30 30 30 30 30 30 30 30 30 34 36 7d } //00 00  CLSID\{0002DF01-0000-0000-C000-000000000046}
	condition:
		any of ($a_*)
 
}