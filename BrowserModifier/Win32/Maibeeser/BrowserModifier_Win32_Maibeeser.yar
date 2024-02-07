
rule BrowserModifier_Win32_Maibeeser{
	meta:
		description = "BrowserModifier:Win32/Maibeeser,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 6d 00 62 00 73 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //01 00  SOFTWARE\mbs_install
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 79 00 62 00 65 00 65 00 73 00 65 00 61 00 72 00 63 00 68 00 } //01 00  Software\mybeesearch
		$a_01_2 = {61 00 63 00 63 00 65 00 70 00 74 00 5f 00 63 00 65 00 72 00 74 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00  accept_cert.Properties.Resources
		$a_01_3 = {2f 00 77 00 72 00 69 00 74 00 65 00 72 00 65 00 67 00 6b 00 65 00 79 00 } //01 00  /writeregkey
		$a_03_4 = {50 00 72 00 6f 00 78 00 79 00 53 00 65 00 72 00 76 00 65 00 72 00 90 02 04 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 3a 00 38 00 30 00 30 00 33 00 90 00 } //01 00 
		$a_01_5 = {5c 52 65 6c 65 61 73 65 5c 72 75 6e 6e 65 72 2e 70 64 62 00 } //01 00 
		$a_01_6 = {6f 00 6c 00 6b 00 20 00 61 00 6c 00 6b 00 64 00 6a 00 66 00 20 00 64 00 73 00 61 00 61 00 20 00 64 00 20 00 6f 00 61 00 6b 00 6a 00 6c 00 73 00 66 00 64 00 } //00 00  olk alkdjf dsaa d oakjlsfd
		$a_00_7 = {78 60 } //02 00  x`
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Maibeeser_2{
	meta:
		description = "BrowserModifier:Win32/Maibeeser,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 6d 00 62 00 73 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //01 00  SOFTWARE\mbs_install
		$a_01_1 = {77 00 77 00 77 00 2e 00 6d 00 79 00 62 00 65 00 65 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 63 00 6f 00 6d 00 } //01 00  www.mybeesearch.com
		$a_01_2 = {77 00 77 00 77 00 2e 00 62 00 65 00 6c 00 65 00 65 00 6c 00 61 00 73 00 68 00 6f 00 70 00 70 00 65 00 72 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 63 00 6f 00 6d 00 } //01 00  www.beleelashoppersearch.com
		$a_01_3 = {77 00 77 00 77 00 2e 00 62 00 65 00 74 00 74 00 65 00 72 00 61 00 64 00 73 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 2e 00 63 00 6f 00 6d 00 } //01 00  www.betteradssoftware.com
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 62 00 65 00 74 00 74 00 65 00 72 00 61 00 64 00 73 00 } //01 00  Software\betterads
		$a_01_5 = {77 00 77 00 77 00 2e 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 73 00 65 00 72 00 76 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 72 00 63 00 73 00 72 00 76 00 75 00 70 00 64 00 74 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 5f 00 63 00 68 00 65 00 63 00 6b 00 2e 00 70 00 68 00 70 00 } //01 00  www.updaterserver.com/srcsrvupdt/update_check.php
		$a_01_6 = {77 00 69 00 6e 00 73 00 72 00 63 00 73 00 72 00 76 00 2e 00 65 00 78 00 65 00 } //01 00  winsrcsrv.exe
		$a_01_7 = {63 00 6f 00 69 00 6e 00 69 00 73 00 39 00 } //01 00  coinis9
		$a_01_8 = {73 00 72 00 63 00 5f 00 73 00 72 00 76 00 5f 00 61 00 70 00 69 00 2f 00 72 00 65 00 70 00 6f 00 72 00 74 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 70 00 68 00 70 00 } //01 00  src_srv_api/report_install.php
		$a_01_9 = {62 00 65 00 74 00 74 00 65 00 72 00 61 00 64 00 73 00 2d 00 61 00 64 00 73 00 2e 00 6e 00 65 00 74 00 2f 00 66 00 65 00 74 00 63 00 68 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 31 00 } //02 00  betterads-ads.net/fetch.php?p=1
		$a_01_10 = {5c 00 62 00 65 00 74 00 74 00 65 00 72 00 61 00 64 00 73 00 5c 00 72 00 6f 00 6f 00 74 00 43 00 65 00 72 00 74 00 2e 00 70 00 66 00 78 00 } //02 00  \betterads\rootCert.pfx
		$a_01_11 = {5c 52 65 6c 65 61 73 65 5c 77 69 6e 73 72 63 73 72 76 2e 70 64 62 00 } //00 00 
		$a_00_12 = {60 0a } //00 00 
	condition:
		any of ($a_*)
 
}