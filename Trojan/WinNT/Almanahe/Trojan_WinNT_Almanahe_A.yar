
rule Trojan_WinNT_Almanahe_A{
	meta:
		description = "Trojan:WinNT/Almanahe.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 00 69 00 6f 00 44 00 72 00 76 00 73 00 20 00 55 00 73 00 62 00 20 00 44 00 72 00 69 00 76 00 65 00 72 00 } //01 00  RioDrvs Usb Driver
		$a_01_1 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 44 00 52 00 49 00 56 00 45 00 52 00 53 00 5c 00 52 00 69 00 6f 00 44 00 72 00 76 00 73 00 2e 00 73 00 79 00 73 00 } //01 00  system32\DRIVERS\RioDrvs.sys
		$a_01_2 = {45 3a 5c 44 4c 4d 6f 6e 35 5c 64 72 76 5c 6f 62 6a 5c 69 33 38 36 5c 52 69 6f 44 72 76 73 2e 70 64 62 } //00 00  E:\DLMon5\drv\obj\i386\RioDrvs.pdb
	condition:
		any of ($a_*)
 
}
rule Trojan_WinNT_Almanahe_A_2{
	meta:
		description = "Trojan:WinNT/Almanahe.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 6e 00 61 00 70 00 74 00 69 00 63 00 73 00 20 00 44 00 65 00 76 00 69 00 63 00 65 00 20 00 44 00 72 00 69 00 76 00 65 00 72 00 } //01 00  Synaptics Device Driver
		$a_01_1 = {53 00 79 00 6e 00 54 00 50 00 53 00 2e 00 73 00 79 00 73 00 } //01 00  SynTPS.sys
		$a_01_2 = {43 00 31 00 31 00 31 00 39 00 38 00 30 00 44 00 2d 00 42 00 33 00 37 00 32 00 2d 00 34 00 34 00 62 00 34 00 2d 00 38 00 30 00 39 00 35 00 2d 00 31 00 42 00 36 00 30 00 36 00 30 00 45 00 38 00 43 00 36 00 34 00 37 00 } //01 00  C111980D-B372-44b4-8095-1B6060E8C647
		$a_01_3 = {45 3a 5c 44 4c 4d 6f 6e 35 5c 64 72 69 76 65 72 73 5c 6f 62 6a 5c 69 33 38 36 5c 53 79 6e 54 50 53 2e 70 64 62 } //00 00  E:\DLMon5\drivers\obj\i386\SynTPS.pdb
	condition:
		any of ($a_*)
 
}