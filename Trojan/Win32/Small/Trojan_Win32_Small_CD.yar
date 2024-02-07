
rule Trojan_Win32_Small_CD{
	meta:
		description = "Trojan:Win32/Small.CD,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 45 54 20 5e 25 24 25 5e 26 2a 2a 28 2a 28 28 26 26 2a 5e 26 26 25 25 5e 26 2a 28 2a 26 24 25 24 } //01 00  GET ^%$%^&**(*((&&*^&&%%^&*(*&$%$
		$a_01_1 = {23 25 64 3c 3c 3c 3c 3c 49 40 43 3c 3c 3c 3c 3c 25 73 21 } //01 00  #%d<<<<<I@C<<<<<%s!
		$a_01_2 = {20 3e 20 6e 75 6c 00 00 20 2f 63 20 20 64 65 6c 20 } //01 00 
		$a_01_3 = {5c 73 76 63 68 6f 73 74 2e 65 78 65 00 00 00 00 48 61 63 6b } //01 00 
		$a_01_4 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //01 00  OpenSCManagerA
		$a_01_5 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //00 00  InternetReadFile
	condition:
		any of ($a_*)
 
}