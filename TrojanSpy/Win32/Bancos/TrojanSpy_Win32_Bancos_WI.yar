
rule TrojanSpy_Win32_Bancos_WI{
	meta:
		description = "TrojanSpy:Win32/Bancos.WI,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 38 00 46 00 33 00 33 00 33 00 43 00 35 00 36 00 36 00 46 00 39 00 35 00 45 00 38 00 41 00 42 00 35 00 44 00 31 00 30 00 36 00 33 00 31 00 44 00 38 00 33 00 45 00 39 00 30 00 35 00 34 00 00 00 } //01 00 
		$a_01_1 = {38 00 37 00 41 00 39 00 34 00 42 00 46 00 44 00 33 00 46 00 35 00 46 00 46 00 31 00 32 00 41 00 44 00 42 00 33 00 38 00 41 00 39 00 35 00 38 00 00 00 } //01 00 
		$a_01_2 = {31 00 39 00 44 00 35 00 36 00 32 00 38 00 31 00 42 00 39 00 32 00 39 00 41 00 34 00 34 00 32 00 45 00 42 00 36 00 43 00 41 00 39 00 34 00 39 00 46 00 45 00 35 00 35 00 42 00 33 00 34 00 31 00 46 00 41 00 00 00 } //01 00 
		$a_01_3 = {39 00 37 00 35 00 35 00 45 00 46 00 33 00 33 00 45 00 39 00 37 00 39 00 45 00 44 00 31 00 30 00 43 00 43 00 30 00 44 00 34 00 31 00 46 00 30 00 31 00 34 00 42 00 45 00 44 00 43 00 31 00 37 00 43 00 46 00 30 00 38 00 37 00 33 00 45 00 34 00 31 00 44 00 00 00 } //01 00 
		$a_00_4 = {49 00 45 00 2e 00 54 00 49 00 54 00 00 00 } //01 00 
		$a_00_5 = {4d 00 46 00 2e 00 4c 00 4e 00 4b 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}