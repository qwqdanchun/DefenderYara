
rule TrojanSpy_Win32_Bancos_PD{
	meta:
		description = "TrojanSpy:Win32/Bancos.PD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 72 61 64 65 73 63 6f 20 49 6e 74 65 72 6e 65 74 20 42 61 6e 6b 69 6e 67 00 00 00 50 61 72 61 20 73 75 61 20 6d 61 69 6f 72 20 73 65 67 75 72 61 6e e7 61 } //01 00 
		$a_00_1 = {41 42 34 43 44 34 36 34 39 35 42 44 36 34 38 36 42 30 37 42 42 41 35 42 38 42 33 34 39 46 32 37 42 42 31 44 36 35 44 34 36 33 39 32 34 42 46 37 32 36 43 35 37 44 41 33 35 34 38 35 42 44 31 32 37 42 00 } //01 00 
		$a_00_2 = {32 45 45 32 31 36 44 31 30 38 32 41 44 30 37 42 41 35 34 42 45 44 31 46 44 36 00 } //01 00 
		$a_00_3 = {63 3a 5c 73 6f 75 72 63 65 68 74 6d 6c 2e 74 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}