
rule TrojanDropper_Win32_OnLineGames_H{
	meta:
		description = "TrojanDropper:Win32/OnLineGames.H,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {f7 f9 8a 82 90 01 04 8a 54 1f ff 32 c2 5a 88 02 43 4e 75 d7 90 00 } //01 00 
		$a_03_1 = {6a 00 6a 00 68 f5 00 00 00 90 01 01 e8 90 01 02 ff ff 83 f8 01 90 00 } //01 00 
		$a_01_2 = {6e 65 74 20 73 74 6f 70 20 53 79 73 74 65 6d 20 52 65 73 74 6f 72 65 20 53 65 72 76 69 63 65 00 } //01 00 
		$a_01_3 = {6e 65 74 20 73 74 6f 70 20 22 53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 22 00 } //00 00 
	condition:
		any of ($a_*)
 
}