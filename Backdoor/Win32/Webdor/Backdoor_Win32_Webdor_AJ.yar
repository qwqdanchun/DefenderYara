
rule Backdoor_Win32_Webdor_AJ{
	meta:
		description = "Backdoor:Win32/Webdor.AJ,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 43 61 74 } //01 00  Software\Cat
		$a_00_1 = {54 55 70 64 61 74 65 43 6d 64 } //01 00  TUpdateCmd
		$a_00_2 = {54 45 78 65 63 75 74 65 43 6d 64 } //01 00  TExecuteCmd
		$a_00_3 = {54 43 6d 64 43 6d 64 } //01 00  TCmdCmd
		$a_00_4 = {54 54 61 67 43 6d 64 } //01 00  TTagCmd
		$a_00_5 = {54 4e 65 77 55 72 6c 43 6d 64 } //01 00  TNewUrlCmd
		$a_02_6 = {50 8b 45 fc e8 90 01 02 ff ff 50 6a 01 6a 00 68 90 01 04 8b 45 f8 50 e8 90 01 02 ff ff 8b 45 f8 50 e8 90 01 02 ff ff 33 c0 5a 59 59 64 89 10 68 90 01 04 8d 45 fc e8 90 01 04 c3 90 00 } //01 00 
		$a_02_7 = {8b c0 83 c4 f4 33 d2 89 14 24 c7 44 24 04 04 00 00 00 8d 54 24 08 52 8d 54 24 08 52 8d 54 24 08 52 68 13 00 00 20 8b 40 08 50 e8 90 01 02 ff ff 8b 04 24 83 c4 0c c3 6a 00 6a 00 6a 00 6a 00 68 90 01 04 e8 90 01 02 ff ff a3 90 01 04 6a 00 68 90 01 04 e8 90 01 02 ff ff c3 43 61 74 61 6c 79 73 74 00 00 00 00 a1 90 01 04 50 e8 90 01 02 ff ff c3 83 78 04 00 74 0c 83 78 08 00 74 06 80 78 0c 00 75 03 33 c0 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}