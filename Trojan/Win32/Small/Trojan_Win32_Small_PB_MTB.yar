
rule Trojan_Win32_Small_PB_MTB{
	meta:
		description = "Trojan:Win32/Small.PB!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 76 69 64 2d 31 39 } //01 00  covid-19
		$a_01_1 = {43 00 3a 00 5c 00 5c 00 48 00 69 00 64 00 64 00 65 00 6e 00 46 00 6f 00 6c 00 64 00 65 00 72 00 5c 00 5c 00 } //01 00  C:\\HiddenFolder\\
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 74 00 69 00 6e 00 79 00 2e 00 63 00 63 00 2f 00 75 00 70 00 64 00 61 00 65 00 } //01 00  http://tiny.cc/updae
		$a_01_3 = {73 00 65 00 74 00 75 00 70 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00  setupk.exe
		$a_01_4 = {4c 6f 61 64 65 72 2d 31 2d 6d 61 73 74 65 72 5c 4c 6f 61 64 65 72 } //01 00  Loader-1-master\Loader
		$a_01_5 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 69 00 70 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 6f 00 72 00 67 00 2f 00 } //01 00  https://iplogger.org/
		$a_01_6 = {67 65 74 5f 44 65 66 61 75 6c 74 43 72 65 64 65 6e 74 69 61 6c 73 } //00 00  get_DefaultCredentials
	condition:
		any of ($a_*)
 
}