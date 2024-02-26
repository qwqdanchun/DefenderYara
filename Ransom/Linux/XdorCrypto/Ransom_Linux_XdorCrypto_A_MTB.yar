
rule Ransom_Linux_XdorCrypto_A_MTB{
	meta:
		description = "Ransom:Linux/XdorCrypto.A!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {58 64 6f 72 43 72 79 70 74 6f } //01 00  XdorCrypto
		$a_00_1 = {73 65 63 75 72 65 44 65 6c 65 74 65 46 69 6c 65 } //01 00  secureDeleteFile
		$a_00_2 = {65 6e 63 72 79 70 74 46 69 6c 65 } //01 00  encryptFile
		$a_00_3 = {63 68 65 63 6b 45 78 74 65 6e 73 69 6f 6e } //01 00  checkExtension
		$a_00_4 = {77 72 69 74 65 46 69 6c 65 } //00 00  writeFile
	condition:
		any of ($a_*)
 
}