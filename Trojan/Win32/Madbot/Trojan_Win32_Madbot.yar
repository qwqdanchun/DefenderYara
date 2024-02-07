
rule Trojan_Win32_Madbot{
	meta:
		description = "Trojan:Win32/Madbot,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 65 77 6c 42 75 74 74 6f 6e 73 } //01 00  KewlButtons
		$a_01_1 = {4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 } //01 00  Microsoft Visual Studio\VB98\VB
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_01_3 = {48 00 6f 00 73 00 74 00 3a 00 20 00 63 00 61 00 70 00 74 00 63 00 68 00 61 00 2e 00 63 00 68 00 61 00 74 00 2e 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 } //01 00  Host: captcha.chat.yahoo.com
		$a_01_4 = {52 00 65 00 66 00 65 00 72 00 65 00 72 00 3a 00 20 00 4d 00 61 00 64 00 44 00 6f 00 67 00 49 00 6e 00 63 00 } //01 00  Referer: MadDogInc
		$a_01_5 = {50 00 4f 00 53 00 54 00 20 00 2f 00 63 00 61 00 70 00 74 00 63 00 68 00 61 00 31 00 20 00 48 00 54 00 54 00 50 00 2f 00 31 00 2e 00 31 00 } //01 00  POST /captcha1 HTTP/1.1
		$a_01_6 = {55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 3a 00 20 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 } //00 00  User-Agent: Mozilla/4.0
	condition:
		any of ($a_*)
 
}