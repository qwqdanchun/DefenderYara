
rule PWS_Win32_Phorex_A{
	meta:
		description = "PWS:Win32/Phorex.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 66 63 5f 6f 73 2e 64 6c 6c } //01 00  sfc_os.dll
		$a_01_1 = {25 73 5c 64 72 69 76 65 72 73 5c 74 63 70 69 70 2e 73 79 73 } //03 00  %s\drivers\tcpip.sys
		$a_01_2 = {6d 61 69 6c 74 6f 3a 00 68 72 65 66 } //01 00  慭汩潴:牨晥
		$a_01_3 = {74 72 61 6e 73 66 65 72 2d 65 6e 63 6f 64 69 6e 67 } //03 00  transfer-encoding
		$a_01_4 = {72 69 67 68 74 22 3e 25 64 4b 62 3c 2f 74 64 3e } //04 00  right">%dKb</td>
		$a_01_5 = {5b 50 55 31 70 5d 00 00 5b 53 4c 31 5d } //01 00 
		$a_01_6 = {72 75 6e 65 73 63 61 70 65 } //03 00  runescape
		$a_00_7 = {6c 6e 6b 00 64 6c 6c 00 65 78 65 00 } //03 00  湬k汤l硥e
		$a_00_8 = {25 73 5c 63 66 67 00 } //00 00 
	condition:
		any of ($a_*)
 
}