
rule Ransom_MSIL_Tarocrypt_B{
	meta:
		description = "Ransom:MSIL/Tarocrypt.B,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 00 33 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2f 00 61 00 6c 00 6c 00 2f 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  http://㌀/upload/all/Decrypter.exe
		$a_01_1 = {67 00 65 00 74 00 3d 00 00 03 3a 00 00 03 26 00 00 09 73 00 65 00 74 00 3d 00 00 13 72 00 65 00 63 00 65 00 69 00 76 00 65 00 64 00 3d 00 00 09 6e 00 75 00 6c 00 6c 00 00 13 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 } //00 00 
	condition:
		any of ($a_*)
 
}