
rule Ransom_Win32_Ceqcrypt_A{
	meta:
		description = "Ransom:Win32/Ceqcrypt.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {00 00 65 00 6e 00 63 00 00 00 12 00 00 00 5c 00 6a 00 61 00 76 00 61 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_02_1 = {00 5f 00 65 00 6e 00 63 00 00 00 90 02 10 61 00 70 00 70 00 64 00 61 00 74 00 61 00 90 00 } //01 00 
		$a_02_2 = {00 6a 00 61 00 32 00 00 90 02 30 50 00 4f 00 57 00 45 00 52 00 43 00 46 00 47 00 20 00 2f 00 53 00 45 00 54 00 41 00 43 00 54 00 49 00 56 00 45 00 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}