
rule Ransom_Win32_Enestedel_N_rsm{
	meta:
		description = "Ransom:Win32/Enestedel.N!rsm,SIGNATURE_TYPE_PEHSTR_EXT,6e 00 64 00 04 00 00 64 00 "
		
	strings :
		$a_03_0 = {10 15 03 00 c7 45 90 01 01 62 00 00 00 c7 45 90 01 01 88 13 00 00 90 00 } //0a 00 
		$a_03_1 = {6a 50 6a 03 90 01 01 6a 01 68 00 00 00 80 8d 90 02 08 ff d0 90 00 } //0a 00 
		$a_03_2 = {6a 00 6a 50 6a 03 6a 00 6a 01 68 00 00 00 80 68 90 01 02 00 10 ff 90 00 } //0a 00 
		$a_03_3 = {6a 50 6a 03 90 01 01 6a 01 68 00 00 00 80 68 90 02 08 ff d0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}