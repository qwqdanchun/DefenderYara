
rule Trojan_Win32_QHosts_B{
	meta:
		description = "Trojan:Win32/QHosts.B,SIGNATURE_TYPE_PEHSTR_EXT,3c 00 3c 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {65 00 73 00 63 00 72 00 6f 00 77 00 2e 00 63 00 6f 00 6d 00 } //0a 00  escrow.com
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_00_2 = {31 00 39 00 39 00 2e 00 32 00 33 00 38 00 2e 00 31 00 33 00 30 00 2e 00 31 00 30 00 31 00 } //0a 00  199.238.130.101
		$a_00_3 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //0a 00  \system32\drivers\etc\hosts
		$a_00_4 = {3a 00 5c 00 76 00 69 00 72 00 5c 00 76 00 72 00 7a 00 5c 00 76 00 72 00 7a 00 5c 00 73 00 63 00 72 00 65 00 65 00 6e 00 63 00 61 00 70 00 74 00 75 00 72 00 65 00 5c 00 73 00 63 00 72 00 65 00 65 00 6e 00 43 00 70 00 61 00 74 00 75 00 72 00 65 00 2e 00 76 00 62 00 70 00 } //0a 00  :\vir\vrz\vrz\screencapture\screenCpature.vbp
		$a_00_5 = {50 6c 65 61 73 65 20 73 65 65 20 74 68 65 20 70 69 63 74 75 72 65 20 62 65 6c 6f 77 20 77 68 65 72 65 20 65 42 61 79 20 73 75 67 65 73 74 20 74 6f 20 75 73 65 20 6f 6e 6c 79 20 65 73 63 72 6f 77 2e 63 6f 6d } //00 00  Please see the picture below where eBay sugest to use only escrow.com
	condition:
		any of ($a_*)
 
}