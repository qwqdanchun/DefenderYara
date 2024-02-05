
rule Ransom_Win32_Enestedel_C_rsm{
	meta:
		description = "Ransom:Win32/Enestedel.C!rsm,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 07 00 00 1e 00 "
		
	strings :
		$a_03_0 = {01 10 99 f7 f9 89 90 09 05 00 01 10 a1 90 09 0a 00 0f be 0d 90 00 } //1e 00 
		$a_03_1 = {01 10 99 f7 f9 89 90 09 05 00 01 10 a1 90 09 0a 00 0f bf 0d 90 00 } //1e 00 
		$a_03_2 = {01 10 99 f7 f9 89 90 09 07 00 01 10 0f be 90 09 0c 00 0f bf 90 00 } //0a 00 
		$a_03_3 = {01 10 0f be 0d 90 09 05 00 0f be 05 90 00 } //0a 00 
		$a_03_4 = {01 10 0f bf 05 90 09 05 00 0f be 0d 90 00 } //0a 00 
		$a_03_5 = {01 10 0f bf 15 90 09 05 00 0f bf 0d 90 00 } //0a 00 
		$a_03_6 = {01 10 0f be 0d 90 09 05 00 0f bf 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}