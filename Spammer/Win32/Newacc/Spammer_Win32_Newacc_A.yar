
rule Spammer_Win32_Newacc_A{
	meta:
		description = "Spammer:Win32/Newacc.A,SIGNATURE_TYPE_PEHSTR_EXT,37 00 32 00 0a 00 00 0a 00 "
		
	strings :
		$a_02_0 = {53 8b d9 8b 53 18 83 fa 10 56 57 72 05 8b 43 04 eb 03 8d 43 04 8b 74 24 10 3b f0 72 34 83 fa 10 8d 43 04 72 04 8b 08 eb 02 8b c8 8b 7b 14 03 f9 3b fe 76 1d 83 fa 10 72 02 8b 00 8b 4c 24 14 51 2b f0 56 53 8b cb e8 90 01 02 ff ff 5f 5e 5b c2 08 00 90 00 } //0a 00 
		$a_02_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 90 02 08 5c 76 61 72 73 00 90 00 } //0a 00 
		$a_02_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 90 02 08 20 44 61 74 61 00 90 00 } //0a 00 
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //0a 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //0a 00  InternetOpenUrlA
		$a_02_5 = {68 74 74 70 3a 2f 2f 90 01 02 2e 6f 63 72 73 65 72 76 69 63 65 2e 62 69 7a 2f 90 00 } //05 00 
		$a_02_6 = {4e 6f 52 65 6d 6f 76 65 90 05 04 01 00 46 6f 72 63 65 52 65 6d 6f 76 65 90 00 } //05 00 
		$a_00_7 = {72 75 6e 00 5c 77 69 6e 2e 69 6e 69 00 00 00 00 57 69 6e 64 6f 77 73 00 6c 6f 61 64 00 00 00 00 5c 73 79 73 74 65 6d 2e 69 6e 69 } //05 00 
		$a_00_8 = {77 69 6e 64 6f 77 2e 67 6f 6f 67 6c 65 } //05 00  window.google
		$a_00_9 = {6c 61 6d 6f 64 61 6e 6f 2e 69 6e 66 6f } //00 00  lamodano.info
	condition:
		any of ($a_*)
 
}