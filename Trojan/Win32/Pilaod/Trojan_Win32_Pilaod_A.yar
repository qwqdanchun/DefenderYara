
rule Trojan_Win32_Pilaod_A{
	meta:
		description = "Trojan:Win32/Pilaod.A,SIGNATURE_TYPE_PEHSTR,15 00 14 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 66 00 67 00 65 00 74 00 63 00 68 00 72 00 2e 00 63 00 6e 00 3a 00 38 00 31 00 2f 00 47 00 2f 00 74 00 6a 00 2f 00 31 00 2f 00 31 00 2e 00 61 00 73 00 70 00 3f 00 6d 00 61 00 63 00 3d 00 } //0a 00  http://www.fgetchr.cn:81/G/tj/1/1.asp?mac=
		$a_01_1 = {5c 00 51 00 51 00 20 00 2e 00 6c 00 6e 00 6b 00 00 00 00 00 1e 00 00 00 5c 00 63 00 6f 00 6d 00 5c 00 61 00 76 00 69 00 72 00 65 00 76 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //00 00  URLDownloadToFileA
	condition:
		any of ($a_*)
 
}