
rule Trojan_Win32_Zonsterarch_AG{
	meta:
		description = "Trojan:Win32/Zonsterarch.AG,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0a 00 07 00 00 04 00 "
		
	strings :
		$a_01_0 = {76 65 72 69 66 79 2e 73 6d 73 73 74 61 74 75 73 2e 63 6f 6d 2f 73 6d 73 2f 69 73 76 61 6c 69 64 32 2e 70 68 70 } //04 00  verify.smsstatus.com/sms/isvalid2.php
		$a_01_1 = {73 68 61 72 65 77 61 72 65 2e 70 72 6f 2f 73 75 70 70 6f 72 74 } //04 00  shareware.pro/support
		$a_01_2 = {54 6f 6f 6c 62 61 72 2e 65 78 65 22 20 2f 73 20 2d 73 69 6c 65 6e 74 } //01 00  Toolbar.exe" /s -silent
		$a_01_3 = {62 72 6f 77 73 65 72 2e 73 74 61 72 74 75 70 2e 68 6f 6d 65 70 61 67 65 } //01 00  browser.startup.homepage
		$a_01_4 = {2d 44 65 66 61 75 6c 74 53 65 61 72 63 68 3d 54 52 55 45 } //01 00  -DefaultSearch=TRUE
		$a_01_5 = {52 75 6e 45 6c 65 76 61 74 65 64 } //01 00  RunElevated
		$a_01_6 = {63 61 70 74 75 72 61 2e 62 6d 70 } //00 00  captura.bmp
	condition:
		any of ($a_*)
 
}