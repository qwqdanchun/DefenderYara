
rule TrojanSpy_Win32_Kiratzki_A{
	meta:
		description = "TrojanSpy:Win32/Kiratzki.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 79 62 65 73 74 62 6f 78 40 6d 61 69 6c 2e 72 75 } //02 00  mybestbox@mail.ru
		$a_01_1 = {73 00 6f 00 63 00 6b 00 65 00 74 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //02 00  socketme.exe
		$a_01_2 = {74 68 65 72 61 74 2e 68 31 35 2e 72 75 } //02 00  therat.h15.ru
		$a_01_3 = {73 68 75 74 64 6f 77 6e 2e 65 78 65 } //02 00  shutdown.exe
		$a_01_4 = {52 61 74 4c 6f 67 50 61 72 74 2d 31 32 33 34 35 } //01 00  RatLogPart-12345
		$a_01_5 = {43 55 52 52 45 4e 54 20 57 49 4e 44 4f 57 20 54 45 58 54 3a } //01 00  CURRENT WINDOW TEXT:
		$a_01_6 = {57 52 49 54 45 20 49 4e 20 46 49 4c 45 3a } //01 00  WRITE IN FILE:
		$a_01_7 = {54 4f 3a 20 54 68 65 5f 4f 77 6e 65 72 5f 6f 66 5f 54 68 65 5f 52 61 74 21 } //01 00  TO: The_Owner_of_The_Rat!
		$a_01_8 = {53 55 42 4a 45 43 54 3a 20 75 73 65 72 5f 6f 6e 65 } //00 00  SUBJECT: user_one
	condition:
		any of ($a_*)
 
}