
rule Backdoor_BAT_Pontoeb_J{
	meta:
		description = "Backdoor:BAT/Pontoeb.J,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {37 37 2e 37 39 2e 34 2e 31 30 31 2f } //01 00  77.79.4.101/
		$a_00_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2d 00 41 00 75 00 64 00 69 00 6f 00 20 00 44 00 72 00 69 00 76 00 65 00 72 00 } //01 00  Windows-Audio Driver
		$a_00_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2d 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 20 00 43 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 } //01 00  Windows-Network Component
		$a_00_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 42 00 61 00 73 00 65 00 42 00 6f 00 61 00 72 00 64 00 } //00 00  SELECT * FROM Win32_BaseBoard
	condition:
		any of ($a_*)
 
}