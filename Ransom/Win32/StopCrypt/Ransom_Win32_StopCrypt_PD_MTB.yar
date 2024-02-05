
rule Ransom_Win32_StopCrypt_PD_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.PD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 } //01 00 
		$a_03_1 = {8b 45 d0 2b 45 e4 89 45 d0 8b 4d d8 51 8d 55 e8 52 e8 90 02 04 e9 90 02 04 8b 45 08 8b 4d d0 89 08 8b 55 08 8b 45 f4 89 42 04 81 90 02 10 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}