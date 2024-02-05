
rule TrojanSpy_Win32_Ursnif_HP{
	meta:
		description = "TrojanSpy:Win32/Ursnif.HP,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 31 8d 51 08 8b 0a 83 c1 01 81 e1 fe 00 00 00 ff 34 ca e2 fb } //01 00 
		$a_01_1 = {61 74 74 72 69 62 20 2d 72 20 2d 73 20 2d 68 20 25 25 31 0d 0a 3a 25 75 0d 0a 64 65 6c 20 25 25 31 0d 0a 69 66 20 65 78 69 73 74 20 25 25 31 20 67 6f 74 6f 20 25 75 0d 0a 64 65 6c 20 25 25 30 } //01 00 
		$a_01_2 = {49 6e 73 74 61 6c 6c 00 43 6c 69 65 6e 74 00 5c 2a 2e 64 6c 6c } //01 00 
		$a_01_3 = {44 3a 28 44 3b 4f 49 43 49 3b 47 41 3b 3b 3b 42 47 29 28 44 3b 4f 49 43 49 3b 47 41 3b 3b 3b 41 4e 29 28 41 3b 4f 49 43 49 3b 47 41 3b 3b 3b 41 55 29 28 41 3b 4f 49 43 49 3b 47 41 3b 3b 3b 42 41 29 00 } //00 00 
		$a_00_4 = {7e 15 00 } //00 1e 
	condition:
		any of ($a_*)
 
}