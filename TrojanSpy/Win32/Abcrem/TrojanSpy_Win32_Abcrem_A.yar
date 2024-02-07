
rule TrojanSpy_Win32_Abcrem_A{
	meta:
		description = "TrojanSpy:Win32/Abcrem.A,SIGNATURE_TYPE_PEHSTR_EXT,13 00 10 00 06 00 00 05 00 "
		
	strings :
		$a_00_0 = {52 55 4e 44 4c 4c 33 32 2e 65 78 65 20 22 25 73 22 2c 45 78 52 75 6e 64 6c 6c 20 30 78 41 41 } //01 00  RUNDLL32.exe "%s",ExRundll 0xAA
		$a_00_1 = {5f 6b 61 73 70 65 72 73 6b 79 00 00 62 65 30 38 2e 74 6d 70 } //01 00 
		$a_00_2 = {49 6e 74 65 72 6e 00 00 65 74 4f 00 70 65 6e 55 00 00 00 00 72 6c 41 } //01 00 
		$a_00_3 = {63 61 70 43 72 00 00 00 65 61 74 65 43 61 70 74 00 00 00 00 75 72 65 57 69 6e 00 00 64 6f 77 41 } //01 00 
		$a_01_4 = {56 20 4c 40 76 65 20 59 40 75 2c 24 68 61 74 20 41 62 40 75 74 20 59 40 75 } //0a 00  V L@ve Y@u,$hat Ab@ut Y@u
		$a_01_5 = {8d 85 f8 fe ff ff 50 6a 01 53 68 44 5a 01 10 ff 75 fc ff 15 00 10 01 10 } //00 00 
	condition:
		any of ($a_*)
 
}