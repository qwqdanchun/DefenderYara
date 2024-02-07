
rule Ransom_Win32_FileCryptor_K_MTB{
	meta:
		description = "Ransom:Win32/FileCryptor.K!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {45 6e 63 72 79 70 74 65 64 20 62 79 20 42 6c 61 63 6b 52 61 62 62 69 74 2e } //01 00  Encrypted by BlackRabbit.
		$a_81_1 = {68 6f 77 5f 74 6f 5f 64 65 63 72 79 70 74 2e 68 74 61 } //01 00  how_to_decrypt.hta
		$a_81_2 = {45 6e 63 72 79 70 74 20 61 6c 6c } //01 00  Encrypt all
		$a_81_3 = {45 6e 63 72 79 70 74 65 64 20 66 69 6c 65 73 3a } //01 00  Encrypted files:
		$a_81_4 = {6f 64 73 2c 78 61 72 2c 78 6c 72 2c 78 6c 73 2c 78 6c 73 62 2c 78 6c 73 6d 2c 78 6c 73 78 2c 78 6c 74 2c 78 6c 74 6d 2c 78 6c 74 78 2c 61 73 70 } //00 00  ods,xar,xlr,xls,xlsb,xlsm,xlsx,xlt,xltm,xltx,asp
		$a_00_5 = {5d 04 00 } //00 2d 
	condition:
		any of ($a_*)
 
}