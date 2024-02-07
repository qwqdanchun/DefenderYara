
rule Worm_Win32_Autorun_ACM{
	meta:
		description = "Worm:Win32/Autorun.ACM,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 07 00 00 0a 00 "
		
	strings :
		$a_00_0 = {47 65 74 48 61 73 68 43 6f 64 65 } //01 00  GetHashCode
		$a_01_1 = {51 00 33 00 4a 00 70 00 63 00 32 00 6c 00 7a 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 } //01 00  Q3Jpc2lzLmV4ZQ==
		$a_01_2 = {59 00 58 00 56 00 30 00 62 00 33 00 4a 00 31 00 62 00 69 00 35 00 70 00 62 00 6d 00 59 00 3d 00 } //01 00  YXV0b3J1bi5pbmY=
		$a_01_3 = {58 00 46 00 52 00 33 00 59 00 57 00 6c 00 75 00 4c 00 6d 00 52 00 73 00 62 00 41 00 3d 00 3d 00 } //01 00  XFR3YWluLmRsbA==
		$a_00_4 = {46 00 6c 00 61 00 73 00 68 00 50 00 6c 00 61 00 79 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  FlashPlayer.exe
		$a_01_5 = {63 00 32 00 56 00 30 00 64 00 58 00 41 00 75 00 5a 00 58 00 68 00 6c 00 } //01 00  c2V0dXAuZXhl
		$a_01_6 = {58 00 47 00 46 00 6a 00 62 00 48 00 56 00 70 00 4c 00 6d 00 52 00 73 00 62 00 41 00 3d 00 3d 00 } //00 00  XGFjbHVpLmRsbA==
	condition:
		any of ($a_*)
 
}