
rule Trojan_Win64_JaggedToe_E_dha{
	meta:
		description = "Trojan:Win64/JaggedToe.E!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 2b 5d 20 53 74 61 74 73 3a 20 25 64 20 7c 20 25 64 0a } //01 00 
		$a_01_1 = {5b 21 5d 20 57 61 69 74 69 6e 67 20 46 6f 72 20 20 51 75 65 75 65 } //01 00  [!] Waiting For  Queue
		$a_01_2 = {5b 21 5d 20 57 61 69 74 69 6e 67 20 46 6f 72 20 51 75 65 75 65 } //01 00  [!] Waiting For Queue
		$a_01_3 = {44 65 6c 65 74 69 6e 67 20 44 69 73 6b 73 2e 2e 2e } //01 00  Deleting Disks...
		$a_01_4 = {44 69 73 6b 4e 61 6d 65 3a 20 25 73 2c 20 44 65 6c 65 74 65 64 3a 20 25 64 20 2d 20 25 64 0a } //01 00 
		$a_01_5 = {5b 2b 5d 20 52 6f 75 6e 64 20 25 64 0a } //01 00 
		$a_01_6 = {5b 2b 5d 20 43 50 55 3a 20 25 64 20 2c 20 54 68 72 65 61 64 73 3a 20 25 64 0a } //00 00 
	condition:
		any of ($a_*)
 
}