
rule Trojan_Win32_SquareNet_P{
	meta:
		description = "Trojan:Win32/SquareNet.P,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 64 00 70 00 2d 00 33 00 30 00 30 00 30 00 5c 00 64 00 73 00 2e 00 76 00 62 00 70 00 } //01 00  \dp-3000\ds.vbp
		$a_01_1 = {5c 00 64 00 61 00 74 00 61 00 75 00 70 00 2e 00 69 00 6e 00 69 00 } //01 00  \dataup.ini
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 35 00 38 00 68 00 65 00 78 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 61 00 74 00 61 00 62 00 61 00 63 00 6b 00 2e 00 70 00 68 00 70 00 } //01 00  http://www.58hex.com/databack.php
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6a 00 65 00 65 00 67 00 74 00 75 00 62 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 61 00 74 00 61 00 62 00 61 00 63 00 6b 00 2e 00 70 00 68 00 70 00 } //01 00  http://www.jeegtube.com/databack.php
		$a_01_4 = {64 00 61 00 74 00 61 00 75 00 70 00 2e 00 65 00 78 00 65 00 } //00 00  dataup.exe
	condition:
		any of ($a_*)
 
}