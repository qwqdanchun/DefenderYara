
rule Ransom_Win32_EvolCrypt_PAA_MTB{
	meta:
		description = "Ransom:Win32/EvolCrypt.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 31 00 20 00 26 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 25 00 73 00 22 00 20 00 3e 00 3e 00 20 00 4e 00 55 00 4c 00 } //01 00  /c timeout 1 && del "%s" >> NUL
		$a_01_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 64 00 61 00 74 00 61 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00  All your data have been encrypted
		$a_01_2 = {62 00 61 00 63 00 6b 00 75 00 70 00 65 00 76 00 6f 00 6c 00 75 00 74 00 69 00 6f 00 6e 00 40 00 74 00 75 00 74 00 61 00 2e 00 69 00 6f 00 } //01 00  backupevolution@tuta.io
		$a_01_3 = {2e 00 65 00 76 00 6f 00 6c 00 75 00 74 00 69 00 6f 00 6e 00 } //00 00  .evolution
	condition:
		any of ($a_*)
 
}