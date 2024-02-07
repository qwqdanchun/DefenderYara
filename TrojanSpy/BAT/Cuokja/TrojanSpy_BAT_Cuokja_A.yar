
rule TrojanSpy_BAT_Cuokja_A{
	meta:
		description = "TrojanSpy:BAT/Cuokja.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 33 00 32 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  \systems32\systemdll32.exe
		$a_01_1 = {5c 00 74 00 65 00 6d 00 70 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 } //01 00  \tempupdater
		$a_01_2 = {21 00 21 00 21 00 20 00 3a 00 3a 00 20 00 54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 6d 00 6f 00 76 00 65 00 2e 00 43 00 6f 00 4d 00 20 00 4c 00 6f 00 67 00 69 00 6e 00 } //01 00  !!! :: Torrentmove.CoM Login
		$a_01_3 = {44 00 6f 00 74 00 61 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  Dota Password
		$a_01_4 = {50 00 61 00 6e 00 74 00 69 00 70 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00  Pantip Password
		$a_01_5 = {5c 00 63 00 6f 00 6f 00 6b 00 6a 00 61 00 } //01 00  \cookja
		$a_01_6 = {63 72 65 61 74 65 64 69 72 70 69 63 } //01 00  createdirpic
		$a_01_7 = {64 65 6c 63 6f 6f 6b } //00 00  delcook
		$a_00_8 = {7e 15 00 00 38 6a } //df 41 
	condition:
		any of ($a_*)
 
}