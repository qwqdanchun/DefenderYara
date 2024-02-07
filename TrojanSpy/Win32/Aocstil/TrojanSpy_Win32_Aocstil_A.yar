
rule TrojanSpy_Win32_Aocstil_A{
	meta:
		description = "TrojanSpy:Win32/Aocstil.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 68 6f 77 31 32 33 34 2e 63 6f 6d } //01 00  show1234.com
		$a_01_1 = {34 36 2e 31 35 31 2e 35 32 } //01 00  46.151.52
		$a_01_2 = {61 64 64 20 48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 } //01 00  add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v
		$a_03_3 = {66 61 63 65 62 6f 6f 6b 2e 63 6f 6d 90 02 10 26 63 64 67 3d 90 02 10 70 61 73 73 77 6f 72 64 90 00 } //01 00 
		$a_03_4 = {74 77 69 74 74 65 72 2e 63 6f 6d 90 02 10 70 61 73 73 77 64 90 02 10 6c 6f 67 69 6e 90 00 } //01 00 
		$a_01_5 = {26 00 63 00 6f 00 6e 00 66 00 69 00 67 00 3d 00 7b 00 } //01 00  &config={
		$a_01_6 = {26 00 63 00 6f 00 64 00 69 00 } //01 00  &codi
		$a_00_7 = {8a d3 02 d2 8a c7 c0 e8 04 02 d2 24 03 02 c2 8a 55 fa 8a ca c0 e9 02 8a df c0 e2 06 02 55 fb 80 e1 0f c0 e3 04 32 cb 88 04 37 88 4c 37 01 88 54 37 02 83 c6 03 } //00 00 
		$a_00_8 = {87 10 00 } //00 47 
	condition:
		any of ($a_*)
 
}