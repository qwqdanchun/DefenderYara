
rule Backdoor_Win32_Turkojan_C{
	meta:
		description = "Backdoor:Win32/Turkojan.C,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {44 6f 73 79 61 20 62 75 6c 75 6e 61 6d 61 64 } //01 00  Dosya bulunamad
		$a_00_1 = {5b 43 41 50 53 20 4c 4f 43 4b 5d } //01 00  [CAPS LOCK]
		$a_00_2 = {5b 46 74 70 2f 49 45 2f 46 69 72 65 66 6f 78 2f 4f 75 74 6c 6f 6f 6b 20 50 61 73 73 77 6f 72 64 73 5d } //01 00  [Ftp/IE/Firefox/Outlook Passwords]
		$a_00_3 = {5b 49 4d 20 50 61 73 73 77 6f 72 64 73 5d } //01 00  [IM Passwords]
		$a_00_4 = {57 42 43 41 4d 23 23 23 } //01 00  WBCAM###
		$a_00_5 = {4e 75 6d 4c 6f 63 6b 20 44 75 72 75 6d 75 20 3a } //0a 00  NumLock Durumu :
		$a_02_6 = {8b c0 55 8b ec 6a 00 6a 00 53 56 57 8b d9 33 c0 55 68 90 01 04 64 ff 30 64 89 20 33 c0 55 68 90 01 04 64 ff 30 64 89 20 8d 55 f8 8b c3 e8 90 01 04 8b 45 f8 8d 55 fc e8 90 01 04 ff 05 90 01 04 8b 45 fc ba 90 01 04 e8 90 01 04 75 07 c6 05 90 01 04 01 33 c0 5a 59 59 64 89 10 eb 0a e9 90 01 04 e8 90 01 04 33 c0 5a 59 59 64 89 10 68 90 01 04 8d 45 f8 ba 02 00 00 00 90 00 } //0a 00 
		$a_02_7 = {8b c8 83 e9 05 ba 06 00 00 00 8b 45 e0 e8 90 01 04 8b 45 c8 8d 55 cc e8 90 01 04 8b 45 cc ba 64 00 00 00 e8 90 01 04 e8 90 01 04 84 c0 74 5e 68 90 01 04 8d 55 c8 8b 45 fc e8 90 01 04 ff 75 c8 68 90 01 04 8d 55 c0 8b 45 fc e8 90 01 04 8d 45 c0 ba 90 01 04 e8 90 01 04 8b 55 c0 8d 4d c4 8b 45 fc e8 90 01 04 ff 75 c4 68 90 01 04 8d 45 cc ba 05 00 00 00 e8 90 01 04 8b 55 cc 8b 45 f8 e8 90 01 04 8d 45 cc 50 b9 05 00 00 00 ba 01 00 00 00 8b 45 e0 e8 90 01 04 8b 45 cc ba 90 01 04 e8 90 01 04 0f 85 c0 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}