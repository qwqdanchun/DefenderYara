
rule TrojanSpy_Win32_Alinaos_F{
	meta:
		description = "TrojanSpy:Win32/Alinaos.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {25 73 6e 74 66 73 2e 64 61 74 } //01 00  %sntfs.dat
		$a_00_1 = {2e 5c 70 69 70 65 5c 73 70 61 72 6b } //01 00  .\pipe\spark
		$a_03_2 = {75 70 64 61 74 65 69 6e 74 65 72 76 61 6c 3d 90 02 08 63 61 72 64 69 6e 74 65 72 76 61 6c 3d 90 00 } //01 00 
		$a_00_3 = {68 74 74 70 3a 2f 2f 25 73 3a 25 64 7b 5b 21 34 21 5d } //01 00  http://%s:%d{[!4!]
		$a_00_4 = {73 79 73 74 65 6d 00 00 77 69 6e 64 65 66 65 6e 64 65 72 2e 65 78 65 } //01 00 
		$a_00_5 = {77 69 6e 2d 66 69 72 65 77 61 6c 6c 2e 65 78 65 } //00 00  win-firewall.exe
		$a_00_6 = {5d 04 00 } //00 ad 
	condition:
		any of ($a_*)
 
}