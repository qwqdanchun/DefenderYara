
rule Trojan_Win32_Sudesroc_A{
	meta:
		description = "Trojan:Win32/Sudesroc.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {70 00 72 00 69 00 76 00 65 00 2d 00 62 00 75 00 64 00 6f 00 6b 00 61 00 79 00 2e 00 6e 00 6f 00 2d 00 69 00 70 00 2e 00 6f 00 72 00 67 00 } //01 00  prive-budokay.no-ip.org
		$a_01_1 = {70 00 3a 00 2f 00 2f 00 34 00 35 00 2e 00 35 00 35 00 2e 00 32 00 35 00 30 00 2e 00 31 00 37 00 35 00 2f 00 70 00 69 00 6e 00 67 00 2f 00 } //01 00  p://45.55.250.175/ping/
		$a_01_2 = {32 00 30 00 30 00 2e 00 39 00 38 00 2e 00 37 00 31 00 2e 00 32 00 30 00 33 00 } //00 00  200.98.71.203
		$a_00_3 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}