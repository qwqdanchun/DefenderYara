
rule Ransom_Win32_Enestedel_I_rsm{
	meta:
		description = "Ransom:Win32/Enestedel.I!rsm,SIGNATURE_TYPE_PEHSTR_EXT,58 02 58 02 06 00 00 64 00 "
		
	strings :
		$a_03_0 = {6a 50 6a 03 6a 00 6a 01 68 00 00 00 80 68 90 02 02 00 10 ff 90 00 } //64 00 
		$a_03_1 = {6a 04 68 00 10 00 00 6a 04 90 02 04 ff 55 90 02 0c c7 90 02 02 07 00 01 00 90 00 } //64 00 
		$a_03_2 = {00 10 0f bf 0d 90 09 05 00 0f bf 05 90 00 } //64 00 
		$a_03_3 = {00 10 0f bf 05 90 09 05 00 0f bf 0d 90 00 } //64 00 
		$a_03_4 = {00 10 0f bf 3d 90 09 05 00 0f bf 15 90 00 } //64 00 
		$a_03_5 = {00 10 0f bf 0d 90 09 05 00 0f bf 35 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}