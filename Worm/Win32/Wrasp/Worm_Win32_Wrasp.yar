
rule Worm_Win32_Wrasp{
	meta:
		description = "Worm:Win32/Wrasp,SIGNATURE_TYPE_PEHSTR_EXT,09 00 08 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 70 6f 77 65 72 2e 61 73 70 3f } //01 00  /power.asp?
		$a_01_1 = {3a 5c 41 75 74 6f 72 75 6e 2e 69 6e 66 00 } //01 00 
		$a_01_2 = {5b 61 75 74 6f 72 75 6e 5d 0a 6f 70 65 6e 3d 00 } //01 00 
		$a_01_3 = {0a 73 68 65 6c 6c 65 78 65 63 75 74 65 3d 00 } //01 00 
		$a_01_4 = {53 74 61 72 74 20 50 61 67 65 00 } //01 00 
		$a_01_5 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 75 73 65 72 69 6e 69 74 2e 65 78 65 2c 00 } //01 00  㩃坜义佄南獜獹整㍭尲獵牥湩瑩攮數,
		$a_00_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 77 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 65 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 5c 46 6f 6c 64 65 72 5c 48 69 64 64 65 6e 5c 53 48 4f 57 41 4c 4c } //01 00  Software\Microsoft\windows\CurrentVersion\explorer\Advanced\Folder\Hidden\SHOWALL
		$a_01_7 = {25 30 35 64 25 30 35 64 25 30 33 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}