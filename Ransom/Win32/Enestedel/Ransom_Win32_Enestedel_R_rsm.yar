
rule Ransom_Win32_Enestedel_R_rsm{
	meta:
		description = "Ransom:Win32/Enestedel.R!rsm,SIGNATURE_TYPE_PEHSTR_EXT,78 00 78 00 06 00 00 64 00 "
		
	strings :
		$a_03_0 = {19 c8 00 00 c7 45 90 01 01 88 13 00 00 90 09 03 00 c7 45 90 00 } //0a 00 
		$a_03_1 = {00 10 0f bf 0d 90 09 05 00 0f bf 05 90 00 } //0a 00 
		$a_03_2 = {00 10 0f be 0d 90 09 05 00 0f bf 05 90 00 } //0a 00 
		$a_03_3 = {00 10 0f be 1d 90 09 05 00 0f be 0d 90 00 } //14 00 
		$a_03_4 = {6a 00 6a 50 6a 03 6a 00 6a 01 68 00 00 00 80 68 90 01 02 00 10 ff 90 00 } //14 00 
		$a_03_5 = {53 6a 50 6a 03 53 6a 01 68 00 00 00 80 68 90 01 02 00 10 ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}