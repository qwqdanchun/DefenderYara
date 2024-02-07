
rule TrojanClicker_BAT_Clifoca{
	meta:
		description = "TrojanClicker:BAT/Clifoca,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 34 65 34 31 32 61 62 62 2d 66 66 32 37 2d 34 62 33 39 2d 38 61 61 30 2d 35 37 37 37 38 65 33 36 33 32 38 36 } //01 00  $4e412abb-ff27-4b39-8aa0-57778e363286
		$a_01_1 = {2f 00 4e 00 75 00 65 00 76 00 61 00 20 00 63 00 61 00 72 00 70 00 65 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  /Nueva carpeta.exe
		$a_01_2 = {43 00 3a 00 2f 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 2f 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2f 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2f 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 2f 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 2f 00 53 00 74 00 61 00 72 00 74 00 55 00 70 00 2f 00 53 00 70 00 65 00 63 00 69 00 61 00 6c 00 2e 00 65 00 78 00 65 00 } //01 00  C:/ProgramData/Microsoft/Windows/Start Menu/Programs/StartUp/Special.exe
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 66 00 6f 00 6c 00 64 00 63 00 61 00 73 00 68 00 2e 00 78 00 31 00 30 00 2e 00 6d 00 78 00 2f 00 } //01 00  http://foldcash.x10.mx/
		$a_01_4 = {63 3a 5c 55 73 65 72 73 5c 41 6c 76 61 72 53 6f 66 74 5c 44 6f 63 75 6d 65 6e 74 73 5c 56 69 73 75 61 6c 20 53 74 75 64 69 6f 20 32 30 31 33 5c 50 72 6f 6a 65 63 74 73 5c 46 6f 6c 64 65 72 43 61 73 68 5c 46 6f 6c 64 65 72 43 61 73 68 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 46 6f 6c 64 65 72 43 61 73 68 2e 70 64 62 } //00 00  c:\Users\AlvarSoft\Documents\Visual Studio 2013\Projects\FolderCash\FolderCash\obj\Release\FolderCash.pdb
		$a_00_5 = {7e 15 00 } //00 be 
	condition:
		any of ($a_*)
 
}