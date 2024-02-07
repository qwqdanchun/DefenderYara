
rule Trojan_Win32_Adclicker_AR{
	meta:
		description = "Trojan:Win32/Adclicker.AR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {31 32 37 2e 30 2e 30 2e 31 20 20 77 77 77 31 2e 74 6d 64 71 71 2e 6e 65 74 } //01 00  127.0.0.1  www1.tmdqq.net
		$a_00_1 = {44 65 6c 2e 62 61 74 } //01 00  Del.bat
		$a_00_2 = {64 65 6c 20 22 63 3a 5c 6e 65 77 2e 65 78 65 22 } //01 00  del "c:\new.exe"
		$a_00_3 = {31 32 37 2e 30 2e 30 2e 31 20 20 77 77 77 33 2e 35 37 31 38 35 2e 63 6f 6d } //01 00  127.0.0.1  www3.57185.com
		$a_02_4 = {8b c8 49 ba 01 00 00 00 a1 90 01 04 e8 90 01 02 ff ff 8b 55 e8 b8 90 01 04 b9 90 01 04 e8 90 01 02 ff ff eb 0f b8 90 01 04 ba 90 01 04 e8 90 01 02 ff ff b8 90 01 04 ba 90 01 04 e8 90 01 02 ff ff 8d 45 e4 e8 90 01 02 ff ff 8b 55 e4 b8 90 01 04 b9 90 01 04 e8 90 01 02 ff ff e8 90 01 02 ff ff e8 90 01 02 ff ff 6a 00 b9 90 01 04 b2 01 a1 90 01 04 e8 90 01 02 ff ff 68 10 27 00 00 e8 90 01 02 ff ff e8 90 01 02 ff ff b8 02 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}