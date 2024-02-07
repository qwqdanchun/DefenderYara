
rule _PseudoThreat_4000002e{
	meta:
		description = "!PseudoThreat_4000002e,SIGNATURE_TYPE_PEHSTR_EXT,33 00 29 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 45 39 39 44 34 44 30 43 2d 45 42 35 34 2d 34 36 41 46 2d 42 36 32 41 2d 33 41 41 31 46 33 31 44 35 33 45 35 7d } //01 00  {E99D4D0C-EB54-46AF-B62A-3AA1F31D53E5}
		$a_01_1 = {7b 41 42 46 35 32 39 42 45 2d 36 32 34 35 2d 34 36 35 41 2d 42 42 44 34 2d 32 33 38 43 34 45 41 42 30 46 30 41 7d } //01 00  {ABF529BE-6245-465A-BBD4-238C4EAB0F0A}
		$a_01_2 = {7b 46 31 37 42 31 34 31 38 2d 32 43 30 43 2d 34 32 39 35 2d 42 44 35 35 2d 42 43 44 44 33 43 37 33 30 46 42 45 7d } //01 00  {F17B1418-2C0C-4295-BD55-BCDD3C730FBE}
		$a_01_3 = {7b 44 31 34 31 33 46 37 37 2d 35 42 36 39 2d 34 35 36 32 2d 38 34 45 31 2d 37 38 46 39 39 37 37 39 34 45 39 44 7d } //01 00  {D1413F77-5B69-4562-84E1-78F997794E9D}
		$a_01_4 = {7b 38 39 39 42 30 45 46 32 2d 45 30 42 45 2d 34 31 42 41 2d 42 42 34 31 2d 30 41 42 46 42 32 33 32 38 31 33 43 7d } //0a 00  {899B0EF2-E0BE-41BA-BB41-0ABFB232813C}
		$a_01_5 = {6e 65 74 61 64 76 2e 54 6f 6f 6c 42 61 72 2e 31 } //0a 00  netadv.ToolBar.1
		$a_00_6 = {6e 65 74 61 64 76 2e 64 6c 6c 00 64 6c 6c 63 61 6e 75 6e 6c 6f 61 64 6e 6f 77 00 64 6c 6c 67 65 74 63 6c 61 73 73 6f 62 6a 65 63 74 00 64 6c 6c 72 65 67 69 73 74 65 72 73 65 72 76 65 72 00 64 6c 6c 75 6e 72 65 67 69 73 74 65 72 73 65 72 76 65 72 00 00 } //0a 00 
		$a_00_7 = {6e 00 65 00 74 00 61 00 64 00 76 00 2e 00 64 00 6c 00 6c 00 } //0a 00  netadv.dll
		$a_01_8 = {6e 00 65 00 74 00 61 00 64 00 76 00 54 00 4f 00 4f 00 4c 00 42 00 41 00 52 00 } //0a 00  netadvTOOLBAR
		$a_00_9 = {77 72 69 74 65 66 69 6c 65 } //00 00  writefile
	condition:
		any of ($a_*)
 
}