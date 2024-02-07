
rule Ransom_MSIL_BearCrypt_SM_MTB{
	meta:
		description = "Ransom:MSIL/BearCrypt.SM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,22 00 22 00 08 00 00 14 00 "
		
	strings :
		$a_03_0 = {5c 42 65 61 72 5c 6f 62 6a 5c 90 02 10 5c 42 65 61 72 2e 70 64 62 90 00 } //05 00 
		$a_00_1 = {2e 00 63 00 72 00 79 00 70 00 74 00 } //05 00  .crypt
		$a_00_2 = {5c 00 52 00 65 00 61 00 64 00 6d 00 65 00 2e 00 74 00 78 00 74 00 } //05 00  \Readme.txt
		$a_00_3 = {63 00 3a 00 5c 00 31 00 2e 00 6a 00 70 00 67 00 } //01 00  c:\1.jpg
		$a_00_4 = {2e 00 6a 00 70 00 67 00 } //01 00  .jpg
		$a_00_5 = {2e 00 68 00 74 00 6d 00 6c 00 } //01 00  .html
		$a_00_6 = {2e 00 70 00 6e 00 67 00 } //01 00  .png
		$a_00_7 = {2e 00 69 00 73 00 6f 00 } //00 00  .iso
	condition:
		any of ($a_*)
 
}