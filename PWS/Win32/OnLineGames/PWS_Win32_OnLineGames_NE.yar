
rule PWS_Win32_OnLineGames_NE{
	meta:
		description = "PWS:Win32/OnLineGames.NE,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_00_0 = {bf 48 41 40 00 f2 ae f7 d1 2b f9 8b f7 8b d1 8b fb 83 c9 ff f2 ae 8b ca 4f c1 e9 02 f3 a5 8b ca 83 e1 03 f3 a4 bf 40 41 40 00 83 c9 ff f2 ae f7 d1 2b f9 8b f7 8b d1 8b fb 83 c9 ff f2 ae 8b ca 4f c1 e9 02 f3 a5 8b ca 83 e1 03 f3 a4 bf 3c 41 40 00 83 c9 ff f2 ae } //01 00 
		$a_00_1 = {2e 65 78 65 00 00 00 00 72 00 00 00 70 6c 6f 72 65 00 00 00 78 00 00 00 65 00 00 00 20 00 00 00 41 70 70 49 6e 69 74 5f 44 4c 4c 73 } //01 00 
		$a_00_2 = {52 45 53 53 44 54 44 4f 53 00 00 00 42 65 65 70 00 00 00 00 5c 00 00 00 5c 73 79 73 74 65 6d 33 32 5c 00 00 63 3a 5c 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 62 00 65 00 65 00 70 00 2e 00 73 00 79 00 73 00 00 00 00 00 53 46 43 5f 4f 53 2e 44 4c 4c 00 00 53 46 43 2e 44 4c 4c } //01 00 
		$a_02_3 = {48 4d 5f 4d 45 53 53 90 02 10 4c 4c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}