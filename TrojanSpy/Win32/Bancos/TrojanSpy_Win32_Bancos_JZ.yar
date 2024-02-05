
rule TrojanSpy_Win32_Bancos_JZ{
	meta:
		description = "TrojanSpy:Win32/Bancos.JZ,SIGNATURE_TYPE_PEHSTR,7a 00 6f 00 0b 00 00 64 00 "
		
	strings :
		$a_01_0 = {41 72 71 75 69 76 6f 20 63 6f 72 72 6f 6d 70 69 64 6f } //0a 00 
		$a_01_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 77 65 62 63 61 72 64 73 61 6e 69 6d 61 64 6f 73 2e 63 6f 6d 2f 63 6f 6e 66 2e 6a 70 67 } //01 00 
		$a_01_2 = {63 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 63 6f 6e 66 2e 74 78 74 } //0a 00 
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 77 65 62 63 61 72 64 73 61 6e 69 6d 61 64 6f 73 2e 63 6f 6d 2f 63 73 72 73 72 2e 65 78 65 } //01 00 
		$a_01_4 = {63 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 63 73 72 73 72 2e 65 78 65 } //0a 00 
		$a_01_5 = {68 74 74 70 3a 2f 2f 77 77 77 2e 77 65 62 63 61 72 64 73 61 6e 69 6d 61 64 6f 73 2e 63 6f 6d 2f 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //01 00 
		$a_01_6 = {63 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 65 78 70 6c 6f 72 65 72 2e 65 78 65 } //0a 00 
		$a_01_7 = {68 74 74 70 3a 2f 2f 77 77 77 2e 77 65 62 63 61 72 64 73 61 6e 69 6d 61 64 6f 73 2e 63 6f 6d 2f 6d 73 6e 67 72 73 2e 65 78 65 } //01 00 
		$a_01_8 = {63 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 6d 73 6e 67 72 73 2e 65 78 65 } //0a 00 
		$a_01_9 = {68 74 74 70 3a 2f 2f 77 77 77 2e 77 65 62 63 61 72 64 73 61 6e 69 6d 61 64 6f 73 2e 63 6f 6d 2f 70 72 6f 63 65 73 73 2e 65 78 65 } //01 00 
		$a_01_10 = {63 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 70 72 6f 63 65 73 73 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}