
rule Trojan_BAT_WhiteSnake_PB_MTB{
	meta:
		description = "Trojan:BAT/WhiteSnake.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 68 69 74 65 53 6e 61 6b 65 5c 53 74 75 62 5c 57 69 6e 64 6f 77 73 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 44 61 72 6b 47 61 79 2e 70 64 62 } //01 00  WhiteSnake\Stub\Windows\obj\Release\DarkGay.pdb
		$a_01_1 = {5b 00 41 00 4e 00 54 00 49 00 56 00 4d 00 5d 00 } //01 00  [ANTIVM]
		$a_01_2 = {5b 00 42 00 45 00 41 00 43 00 4f 00 4e 00 5d 00 } //01 00  [BEACON]
		$a_01_3 = {76 00 6d 00 77 00 61 00 72 00 65 00 } //01 00  vmware
		$a_01_4 = {56 00 4d 00 58 00 68 00 } //01 00  VMXh
		$a_01_5 = {76 00 62 00 6f 00 78 00 } //01 00  vbox
		$a_01_6 = {47 00 72 00 61 00 62 00 62 00 65 00 72 00 5c 00 57 00 61 00 6c 00 6c 00 65 00 74 00 73 00 5c 00 } //01 00  Grabber\Wallets\
		$a_01_7 = {44 00 45 00 4c 00 20 00 2f 00 46 00 20 00 2f 00 53 00 20 00 2f 00 51 00 20 00 2f 00 41 00 } //01 00  DEL /F /S /Q /A
		$a_01_8 = {46 00 6f 00 78 00 6d 00 61 00 69 00 6c 00 } //00 00  Foxmail
	condition:
		any of ($a_*)
 
}