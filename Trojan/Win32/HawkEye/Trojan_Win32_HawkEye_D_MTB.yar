
rule Trojan_Win32_HawkEye_D_MTB{
	meta:
		description = "Trojan:Win32/HawkEye.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 62 69 74 73 69 67 64 2e 75 72 6c } //01 00  \Start Menu\Programs\Startup\bitsigd.url
		$a_81_1 = {48 61 77 6b 45 79 65 20 4b 65 79 6c 6f 67 67 65 72 } //01 00  HawkEye Keylogger
		$a_81_2 = {70 61 73 73 77 6f 72 64 66 69 6c 65 } //01 00  passwordfile
		$a_81_3 = {2f 75 70 6c 6f 61 64 2e 70 68 70 } //01 00  /upload.php
		$a_81_4 = {52 65 62 6f 72 6e 20 53 74 75 62 2e 65 78 65 } //01 00  Reborn Stub.exe
		$a_81_5 = {2f 62 69 74 73 69 67 64 2f 62 69 74 73 69 67 64 2e 76 62 73 } //00 00  /bitsigd/bitsigd.vbs
	condition:
		any of ($a_*)
 
}