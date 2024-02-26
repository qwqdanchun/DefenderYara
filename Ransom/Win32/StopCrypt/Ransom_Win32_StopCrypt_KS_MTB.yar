
rule Ransom_Win32_StopCrypt_KS_MTB{
	meta:
		description = "Ransom:Win32/StopCrypt.KS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {33 44 24 18 89 44 24 18 8b 44 24 18 89 44 24 18 8b 44 24 18 29 44 24 14 } //01 00 
		$a_01_1 = {31 5c 24 10 8b 44 24 18 31 44 24 10 2b 74 24 10 } //00 00 
	condition:
		any of ($a_*)
 
}