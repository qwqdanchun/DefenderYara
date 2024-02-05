
rule Ransom_Win32_Loktrom_C{
	meta:
		description = "Ransom:Win32/Loktrom.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {33 db b8 07 00 00 00 3b d8 0f 8f 90 01 01 00 00 00 b9 02 00 00 00 be 01 00 00 00 b8 42 01 00 00 3b f0 0f 8f 90 01 01 00 00 00 83 fb 08 90 00 } //01 00 
		$a_00_1 = {36 00 30 00 45 00 38 00 34 00 45 00 30 00 30 00 30 00 30 00 30 00 30 00 36 00 42 00 30 00 30 00 36 00 35 00 30 00 30 00 37 00 32 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 43 00 30 00 30 00 33 00 33 00 30 00 30 00 33 00 32 00 30 00 30 00 30 00 30 00 30 00 30 00 36 00 45 00 30 00 30 00 37 00 34 00 30 00 30 00 36 00 34 00 30 00 30 00 36 00 43 00 30 00 30 00 36 00 43 00 } //01 00 
		$a_00_2 = {4e 00 65 00 61 00 67 00 61 00 74 00 6f 00 5f 00 48 00 6f 00 74 00 65 00 6c 00 61 00 2e 00 76 00 62 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}