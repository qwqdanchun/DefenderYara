
rule Ransom_MSIL_FileCoder_CF_MTB{
	meta:
		description = "Ransom:MSIL/FileCoder.CF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 20 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 } //01 00  Encryption Attack Ransomware
		$a_01_1 = {47 00 69 00 76 00 65 00 20 00 6d 00 79 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 62 00 61 00 63 00 6b 00 21 00 } //01 00  Give my files back!
		$a_01_2 = {45 00 72 00 72 00 6f 00 72 00 20 00 47 00 65 00 74 00 20 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 46 00 69 00 6c 00 65 00 21 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 41 00 73 00 6b 00 20 00 46 00 6f 00 72 00 20 00 43 00 72 00 65 00 61 00 74 00 6f 00 72 00 } //01 00  Error Get DecryptFile! Please Ask For Creator
		$a_01_3 = {72 00 61 00 6e 00 64 00 6f 00 6d 00 69 00 76 00 2e 00 62 00 69 00 6e 00 } //01 00  randomiv.bin
		$a_01_4 = {45 6e 63 72 79 70 74 46 69 6c 65 } //01 00  EncryptFile
		$a_01_5 = {53 53 45 41 52 2e 70 64 62 } //00 00  SSEAR.pdb
	condition:
		any of ($a_*)
 
}