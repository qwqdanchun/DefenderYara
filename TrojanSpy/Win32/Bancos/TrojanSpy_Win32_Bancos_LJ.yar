
rule TrojanSpy_Win32_Bancos_LJ{
	meta:
		description = "TrojanSpy:Win32/Bancos.LJ,SIGNATURE_TYPE_PEHSTR_EXT,17 00 16 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {37 00 36 00 35 00 33 00 38 00 30 00 } //0a 00 
		$a_00_1 = {43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4a 00 6d 00 78 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 52 00 4f 00 4a 00 45 00 54 00 4f 00 5c 00 } //01 00 
		$a_01_2 = {35 00 44 00 34 00 31 00 34 00 31 00 34 00 34 00 30 00 46 00 31 00 43 00 31 00 41 00 35 00 46 00 35 00 41 00 34 00 30 00 35 00 42 00 35 00 34 00 35 00 41 00 35 00 34 00 35 00 31 00 31 00 41 00 35 00 43 00 35 00 35 00 34 00 37 00 35 00 30 00 35 00 42 00 35 00 35 00 35 00 31 00 31 00 36 00 35 00 36 00 35 00 41 00 35 00 38 00 31 00 42 00 35 00 } //01 00 
		$a_01_3 = {35 00 44 00 34 00 31 00 34 00 31 00 34 00 34 00 30 00 46 00 31 00 43 00 31 00 41 00 34 00 36 00 34 00 32 00 34 00 31 00 31 00 41 00 35 00 33 00 30 00 34 00 34 00 37 00 35 00 34 00 34 00 37 00 35 00 36 00 35 00 43 00 35 00 39 00 36 00 45 00 35 00 43 00 35 00 38 00 35 00 32 00 35 00 44 00 35 00 36 00 34 00 31 00 34 00 36 00 31 00 41 00 35 00 } //01 00 
		$a_01_4 = {36 00 32 00 37 00 43 00 37 00 42 00 37 00 30 00 37 00 43 00 36 00 31 00 } //01 00 
		$a_00_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 2f 00 } //01 00 
		$a_01_6 = {36 00 39 00 34 00 36 00 34 00 44 00 35 00 39 00 35 00 36 00 31 00 44 00 35 00 43 00 35 00 46 00 35 00 43 00 } //01 00 
		$a_01_7 = {37 00 37 00 35 00 41 00 35 00 42 00 35 00 45 00 35 00 41 00 34 00 36 00 34 00 37 00 } //01 00 
		$a_01_8 = {36 00 39 00 34 00 36 00 34 00 43 00 34 00 37 00 34 00 31 00 35 00 36 00 35 00 38 00 30 00 32 00 30 00 37 00 36 00 41 00 } //01 00 
		$a_01_9 = {36 00 39 00 34 00 36 00 34 00 43 00 34 00 37 00 34 00 31 00 35 00 36 00 35 00 38 00 30 00 32 00 30 00 37 00 36 00 41 00 37 00 39 00 35 00 39 00 34 00 36 00 34 00 31 00 31 00 42 00 35 00 44 00 35 00 42 00 35 00 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}