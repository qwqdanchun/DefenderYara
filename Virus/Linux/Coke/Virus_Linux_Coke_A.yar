
rule Virus_Linux_Coke_A{
	meta:
		description = "Virus:Linux/Coke.A,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 3a 5c 63 4f 63 41 69 6e 45 2e 73 52 43 20 3e 6e 55 4c } //01 00  C:\cOcAinE.sRC >nUL
		$a_00_1 = {43 3a 5c 57 33 32 63 6f 4b 65 2e 65 78 65 20 3e 4e 55 6c } //01 00  C:\W32coKe.exe >NUl
		$a_00_2 = {64 65 6c 20 63 3a 5c 77 33 32 63 6f 6b 45 2e 45 78 20 3e 4e 75 6c } //01 00  del c:\w32cokE.Ex >Nul
		$a_00_3 = {2c 20 22 4e 20 43 3a 5c 57 33 32 43 4f 4b 45 2e 45 58 22 } //01 00  , "N C:\W32COKE.EX"
		$a_00_4 = {2c 20 22 45 20 30 31 30 30 20 34 44 20 35 41 20 35 30 20 30 30 20 30 32 20 30 30 20 30 30 20 30 30 20 30 34 20 30 30 20 30 46 20 30 30 20 46 46 20 46 46 20 30 30 20 30 30 22 } //00 00  , "E 0100 4D 5A 50 00 02 00 00 00 04 00 0F 00 FF FF 00 00"
	condition:
		any of ($a_*)
 
}