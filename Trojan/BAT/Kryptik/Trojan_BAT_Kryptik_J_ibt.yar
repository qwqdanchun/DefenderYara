
rule Trojan_BAT_Kryptik_J_ibt{
	meta:
		description = "Trojan:BAT/Kryptik.J!ibt,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 00 50 00 35 00 5f 00 53 00 4d 00 47 00 5f 00 47 00 75 00 6e 00 47 00 75 00 72 00 75 00 5f 00 } //01 00  MP5_SMG_GunGuru_
		$a_00_1 = {45 00 72 00 69 00 6b 00 20 00 48 00 75 00 6d 00 70 00 68 00 72 00 65 00 79 00 27 00 73 00 20 00 4d 00 61 00 7a 00 65 00 20 00 47 00 61 00 6d 00 65 00 } //05 00  Erik Humphrey's Maze Game
		$a_00_2 = {48 00 75 00 6d 00 70 00 68 00 72 00 65 00 79 00 4d 00 61 00 7a 00 65 00 2e 00 65 00 78 00 65 00 } //05 00  HumphreyMaze.exe
		$a_00_3 = {48 00 75 00 6d 00 70 00 68 00 72 00 65 00 79 00 58 00 4d 00 61 00 7a 00 65 00 2e 00 65 00 78 00 65 00 } //03 00  HumphreyXMaze.exe
		$a_40_4 = {0d 09 09 47 02 08 1f 10 5d 91 61 d2 52 00 } //00 e7 
	condition:
		any of ($a_*)
 
}