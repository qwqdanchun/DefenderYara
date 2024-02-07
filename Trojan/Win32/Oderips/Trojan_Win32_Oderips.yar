
rule Trojan_Win32_Oderips{
	meta:
		description = "Trojan:Win32/Oderips,SIGNATURE_TYPE_PEHSTR,1c 00 1c 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {75 70 31 2e 73 69 64 65 70 72 6f 2e 63 6f 2e 6b 72 } //0a 00  up1.sidepro.co.kr
		$a_01_1 = {25 30 32 78 2d 25 30 32 78 2d 25 30 32 78 2d 25 30 32 78 2d 25 30 32 78 2d 25 30 32 78 } //03 00  %02x-%02x-%02x-%02x-%02x-%02x
		$a_01_2 = {73 65 74 75 70 36 30 00 65 7a 69 6e 69 74 2e 65 78 65 } //03 00  敳畴㙰0穥湩瑩攮數
		$a_01_3 = {4d 69 63 72 6f 73 70 72 6f 20 57 65 62 53 6f 66 74 77 61 72 65 20 } //02 00  Microspro WebSoftware 
		$a_01_4 = {69 6e 73 74 61 6c 6c 32 2e 6d 64 76 69 72 75 73 2e 63 6f 6d } //02 00  install2.mdvirus.com
		$a_01_5 = {00 4d 44 56 69 72 75 73 44 42 00 } //01 00 
		$a_01_6 = {73 70 6f 6f 6c 73 70 2e 65 78 65 } //01 00  spoolsp.exe
		$a_01_7 = {73 76 63 68 6f 73 70 2e 65 78 65 } //01 00  svchosp.exe
		$a_01_8 = {6c 6f 67 6f 6e 73 70 2e 65 78 65 } //01 00  logonsp.exe
		$a_01_9 = {65 78 70 6c 6f 72 73 70 2e 65 78 65 } //01 00  explorsp.exe
		$a_01_10 = {6e 6f 74 65 64 73 70 2e 65 78 65 } //01 00  notedsp.exe
		$a_01_11 = {73 79 73 74 65 6d 73 70 2e 65 78 65 } //00 00  systemsp.exe
	condition:
		any of ($a_*)
 
}