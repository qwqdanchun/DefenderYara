
rule Trojan_Win32_Redosdru_R{
	meta:
		description = "Trojan:Win32/Redosdru.R,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 99 a1 01 00 57 56 ff } //01 00 
		$a_01_1 = {52 5f 4f 5f 6f 5f 4f 5f 50 00 } //02 00 
		$a_01_2 = {8b 55 fc 8a 1c 11 80 f3 86 88 1c 11 8b 55 fc 8a 1c 11 80 c3 e7 88 1c 11 41 3b c8 7c } //01 00 
		$a_01_3 = {b0 2f c6 45 f4 68 c6 45 f7 70 c6 45 f8 3a 88 45 f9 88 45 fa c6 45 fb 00 } //01 00 
		$a_01_4 = {b2 4f b1 4e b0 4d c6 45 e0 25 c6 45 e1 73 c6 45 e3 53 c6 45 e4 48 } //01 00 
		$a_01_5 = {61 73 66 61 66 73 61 65 00 } //01 00 
		$a_01_6 = {30 5c 72 6f 73 73 65 63 6f 72 50 6c 61 72 74 6e 65 43 5c 6d 65 74 73 79 53 5c 4e 4f 49 54 50 49 52 43 53 45 44 5c 45 52 41 57 44 52 41 48 00 } //01 00 
		$a_01_7 = {73 79 73 74 65 6d 33 32 5c 7a 65 72 6f 2e 6c 6f 67 00 } //01 00 
		$a_01_8 = {47 6c 6f 62 61 6c 5c 66 79 74 20 25 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}